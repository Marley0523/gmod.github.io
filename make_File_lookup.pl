#!/usr/bin/perl
use strict;
use warnings;

my @FILES = <wiki/File:*>;

open my $fh, ">", "File_lookup.txt" or die "couldn't open File_lookup.txt: $!";

for my $file (@FILES) {
    #https://raw.githubusercontent.com/GMOD/gmod.github.io/main/mediawiki/images/0/00/InterMine.png
    next unless ($file =~ /^wiki\/File:/);

    warn $file;
    open my $inner, "<", $file or die "couldn't open $file: $!";
    my $looknowflag = 0;
    while (<$inner>) {
	if (/<div class="fullMedia">/) {
            $looknowflag = 1;
	}
        elsif ($looknowflag and $_ =~ /href="(.*?)"/) {
	    my $match = $1;
	    if ($match =~ s!\.\./mediawiki!https://raw.githubusercontent.com/GMOD/gmod.github.io/main/mediawiki!) {
                print $fh (substr $file, 5)."\t$match\n";
		last;
	    }
	    elsif ($match =~ s!http://gmod.org/mediawiki!https://raw.githubusercontent.com/GMOD/gmod.github.io/main/mediawiki!) {
                print $fh (substr $file, 5)."\t$match\n";
                last;
	    }
	    else {
                print "what's up with $match\n" and die;
	    }
	}
    }

    if (!$looknowflag) {
        warn "what's up with $file";
    }
    close $inner;

}

close $fh;

