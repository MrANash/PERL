#!/usr/bin/perl

use 5.010;
use strict;
use warnings;


print "please input a binary number\n";

my $toDec = <STDIN>;
my $toDecB = oct("0b".$toDec);


print "now we will convert from decimal to binary\n";
print "please input a decimal number: \n";
my $toBin = <STDIN>;
my $bNum = sprintf ("%b",$toBin);

