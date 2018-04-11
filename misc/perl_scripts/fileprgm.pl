use strict;
use warnings;

#for a file with a number on each row calculate sum
my $sum = 0;
open(my $fh, "<", "file2.txt") or die "Could not open file\n";
while (my $line = <$fh>) {
    $sum += $line;
}
print "The total value is $sum\n";
