#!/usr/bin/perl

use strict;
use warnings;

my $max = 200_000;
my @primes;

genList();

sub genList {
my ( $j, @tested ) = (1) x 2;
    while ( $#primes < 10_000 ) {
        next if $tested[$j++];
        push ( @primes, $j );
        for ( my $k =  ($j**2); $k <= $max; $k += $j ) {
            $tested[$k-1]= 1;
        }
    }
}

print scalar(@primes), " ", $primes[$#primes], "\n";
