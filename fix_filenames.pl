#!/usr/bin/perl 
use strict;
use warnings;

use IPC::Run qw( run );

my $file = <DATA>;
my $newfile = $file;
$newfile =~ s/\:/%3A/g;

#system('git','mv' "$file.md", "$newfile.md") == 0 or die "$!";

my @command = ( 'grep' );
my @args    = ("-rl", $file, '*.md');

push @command, @args;
run \@command, '>', 'out.txt'; 

die;

#my @files_to_fix = do {
#    open my $fh, "-|", $command, @args or die "failed spawning grep for $file: $!";
#    <$fh>;
#};

#warn @files_to_fix;
die;

our $^I = '.bak';

our @ARGV = ('News/Galaxy_Events:_April_2011.md');

while (<ARGV>) {
    s/$file/$newfile/g;
    print;
}



__DATA__
Website_Down:_Aug_11_2008
