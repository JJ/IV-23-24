#!/usr/bin/env raku 

use IV::Stats;

my $stats = IV::Stats.new;

for $stats.objetivos -> $o {
    if ( $stats.bajas-totales($o) != set() || $stats.bajas-objetivos($o) != set
            ()) {
        say "⬇️ 📉 $o ", $stats.bajas-totales($o).keys.join(" 🧍 ");
        say "⬇️ 🎯 $o ", $stats.bajas-objetivos($o).keys.join(" 🧍 ");
    }
}
