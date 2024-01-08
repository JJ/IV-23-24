#!/usr/bin/env raku

use IV::Stats;
use JSON::Fast;

my $stats = IV::Stats.new;
my %percentiles = $stats.percentiles();

my %unwrapped;

for %percentiles.keys() -> $student {
    %unwrapped{$student} = { percentil => %percentiles{$student}};
    my $objetivos-of = $stats.objetivos-de($student);
    %unwrapped{$student}<objetivos> = $objetivos-of.keys.max();
}

say %unwrapped;

