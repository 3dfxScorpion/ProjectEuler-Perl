#!/usr/bin/perl

use strict;
use warnings;

my $num = 600851475143;
my $sqrt_num = int( sqrt($num) );
my @primes;
genList();
for my $p ( reverse(@primes) ) {
    print $p, "\n" and exit
        if ( $num / $p == int( $num / $p ) );
}
sub genList {
    my ( $i, @tested ) = (1) x 2;
    while ( $i < $sqrt_num ) {
        next if $tested[$i++];
        push ( @primes, $i );
        for ( my $j =  ($i**2); $j <= $sqrt_num; $j += $i ) {
            $tested[$j-1]= 1;
        }
    }
}

