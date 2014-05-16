#!/usr/bin/perl

use strict;
use warnings;
use bigint;

my @num = split //, 2**1000;
my $sum = 0;
$sum += $_ for @num;
print "total: $sum\n";
