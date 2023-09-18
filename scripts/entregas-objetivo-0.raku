#!/usr/bin/env raku

use lib ".";

use IV::Stats;

my $asistencia = @*ARGS[0] // "../asistencia-rol-github.txt";

my $asistentes = Set.new($asistencia.IO.lines());

my $estudiantes = Set.new(lc(lista-estudiantes()));

my $no-asistentes = $estudiantes (-) $asistentes;

my $iv = IV::Stats.new();

my $entregados = Set.new( $iv.hecha-entrega(0).keys.map( { lc($_)}) );

say "Asistentes que han entregado\n\t", $entregados ∩ $asistentes;
say "No asistentes que han entregado\n\t", $entregados ∩ $no-asistentes;


