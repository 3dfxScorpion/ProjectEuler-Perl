#!/usr/bin/perl 

use strict;
use warnings;

my $num = 12345678;
my $count = 1;

for my $n ( 1..$num / 2 ) {
    ++$count unless $num % $n;
}

print "count: $count\n";
