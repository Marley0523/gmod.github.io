#!/usr/bin/perl
use strict;
use warnings;

my %lookup;
open (my $File, "<", "File_lookup.txt") or die "couldn't open file lookup $!";

while (<$File>) {
    chomp;
    my @la = split /\t/, $_;
    $lookup{$la[0]} = $la[1];
}
close $File;

my %file_contents;
my %file_handle;


while (my $file = <DATA>) {
    chomp $file;
    $file = "wiki/$file";

    my $content = '';
    {
        local $/;
        open (my $in, "<", $file) or die "couldn't open $file for reading: $!";
        $content = <$in>;
	close $in;
    }

    $file_contents{$file} = $content;

    open ($file_handle{$file}, ">", $file) or die "couldn't open $file for writing: $!";
}

for my $key (keys %file_contents) {

    my $content = $file_contents{$key};

    my $keepgoing = 1;
    while ($keepgoing) {
      if ($content =~ /href="(File:.*?)"/ ) {
        my $replace = $lookup{$1};
        $content =~ s/href="(File:.*?)"/href="$replace"/m;
      }
      else {
        $keepgoing =0;
      }
    }

    $keepgoing = 1;
    while ($keepgoing) {
      if ($content =~ /\]\((File:.*?) /) {
	my $replace = $lookup{$1};
        $content =~ s/\]\((File:.*?) /]($replace /m;
      }
      else {
        $keepgoing =0;
      }
    }

    $keepgoing = 1;
    while ($keepgoing) {
      if ($content =~ /\]\(\/wiki\/(File:.*?) /) {
        my $replace = $lookup{$1};
        $content =~ s/\]\(\/wiki\/(File:.*?) /]($replace /m;
      }
      else {
        $keepgoing =0;
      }
    }

    my $fh = $file_handle{$key};
    print $fh $content;
    close $file_handle{$key};
}


__DATA__
CMap/tool_data.md
Calendar.md
Category%3AAnalysis.md
Category%3AAnnotation.md
Category%3AApollo.md
Category%3ABioMart.md
Category%3ACMap.md
Category%3AChado_Modules.md
Category%3AChado_Presentations.md
Category%3AComparative_Genomics.md
Category%3ADAS.md
Category%3ADictyBase.md
Category%3AEvents.md
Category%3AEvolution.md
Category%3AExpression.md
Category%3AFlyBase.md
Category%3AGBrowse.md
Category%3AGMODWeb.md
Category%3AGMOD_Project.md
Category%3AGMOD_Project_Presentations.md
Category%3AGeneric_Gene_Pages.md
Category%3AMGI.md
Category%3AMeetings.md
Category%3AMiddleware_Presentations.md
Category%3AOntologies.md
Category%3AParameciumDB.md
Category%3APathway_Tools.md
Category%3APhenotypes.md
Category%3APresentations.md
Category%3AProposals.md
Category%3APubSearch.md
Category%3ASGD.md
Category%3ATableEdit.md
Category%3ATextpresso.md
Category%3ATurnkey.md
Category%3AUser_Experiences.md
Chado_Natural_Diversity.md
Chado_Natural_Diversity_Module_Working_Group.md
Databases_and_GMOD.md
Special%3ABrowse/Category%3AAnalysis.md
Special%3ABrowse/Category%3AAnnotation.md
Special%3ABrowse/Category%3AApollo.md
Special%3ABrowse/Category%3ABioMart.md
Special%3ABrowse/Category%3ACMap.md
Special%3ABrowse/Category%3AChado_Presentations.md
Special%3ABrowse/Category%3AComparative_Genomics.md
Special%3ABrowse/Category%3ADAS.md
Special%3ABrowse/Category%3ADictyBase.md
Special%3ABrowse/Category%3AEvents.md
Special%3ABrowse/Category%3AEvolution.md
Special%3ABrowse/Category%3AExpression.md
Special%3ABrowse/Category%3AFlyBase.md
Special%3ABrowse/Category%3AGMODWeb.md
Special%3ABrowse/Category%3AGMOD_Project.md
Special%3ABrowse/Category%3AGMOD_Project_Presentations.md
Special%3ABrowse/Category%3AGeneric_Gene_Pages.md
Special%3ABrowse/Category%3AMGI.md
Special%3ABrowse/Category%3AMeetings.md
Special%3ABrowse/Category%3AMiddleware_Presentations.md
Special%3ABrowse/Category%3AOntologies.md
Special%3ABrowse/Category%3AParameciumDB.md
Special%3ABrowse/Category%3APathway_Tools.md
Special%3ABrowse/Category%3APhenotypes.md
Special%3ABrowse/Category%3APresentations.md
Special%3ABrowse/Category%3AProposals.md
Special%3ABrowse/Category%3APubSearch.md
Special%3ABrowse/Category%3ASGD.md
Special%3ABrowse/Category%3ATableEdit.md
Special%3ABrowse/Category%3ATextpresso.md
Special%3ABrowse/Category%3ATurnkey.md
Special%3ABrowse/Category%3AUser_Experiences.md
Training_and_Outreach.md
