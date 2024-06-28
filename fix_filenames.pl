#!/usr/bin/perl 
use strict;
use warnings;

my $file = "News/Galaxy_Events:_April_2011";
my $newfile = $file;
$newfile =~ s/\:/%3A/g;

#system('git','mv' "$file.md", "$newfile.md") == 0 or die "$!";

our $^I = '.bak';

our @ARGV = ('News/Galaxy_Events:_April_2011.md');

while (<ARGV>) {
    s/$file/$newfile/g;
    print;
}

