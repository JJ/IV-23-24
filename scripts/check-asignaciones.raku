#!/usr/bin/env perl6

use lib <../lib lib>;

use IV::Stats;
use JSON::Fast;

my $cumplidos-objetivo1 = Set(IV::Stats.new.objetivos-cumplidos[1]);

my @asignaciones = "proyectos/asignaciones-objetivo-2.md".IO.lines[4..*];

my $programadores = ∅;
my $product-managers = ∅;
for @asignaciones -> $line {
    my ($programador,$product-manager) = $line.split(/\s* "|" \s*/)[1,2];
    $programadores ∪= $programador;
    $product-managers ∪= $product-manager;
}

say "Faltan por asignar ", $cumplidos-objetivo1 ∖  $programadores;
say "Faltan por recibir ", $cumplidos-objetivo1 ∖ $product-managers;
