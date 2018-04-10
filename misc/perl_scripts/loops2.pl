#!/usr/bin/perl
use strict;
use warnings;

my $i;
my $n;
my @arr;
print "\nEnter number of array elements: ";
$n=<STDIN>;
print "Enter array elements\n";
for ($i=0; $i<$n; $i=$i+1){
 $arr[$i]=<STDIN>;
}
print "The entered elements are: @arr";

my @days=qw(Monday Tuesday Wednsday Thursday Friday Saturday);
print "Days of the week sorted in dictonary: \n";
@days=sort @days;
print "@days";


