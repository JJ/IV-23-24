#!/usr/bin/env raku

use lib ".";

use IV::Stats;

my $asistencia = @*ARGS[0] // "../asistencia-rol-github.txt";

my $asistentes = Set.new($asistencia.IO.lines());

my $estudiantes = Set.new(lista-estudiantes().map( { lc($_) }));

my $asistentes-matriculados = $estudiantes ∩ $asistentes;

my $no-asistentes = $estudiantes (-) $asistentes-matriculados;

my $iv = IV::Stats.new();

my $entregados = Set.new( $iv.hecha-entrega(0).keys.map( { lc($_)}) );

my $asistentes-que-han-entregado = $entregados ∩ $asistentes-matriculados;
say "Asistentes que han entregado\n\t", sorted-elems($asistentes-que-han-entregado);
say "Asistentes que no han entregado\n\t",
         sorted-elems($asistentes-matriculados (-) $asistentes-que-han-entregado);
say "No asistentes que han entregado\n\t", sorted-elems($entregados ∩ $no-asistentes);


sub sorted-elems( Set $a-set, $separator= " " ) {
    return $a-set.keys.sort.join( $separator );
}
