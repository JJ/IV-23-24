#!/usr/bin/env raku

use lib ".";

use IV::Stats;

my $asistencia = @*ARGS[0] // "../asistencia-2023-09-14.txt";

my $asistentes = Set.new($asistencia.IO.lines());

my $estudiantes = Set.new(lista-estudiantes);

my $no-asistentes = $estudiantes (-) $asistentes;

my $iv = IV::Stats.new();

my $entregados = $iv.hecha-entrega(0);

say $entregados;

say $entregados ∩ $asistentes;
say $entregados ∩ $no-asistentes;


