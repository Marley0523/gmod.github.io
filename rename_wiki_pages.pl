#!/usr/bin/perl
use strict;
use warnings;

my $STARTDIR = 'wiki';

process_dir($STARTDIR);


sub process_dir {
    my $dir = $_[0];

    warn $dir;
    chdir $dir;

    my @files = <*>;
    for my $file (@files) {
	next if $file =~ /\.md$/;
        if (-d $file) {
            process_dir($file);
	    chdir '..';
	}
	else {
	    my $qfile = quotemeta($file);
            system("git mv $qfile $qfile.md") == 0 or die "couldn't move $qfile: $!";
	    system('git', 'add', $qfile.".md")         == 0 or die "couldn't git add $file $!";
	}
    }
}

