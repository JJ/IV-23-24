use IO::Glob;
use Git::File::History;

constant PROYECTOS = "proyectos/";

sub lista-estudiantes( Str $file = "{PROYECTOS}usuarios.md" ) is export {
    my @nick-lines = $file.IO.slurp.lines.grep( /"<!--"/ )
            .map( *.split( /\s*"--"\s*/ )[1] );

    return @nick-lines.map( *.split( /"Enlace de"\s+/)[1])
}

unit class IV::Stats;

has @!student-list;
has %!students;
has @!objetivos;
has @!entregas;

my @cumplimiento=[.05,.075, .15, .075, .15, 0.075, 0.075, 0.1, 0.125, 0.125 ];

sub asignaciones-objetivo2()  is export returns Associative {
    my @asignaciones = "{PROYECTOS}asignaciones-objetivo-2.md".IO.lines[4 ..*];

    my %asignaciones;
    for @asignaciones -> $line {
        my ($programador,$product-manager) = $line.split(/\s* "|" \s*/)[1, 2];
        %asignaciones{$product-manager} = $programador;
    }
    return %asignaciones;
}

method new( Str $file = "{PROYECTOS}usuarios.md") {
    my @student-list = lista-estudiantes( $file );
    my %students;
    my @objetivos;
    my @entregas;
    @student-list.map: { %students{$_} = { :objetivos(set()), :entrega(0) } };

    for glob( "{PROYECTOS}objetivo-*.md" ).sort: { $^a cmp $^b} -> $f {
        my ($objetivo) := $f ~~ /(\d+)/;
        my @contenido = $f.IO.lines.grep(/"|"/);
        @objetivos[$objetivo] = set();
        @entregas[$objetivo] = set();

        for @student-list.kv -> $index, $usuario {
            my $indice-en-lista = $index+2;
            my $fila = @contenido[$indice-en-lista];
            if ( $fila ~~ /"✓"/ ) {
                %students{$usuario}<objetivos> ∪= +$objetivo;
                @objetivos[$objetivo] ∪= $usuario;
            }
            if ( $fila ~~ /"github.com"/ ) {
                %students{$usuario}<entrega> = +$objetivo ;
                @entregas[$objetivo] ∪= $usuario;
            }
        }
    }
    self.bless( :@student-list, :%students, :@objetivos, :@entregas );
}

submethod BUILD( :@!student-list, :%!students, :@!objetivos, :@!entregas) {}

method objetivos-de( Str $user  ) {
    return %!students{$user}<objetivos>;
}

method entregas-de( Str $user ) {
    return %!students{$user}<entrega>;
}

method cumple-objetivo( UInt $objetivo ) {
    return @!objetivos[$objetivo];
}

method hecha-entrega( UInt $entrega ) {
    return @!entregas[$entrega];
}

method bajas-objetivos( UInt $objetivo) {
    return @!objetivos[$objetivo] ⊖  @!objetivos[$objetivo + 1];
}

method bajas-totales( UInt $objetivo) {
    return @!objetivos[$objetivo] ⊖  @!entregas[$objetivo + 1];
}

method objetivos() {
    return @!entregas.keys;
}

method estudiantes() {
    return @!student-list;
}

method objetivos-cumplidos() {
    return @!objetivos.map( *.keys.sort( { $^a.lc cmp $^b.lc }) );
}

method percentiles() {
    my %percentile-of;
    for @!objetivos -> $objetivo {
        my $percentile = $objetivo.elems()/%!students.keys.elems();
        for $objetivo.keys -> $student {
            %percentile-of{$student} = $percentile;
        }
    }
    return %percentile-of;
}

method notas( --> Seq ) {
    return gather for @!student-list -> $u {
        take self.nota-de($u)*7;
    }
}

method nota-de( Str $student ) {
    my $nota = 0;
    for  %!students{$student}<objetivos>.list.keys -> $n {
        $nota += @cumplimiento[$n];
    }
    return $nota
}
