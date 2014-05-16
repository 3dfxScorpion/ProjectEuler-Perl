#!/usr/bin/perl

use strict;
use warnings;

# perl -Mbignum -lE 'printf("%0.f\n", +( (1 + sqrt(5)) / 2 )**12 / sqrt(5))'
 
my @array = (1, 1);
my $num;

do {
#for (0..10) {
    ( $array[-2], $array[-1] ) = ( $array[-1], ( $array[-1] + $array[-2] ) );
    $num = $array[-1]
} while ( length($array[-1]) < 10 );

print scalar(@array), "\n";
print "num: $num\n";
