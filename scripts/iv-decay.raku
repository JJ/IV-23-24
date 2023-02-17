#!/usr/bin/env perl6

use IV::Stats;

my $stats = IV::Stats.new;


for $stats.objetivos -> $o {
    my $aceptados = $stats.cumple-objetivo($o).elems;
    my $entregados = $stats.hecha-entrega($o).elems;
    say "$o → {$o+1} ; $aceptados; ",
            sprintf(
                "%.2f", 100*$stats.bajas-totales($o)/$aceptados ),
                "; ",
            sprintf( "%.2f", 100*($entregados-$aceptados)/$entregados ),
            "; ",
            sprintf( "%.2f", 100*$stats.bajas-objetivos($o)/$entregados );
}
