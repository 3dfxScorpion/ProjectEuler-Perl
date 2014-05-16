#!/usr/bin/perl

use strict;
use warnings;

my $max = 2_000_000;
my ( $sum, @primes );
genList();
$sum += $_ for @primes;
print "Sum: $sum\n";

sub genList {
    my ( $i, @tested ) = (1) x 2;
    while ( $i < $max ) {
        next if $tested[$i++];
        push ( @primes, $i );
        for ( my $j = $i**2; $j <= $max; $j += $i ) {
            $tested[$j-1] = 1;
        }
    }
}

