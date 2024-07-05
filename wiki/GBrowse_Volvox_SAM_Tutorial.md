<div id="mw-page-base" class="noprint">

</div>

<div id="mw-head-base" class="noprint">

</div>

<div id="content" class="mw-body" role="main">

<span id="top"></span>

<div id="mw-js-message" style="display:none;">

</div>



# <span dir="auto">GBrowse Volvox SAM Tutorial</span>

<div id="bodyContent">

<div id="siteSub">

From GMOD

</div>

<div id="contentSub">

</div>

<div id="jump-to-nav" class="mw-jump">

Jump to: [navigation](#mw-navigation), [search](#p-search)

</div>

<div id="mw-content-text" class="mw-content-ltr" lang="en" dir="ltr">

> **This page or section needs to be edited.**
> <span class="small">Please help by <span class="plainlinks"><a
> href="http://gmod.org/mediawiki/index.php?title=GBrowse_Volvox_SAM_Tutorial&amp;action=edit"
> class="external text" rel="nofollow">editing this page</a></span> to
> add your revisions or additions.</span>

This is a short tutorial intended to add on to the
[GBrowse](GBrowse.1 "GBrowse") tutorial that ships with it using the
"volvox" data set. The SAM file that is linked to here was created by
running wgsim, a read simulator to create FASTQ files and then using
[Galaxy](Galaxy.1 "Galaxy") to run Bowtie and produce a SAM file. In
order to use this tutorial, SAMtools and Bio::DB::Sam must be installed.
This is based on the [NGS
tutorial](GBrowse_NGS_Tutorial "GBrowse NGS Tutorial") that Dave
Clements wrote.

<div id="toc" class="toc">

<div id="toctitle">

## Contents

</div>

- [<span class="tocnumber">1</span> <span class="toctext">Create the BAM
  file</span>](#Create_the_BAM_file)
- [<span class="tocnumber">2</span> <span class="toctext">Add a database
  stanza to the volvox
  config</span>](#Add_a_database_stanza_to_the_volvox_config)
- [<span class="tocnumber">3</span> <span class="toctext">Add a coverage
  track</span>](#Add_a_coverage_track)
- [<span class="tocnumber">4</span> <span class="toctext">Add individual
  reads</span>](#Add_individual_reads)
- [<span class="tocnumber">5</span> <span class="toctext">Semantic
  zooming</span>](#Semantic_zooming)
- [<span class="tocnumber">6</span> <span class="toctext">Read
  pairs</span>](#Read_pairs)
- [<span class="tocnumber">7</span> <span class="toctext">Coloring reads
  according to quality</span>](#Coloring_reads_according_to_quality)

</div>

## <span id="Create_the_BAM_file" class="mw-headline">Create the BAM file</span>

Start with a
<a href="https://raw.githubusercontent.com/GMOD/gmod.github.io/main/mediawiki/images/2/22/Volvox.sam.gz" class="internal"
title="Volvox.sam.gz">SAM file</a> and save in the GBrowse database
directory for the volvox tutorial. Also make sure that the volvox fasta
file, volvox.fa, is in the directory as well. Alternatively, you can
download this
<a href="https://raw.githubusercontent.com/GMOD/gmod.github.io/main/mediawiki/images/7/70/Volvox_sam.zip" class="internal"
title="Volvox sam.zip">Volvox_sam.zip</a> file that has a directory with
all of the files in it. Now convert the SAM file to a BAM file and index
it:

     samtools faidx volvox.fa
     samtools import volvox.fa.fai volvox.sam volvox.bam
     samtools sort volvox.bam volvox.sort
     samtools index volvox.sort.bam

## <span id="Add_a_database_stanza_to_the_volvox_config" class="mw-headline">Add a database stanza to the volvox config</span>

The database stanza goes just above the "TRACK DEFAULTS" stanza:

    [samdb:database]
    db_adaptor     = Bio::DB::Sam
    db_args        = -fasta /var/lib/gbrowse2/databases/volvox/volvox.fa
                     -bam  /var/lib/gbrowse2/databases/volvox/volvox.sort.bam
    search options = none

It's not a bad idea to move the data adaptor information from the top of
the conf file (that points at the volvox database directory) down here
and add a database stanza for it as well; though if you do that, you
must also add a `database` line to the TRACK DEFAULTS section that
points at that database name so that the other tracks continue to work.

## <span id="Add_a_coverage_track" class="mw-headline">Add a coverage track</span>

Now add a stanza that will create a coverage density track.

    [CoverageDensity]
    feature        = coverage
    glyph          = wiggle_density
    database       = samdb
    height         = 20
    bicolor_pivot  = 15
    pos_color      = blue
    neg_color      = red
    key            = Coverage (density)
    category       = Reads
    label          = 0

Note that the value of the `database` is `samdb`, which is the name it
was given in the database stanza above. The `bicolor_pivot` value is the
coverage value below which the density plot will turn red (the
neg_color).

## <span id="Add_individual_reads" class="mw-headline">Add individual reads</span>

This stanza will show the individual reads as glyphs, though there will
be a lot of them:

    [Reads]
    feature        = match
    glyph          = segments
    draw_target    = 1
    show_mismatch  = 1
    mismatch_color = red
    database       = samdb
    bgcolor        = blue
    fgcolor        = white
    height         = 5
    label density  = 50
    bump           = fast
    key            = Reads
    category       = Reads

The `draw_target` option tells the glyph to put the sequence of the read
in the glyph when zoomed in far enough to see it and the `show_mismatch`
option highlights the base in red when it doesn't match the contig
sequence.

Now, the problem with this track is that if you are at a zoom level
higher than a few kb, rendering the track will take a long time (my
laptop can't manage 4kb), so we need a way to turn this track on and off
according to the zoom level. Fortunately, GBrowse has semantic zooming
built in, and so what we'd like is to turn on the coverage glyph when
zoomed out and individual reads when zoomed in.

## <span id="Semantic_zooming" class="mw-headline">Semantic zooming</span>

To use semantic zooming, we give the coverage and read tracks the same
name, and then we add to the coverage track name (the one we want to
appear as we zoom out) the base pair level at which we want it to "turn
on", like this:

    [Reads:1500]
    feature        = coverage
    glyph          = wiggle_density
    database       = samdb
    height         = 20
    bicolor_pivot  = 15
    pos_color      = blue
    neg_color      = red

so that if you look at a range that is 1499 bp wide, you'll see
individual reads, then if you move out a little bit and look at a
segment 1500 bp wide, it will switch to a coverage density plot.

## <span id="Read_pairs" class="mw-headline">Read pairs</span>

Bio::DB::Sam tools will also show read pairs matched up. To do this you
use the "read_pair" feature type along with the segments glyph, like
this:

    [Pairs]
    feature        = read_pair
    glyph          = segments
    draw_target    = 1
    show_mismatch  = 1
    mismatch_color = red
    database       = samdb
    bgcolor        = violet
    height         = 5
    label density  = 50
    bump           = fast
    key            = Read pairs
    category       = Reads

    [Pairs:1000]
    feature        = coverage
    glyph          = wiggle_density
    database       = samdb
    height         = 20
    bicolor_pivot  = 15
    pos_color      = purple
    neg_color      = red

## <span id="Coloring_reads_according_to_quality" class="mw-headline">Coloring reads according to quality</span>

With real SAM data, you could color your reads according to the quality
score of the read. Since this tutorial is using fake data with uniform
quality, it is somewhat boring, but if you have your own data, you can
do this for bgcolor:

    bgcolor = sub {
            my $feature = shift;
            my $blueness = 255 - int($feature->qual * 2.40);
            my $colour = chr(35) . sprintf("%X", $blueness) .
                                   sprintf("%X", $blueness) . "FF";
            return $colour;
            }

where the callback will make the feature background more blue the higher
the quality. How do you suppose it does that?

</div>

<div class="printfooter">

Retrieved from
"<http://gmod.org/mediawiki/index.php?title=GBrowse_Volvox_SAM_Tutorial&oldid=22395>"

</div>

<div id="catlinks" class="catlinks">

<div id="mw-normal-catlinks" class="mw-normal-catlinks">

[Categories](Special%3ACategories "Special%3ACategories"):

- [Needs Editing](Category%3ANeeds_Editing "Category%3ANeeds Editing")
- [Tutorials](Category%3ATutorials "Category%3ATutorials")
- [GBrowse](Category%3AGBrowse "Category%3AGBrowse")
- <a
  href="http://gmod.org/mediawiki/index.php?title=Category%3ANGS&amp;action=edit&amp;redlink=1"
  class="new" title="Category%3ANGS (page does not exist)">NGS</a>
- [GBrowse 2](Category%3AGBrowse_2 "Category%3AGBrowse 2")

</div>

</div>

<div class="visualClear">

</div>

</div>

</div>

<div id="mw-navigation">

## Navigation menu

<div id="mw-head">



<div id="left-navigation">

<div id="p-namespaces" class="vectorTabs" role="navigation"
aria-labelledby="p-namespaces-label">

### Namespaces


- <span id="ca-talk"><a
  href="http://gmod.org/mediawiki/index.php?title=Talk%3AGBrowse_Volvox_SAM_Tutorial&amp;action=edit&amp;redlink=1"
  accesskey="t"
  title="Discussion about the content page [t]">Discussion</a></span>

</div>

<div id="p-variants" class="vectorMenu emptyPortlet" role="navigation"
aria-labelledby="p-variants-label">

### 

### Variants[](#)

<div class="menu">

</div>

</div>

</div>





</div>

</div>

</div>

<div id="mw-panel">

<div id="p-logo" role="banner">

<a href="Main_Page"
style="background-image: url(../images/GMOD-cogs.png);"
title="Visit the main page"></a>

</div>

<div id="p-Navigation" class="portal" role="navigation"
aria-labelledby="p-Navigation-label">

### Navigation

<div class="body">

- <span id="n-GMOD-Home">[GMOD Home](Main_Page)</span>
- <span id="n-Software">[Software](GMOD_Components)</span>
- <span id="n-Categories-.2F-Tags">[Categories /
  Tags](Categories)</span>

</div>

</div>

<div id="p-Documentation" class="portal" role="navigation"
aria-labelledby="p-Documentation-label">

### Documentation

<div class="body">

- <span id="n-Overview">[Overview](Overview)</span>
- <span id="n-FAQs">[FAQs](Category%3AFAQ)</span>
- <span id="n-HOWTOs">[HOWTOs](Category%3AHOWTO)</span>
- <span id="n-Glossary">[Glossary](Glossary)</span>

</div>

</div>

<div id="p-Community" class="portal" role="navigation"
aria-labelledby="p-Community-label">

### Community

<div class="body">

- <span id="n-GMOD-News">[GMOD News](GMOD_News)</span>
- <span id="n-Training-.2F-Outreach">[Training /
  Outreach](Training_and_Outreach)</span>
- <span id="n-Support">[Support](Support)</span>
- <span id="n-GMOD-Promotion">[GMOD Promotion](GMOD_Promotion)</span>
- <span id="n-Meetings">[Meetings](Meetings)</span>
- <span id="n-Calendar">[Calendar](Calendar)</span>

</div>

</div>

<div id="p-tb" class="portal" role="navigation"
aria-labelledby="p-tb-label">

### Tools

<div class="body">


- <span id="t-smwbrowselink"><a href="Special%3ABrowse/GBrowse_Volvox_SAM_Tutorial"
  rel="smw-browse">Browse properties</a></span>


</div>

</div>

</div>

</div>

<div id="footer" role="contentinfo">

- <span id="footer-info-lastmod">Last updated at 00:19 on 23 October
  2012.</span>
<!-- - <span id="footer-info-viewcount">31,471 page views.</span> -->
- <span id="footer-info-copyright">Content is available under
  <a href="http://www.gnu.org/licenses/fdl-1.3.html" class="external"
  rel="nofollow">a GNU Free Documentation License</a> unless otherwise
  noted.</span>

<!-- -->

- <span id="footer-places-about">[About
  GMOD](GMOD%3AAbout "GMOD%3AAbout")</span>

<!-- -->






</div>
