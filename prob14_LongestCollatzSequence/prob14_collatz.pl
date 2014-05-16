#!/usr/bin/perl 

use strict;
use warnings;
use Memoize;

memoize('collatz');

my $range = shift || 999999;

sub collatz {
  no warnings 'recursion';
    my $n = $_[0];
    return 1 if $n == 1;
    return ( $n % 2 ) ? collatz(3 * $n + 1) + 1 : collatz($n / 2) + 1;
}
my $max = 0;
my @sol;
for my $n (1..$range) {
    my $count = 0;
    my $num = $n;
    $count = collatz( $num );
    if ( $count > $max ) {
        $max = $count;
        @sol = ("max: $max, num: $n");
    }
}
print "@sol\n";
