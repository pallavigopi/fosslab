#!/usr/bin/perl
use strict;
use warnings;

my $n=-1;
my $sump=0;
my $sumn=0;
print "\nSum of numbers positive and negative numbers\n";
while ($n!=0){
print "Enter a number(i/p terminates at 0):";
$n=<STDIN>;
if ($n>0){
 $sump=$sump+$n;
}
else{
 $sumn=$sumn+$n;
}
}

print "Sum of numbers positive numbers is $sump and negative numbers is $sumn";


