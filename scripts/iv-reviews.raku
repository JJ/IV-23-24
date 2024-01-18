#!/usr/bin/env perl6

use IV::Stats;

use JSON::Fast;

my %reviews = from-json( slurp ( "../reviews.json"));
for IV::Stats.new.estudiantes() -> $estudiante {
    if %reviews{$estudiante} {
        say %reviews{$estudiante} >= 14
                ?? 2
                !! (%reviews{$estudiante} / 7).trans("." => ",");
    } else {
        say 0;
    }
}

