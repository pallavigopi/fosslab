#!/usr/bin/perl

#< is read mode
open(FIN,"<file.txt") or die "Cannot open file";
my @lines=<FIN>;
print "The File contents:\n"; 
print "@lines";
close(FIN);

#writing to file
#+>> is append+ mode 
open(FOUT,"+>>file.txt") or die "Cannot open file";
print "Enter data to write to file: \n";
my $str=<STDIN>;
print FOUT $str;
seek FOUT,0,0;
@lines=<FOUT>;
print "\nNew contents of the file: \n@lines";
close(FOUT);
