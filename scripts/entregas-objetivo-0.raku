#!/usr/bin/env raku

use lib "..";

use IV::Stats;

my $asistencia = @*ARGS[0] // "../asistencia-2023-09-14.txt";

my $asistentes = Set.new($asistencia.IO.lines());

my $estudiantes = Set.new(lista-estudiantes);

my $no-asistentes = $estudiantes (-) $asistentes;

say $no-asistentes;
