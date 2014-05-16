#!/usr/bin/perl

use strict;
use warnings;

my $sum = 0;
for my $num (0 .. 999) {
    $sum += $num unless ( $num % 3 && $num % 5 )
}
print "sum: $sum\n";

