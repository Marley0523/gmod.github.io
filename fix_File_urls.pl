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

    $keepgoing = 1;
    while ($keepgoing) {
      if ($content =~ /\]\(\.\.\/(File:.*?) /) {
        my $replace = $lookup{$1};
        $content =~ s/\]\((\.\.\/File:.*?) /]($replace /m;
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
Calendar.md
Category%3AApiDB.md
Category%3ABLAST.md
Category%3ABioPerl.md
Category%3AChado.md
Category%3AChado_FlyBase.md
Category%3ACommunity_Annotation.md
Category%3AComputing.md
Category%3AConferences.md
Category%3ADatabase_Tools.md
Category%3AEducation_and_Outreach.md
Category%3AErgatis.md
Category%3AGBrowse_2.md
Category%3AGBrowse_syn.md
Category%3AGMOD_Community.md
Category%3AGalaxy.md
Category%3AGramene.md
Category%3AInterMine.md
Category%3AJBrowse.md
Category%3AJava.md
Category%3ALuceGene.md
Category%3AMAKER.md
Category%3AMOD_UI_Presentations.md
Category%3AMicroarrays.md
Category%3AModware.md
Category%3ANGS.md
Category%3APerl.md
Category%3APosters.md
Category%3APublications.md
Category%3AREST.md
Category%3ASAMtools.md
Category%3ASGN.md
Category%3ASemantic_web.md
Category%3ASybil.md
Category%3ATAIR.md
Category%3ATripal.md
Category%3ATutorial.md
Category%3AWormBase.md
Category%3AXML.md
Category%3AXORT.md
Chado_Genetic_Module.md
Chado_Genetic_Module_-_Staging.md
GMODWeb.md
GMOD_Americas_2011.md
GMOD_Malaysia_2014/Galaxy_Tutorial.md
GMOD_Promotion.md
ISGA.md
ISMB_2010.md
January_2010_GMOD_Meeting.md
January_2010_GMOD_Meeting_Registration.md
Jun_2016_GMOD_Meeting.md
March_2011_GMOD_Meeting.md
NGS.md
News/CMap3D.md
News/Ergatis_Update.md
News/GBrowse_NGS_Tutorial_&_Poster.md
News/ISMB_2010_Talks_&_Posters.md
News/The_TopoView_Glyph_Needs_You!.md
Next_generation_sequencing.md
October_2011_GMOD_Meeting.md
PAG_2010.md
PAG_2013.md
Satellite_Meetings_-_GMOD_Americas_2011.md
Special%3ABrowse/Category%3AApiDB.md
Special%3ABrowse/Category%3ABLAST.md
Special%3ABrowse/Category%3ABioPerl.md
Special%3ABrowse/Category%3AChado.md
Special%3ABrowse/Category%3AChado_FlyBase.md
Special%3ABrowse/Category%3ACommunity_Annotation.md
Special%3ABrowse/Category%3AComputing.md
Special%3ABrowse/Category%3AConferences.md
Special%3ABrowse/Category%3ADatabase_Tools.md
Special%3ABrowse/Category%3AEducation_and_Outreach.md
Special%3ABrowse/Category%3AErgatis.md
Special%3ABrowse/Category%3AGBrowse.md
Special%3ABrowse/Category%3AGBrowse_2.md
Special%3ABrowse/Category%3AGBrowse_syn.md
Special%3ABrowse/Category%3AGMOD_Community.md
Special%3ABrowse/Category%3AGalaxy.md
Special%3ABrowse/Category%3AGramene.md
Special%3ABrowse/Category%3AInterMine.md
Special%3ABrowse/Category%3AJBrowse.md
Special%3ABrowse/Category%3AJava.md
Special%3ABrowse/Category%3ALuceGene.md
Special%3ABrowse/Category%3AMAKER.md
Special%3ABrowse/Category%3AMOD_UI_Presentations.md
Special%3ABrowse/Category%3AMicroarrays.md
Special%3ABrowse/Category%3AModware.md
Special%3ABrowse/Category%3ANGS.md
Special%3ABrowse/Category%3APerl.md
Special%3ABrowse/Category%3APosters.md
Special%3ABrowse/Category%3APublications.md
Special%3ABrowse/Category%3AREST.md
Special%3ABrowse/Category%3ASAMtools.md
Special%3ABrowse/Category%3ASGN.md
Special%3ABrowse/Category%3ASemantic_web.md
Special%3ABrowse/Category%3ASybil.md
Special%3ABrowse/Category%3ATAIR.md
Special%3ABrowse/Category%3ATripal.md
Special%3ABrowse/Category%3ATutorial.md
Special%3ABrowse/Category%3AWormBase.md
Special%3ABrowse/Category%3AXML.md
Special%3ABrowse/Category%3AXORT.md
Special%3ASearch/Tools_using_GMOD.md
Training_and_Outreach.md
XORT/tool_data.md
