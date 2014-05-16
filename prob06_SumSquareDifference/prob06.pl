#!/usr/bin/perl

use strict;
use warnings;

my $squares = 0;
$squares += $_ for(1..100);
$squares *= $squares;
$squares -= $_**2 for(1..100);
print $squares, "\n";
