#!/usr/bin/perl
use strict;
use warnings;

use File::Find;
use FindBin qw($Bin);
use File::Copy;

find(\&wanted, 'gmod.org');

sub wanted {
	#    print "$File::Find::dir\n";
	#    print "$_\n";

    my $filename = $_;
    my $dir = $File::Find::dir;
    return if ( !$_ or -d "/Users/cain/gmod.org_mirror/gmod.org/$dir/$filename");

    my $command = "file";
    my $fp_file = "/Users/cain/gmod.org_mirror/gmod.org/$dir/$filename";
    my ($filetype) = do {
      open my $fh, "-|", $command , ($fp_file) or die "Failed spawning $command: $!";
      <$fh>;
    };

    unless (-d "$Bin/md/$dir") {
        system("mkdir", "-p", "$Bin/md/$dir")==0 or die "Failed making $Bin/md/$dir: $!";
    }

    if ($filetype =~ /HTML document/) {
        my $orig_filename = $filename;
	$filename =~ s/.pdf$/.tmppdf.html/ ;

	my $fileout = "$Bin/md/$dir/$filename";

	unless ($orig_filename eq $filename) {
            copy("$Bin/$dir/$orig_filename", "$Bin/$dir/$filename") or die "copy failed: $!";
        }

        system("pandoc",
		"-f",
		"html",
		"-t",
		"gfm",
		"-o",
		$fileout,
		"$Bin/$dir/$filename") == 0 or die "$Bin/$dir/$filename";

	if ($fileout =~ /.tmppdf.html$/) {
	    my $right_filename = $fileout;
            $right_filename =~ s/.tmppdf.html$/.pdf/;
	    move($fileout, $right_filename) or die "move failed $right_filename: $!";
	}
    }

}
