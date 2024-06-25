<div id="mw-page-base" class="noprint">

</div>

<div id="mw-head-base" class="noprint">

</div>

<div id="content" class="mw-body" role="main">

<span id="top"></span>

<div id="mw-js-message" style="display:none;">

</div>



# <span dir="auto">GBrowse/Uploading Wiggle Tracks</span>

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

<div id="toc" class="toc">

<div id="toctitle">

## Contents

</div>

- [<span class="tocnumber">1</span> <span class="toctext">Dense Feature
  and Quantitative Data</span>](#Dense_Feature_and_Quantitative_Data)
- [<span class="tocnumber">2</span> <span class="toctext">Wiggle
  tracks</span>](#Wiggle_tracks)
  - [<span class="tocnumber">2.1</span> <span class="toctext">Format
    Descriptions</span>](#Format_Descriptions)
    - [<span class="tocnumber">2.1.1</span> <span class="toctext">Wiggle
      (BED)</span>](#Wiggle_.28BED.29)
    - [<span class="tocnumber">2.1.2</span> <span class="toctext">Wiggle
      (variable step)</span>](#Wiggle_.28variable_step.29)
    - [<span class="tocnumber">2.1.3</span> <span class="toctext">Wiggle
      (fixed step)</span>](#Wiggle_.28fixed_step.29)
  - [<span class="tocnumber">2.2</span>
    <span class="toctext">Configuring Data Processing and
    Display</span>](#Configuring_Data_Processing_and_Display)
    - [<span class="tocnumber">2.2.1</span> <span class="toctext">Wiggle
      Track Options Supported by
      GBrowse</span>](#Wiggle_Track_Options_Supported_by_GBrowse)
    - [<span class="tocnumber">2.2.2</span>
      <span class="toctext">Formatting
      Examples</span>](#Formatting_Examples)
      - [<span class="tocnumber">2.2.2.1</span>
        <span class="toctext">Smoothing</span>](#Smoothing)
  - [<span class="tocnumber">2.3</span>
    <span class="toctext">Quantitative Data Examples: *C. elegans*
    Tiling
    Arrays</span>](#Quantitative_Data_Examples:_C._elegans_Tiling_Arrays)
    - [<span class="tocnumber">2.3.1</span> <span class="toctext">*C.
      elegans* BED</span>](#C._elegans_BED)
    - [<span class="tocnumber">2.3.2</span> <span class="toctext">*C.
      elegans* Wiggle</span>](#C._elegans_Wiggle)
- [<span class="tocnumber">3</span> <span class="toctext">Uploading the
  tracks</span>](#Uploading_the_tracks)
- [<span class="tocnumber">4</span> <span class="toctext">Making a
  Wiggle Track Permanent</span>](#Making_a_Wiggle_Track_Permanent)
  - [<span class="tocnumber">4.1</span> <span class="toctext">Specifying
    the Order of Glyphs within a Displayed
    Track</span>](#Specifying_the_Order_of_Glyphs_within_a_Displayed_Track)
    - [<span class="tocnumber">4.1.1</span>
      <span class="toctext">Illustrative
      Script</span>](#Illustrative_Script)
- [<span class="tocnumber">5</span> <span class="toctext">Email
  Threads</span>](#Email_Threads)

</div>

## <span id="Dense_Feature_and_Quantitative_Data" class="mw-headline">Dense Feature and Quantitative Data</span>

<div class="center">

<div class="thumb tnone">

<div class="thumbinner" style="width:752px;">

<a href="../File:Fly_12pt_spen.png" class="image"><img
src="../../mediawiki/images/6/61/Fly_12pt_spen.png" class="thumbimage"
width="750" height="258" /></a>

<div class="thumbcaption">

<div class="magnify">

<a href="../File:Fly_12pt_spen.png" class="internal"
title="Enlarge"><img
src="../../mediawiki/skins/common/images/magnify-clip.png" width="15"
height="11" /></a>

</div>

This track shows an estimate of RNA abundance (transcription) during the
first 24 hours of *D. melanogaster* development, measured by a tiling
array as described in <span class="pops"> <a
href="http://www.ncbi.nlm.nih.gov/entrez/query.fcgi?db=pubmed&amp;cmd=Retrieve&amp;dopt=AbstractPlus&amp;list_uids=16951679&amp;query_hl=1&amp;itool=pubmed_docsum"
class="external text" rel="nofollow">Manak JR, et al. Nature Genet. 2006
Oct;38(10):1151-8.</a> </span>

</div>

</div>

</div>

</div>

  

## <span id="Wiggle_tracks" class="mw-headline">Wiggle tracks</span>

- Dense feature data includes tiling arrays and other classes of
  microarray experiments, pre-computed density calculations, or any kind
  of data that comes in numerous small parts spaced along the full
  length of the chromosome.
- This wiggle track, originally developed by Jim Kent as part of the
  wiggle track upload process at the UCSC Genome Browser and has
  recently been <span class="pops"><a
  href="http://www.modencode.org/gbrowse/tutorial/tutorial.html#wiggle#wiggle"
  class="external text" rel="nofollow">added to Gbrowse</a></span>.
- Detailed information on the wiggle format can be obtained at the
  <span class="pops"><a href="http://genome.ucsc.edu/goldenPath/help/wiggle.html"
  class="external text" rel="nofollow">UCSC web site</a></span>

Note: For the GBrowse wiggle loader to work correctly, you must have the
following modules installed:

- Statistics::Descriptive

### <span id="Format_Descriptions" class="mw-headline">Format Descriptions</span>

WIG files are plain text files. They always begin with a "track" header,
which, at a minimum, looks like this:

       track type=wiggle_0 name="ArrayExpt1" description="20 degrees, 2 hr"

The "type" attribute is required, and must have a value of "wiggle_0".
"name" and "description" are optional, but suggested, and indicate the
name and description of the data series -- these will become the "Name"
and "Note" fields of the generated GFF3 feature. Following the track
line comes the data for one or more chromosomal regions. As described in
the UCSC documentation, there are three ways of formatting the data:
(1)"Bed Format", (2) "variableStep", and (3) "fixedStep" format. The BED
format is essentially the same as GFF3 and does not give you any
performance advantages over using straight GFF3. However, you are
dealing with features of variable width and variable steps, BED will
allow you to express this. variableStep format describes intervals of
the genome that have a fixed width, but begin at arbitrary locations,
while fixedStep format describes features of the genome that are evenly
spaced and have a fixed width (e.g. tiling array features).

#### <span id="Wiggle_.28BED.29" class="mw-headline">Wiggle (BED)</span>

For **BED**, the format is:

     I       455     480     0
     I       495     520     59
     I       522     547     0
     I       546     571     110
     I       576     601     159
     I       691     716     189
     I       808     833     168
     I       834     859     40
     I       860     885     0
     I       910     935     0
     I       932     957     74
     I       961     986     0
     I       1036    1061    0
     I       1067    1092    0
     I       1095    1120    88

- There are four required fields: ref_sequence,start,end and score.
- **Note that this format differs from the stand-alone BED
  specification**: there are only four fields and the fourth field will
  only accept numeric data (signed integers, floats, etc)
- Scores can be any sort of numeric data, including integers, negative
  numbers and floating point.
- Note that the BED coordinates are "zero-indexed", half open, which
  means the start coordinate is zero-indexed and the end coordinate is
  1-indexed. For display or conversion to variableStep wiggle (below),
  the start coordinate should in incremented up by 1.
- For the intial upload to the website, there is more of a performance
  hit associated with BED formatted data. After loading, access and
  rendered performace is equal for all three formats.

<div style="border:1px solid blue;background:azure">

An example of a type of data that would best be represented with BED
would be a microarray with varying probe lengths at varying intervals
along the chromosome coordinates.

</div>

------------------------------------------------------------------------

#### <span id="Wiggle_.28variable_step.29" class="mw-headline">Wiggle (variable step)</span>

For **variableStep** data, the format is:

        variableStep chrom=chr19 span=150
        59304701 10.0
        59304901 12.5
        59305401 15.0
        59305601 17.5
        59305901 20.0
        59306081 17.5
        59306301 15.0
        59306691 12.5
        59307871 10.0

The data is introduced by a line beginning with the keyword
"variableStep", and the arguments "chrom" and "span", which indicate the
chromosome on which the features are located, and the width of each
feature, in base pairs. This is followed by a series of two-element
lines indicating the start position of each feature, and its
quantitative value. Values can be any sort of numeric data, including
integers, negative numbers and floating point.

- Using this format instead of BED will boost performance for data
  upload.

<div style="border:1px solid blue;background:azure">

An example of data that can best be represented in variable step wiggle
format is an oligonucleotide microarray with fixed probe lengths, whose
positions are not at fixed intervals.

</div>

------------------------------------------------------------------------

#### <span id="Wiggle_.28fixed_step.29" class="mw-headline">Wiggle (fixed step)</span>

For **fixedStep** data, the format is:

       fixedStep chrom=chr19 start=59307401 step=300 span=200
       1000
        900
        800
        700
        600
        500
        400
        300
        200
        100

The data is introduced by a line beginning with the keyword "fixedStep",
and the arguments "chrom", "span", "start" and "step". The first two
arguments are the same as before, while "start" and "step" indicate the
starting position of the first feature, and the spacing between each
feature. This is followed by a numeric value for each step. In this
case, we have described 10 features beginning at position 59307401. Each
feature begins 300 bp from the next and is 200 bp wide. In practice,
this means that the first 200 bp of each interval is filled with known
data, while information on the last 100 bp is "missing."

- This is the most constrained format, in terms of coordinates, but it
  the most efficient for initial upload and processing.

<div style="border:1px solid blue;background:azure">

An example of a type of data that could use fixed step wiggle format is
computed bins of fixed width.

</div>

### <span id="Configuring_Data_Processing_and_Display" class="mw-headline">Configuring Data Processing and Display</span>

- Some aspects of the data display can be controlled in the wiggle file

#### <span id="Wiggle_Track_Options_Supported_by_GBrowse" class="mw-headline">Wiggle Track Options Supported by GBrowse</span>

Parameters for wiggle track definition lines All options are placed in a
single line separated by spaces:

     track type=wiggle_0 name=track_label description=center_label \
           visibility=display_mode color=r,g,b altColor=r,g,b \
           maxHeightPixels=max:default:min viewLimits=lower:upper \
           windowingFunction=max|mean|min|median smoothingWindow=2-16

The track type with version is REQUIRED, and it currently must be
wiggle_0:

     type wiggle_0

The remaining values are OPTIONAL:

**Supported UCSC-style options**

     name
     description
     visibility        full|pack            # default is full; full = xy plot, pack = density plot
     color             RRR,GGG,BBB          # default is 0,0,0 (black)
     altColor          RRR,GGG,BBB          # default is 0,0,0 (black)
     maxHeightPixels   max:default:min      # default none; Gbrowse uses default, ignores min and max
     viewLimits        lower:upper          # default is range found in data
     windowingFunction maximum|mean|minimum # default is none
     smoothingWindow   2-16                 # default is none; values are in pixels

**GBrowse extended data processing options**

- Depending on the score distribution and variance, some care must be
  taken to avoid a loss in display resolution.
- This applies in particular to score distributions with extreme
  outliers. The reason for this is that the low and high outliers are
  taken into account when the data are scaled for compression, so small
  differences (relative the the score range) between scores can become
  flattened.
- To remedy loss of display resolution, two options are provided.

<!-- -->

     transform         logsquared|logtransform      # default is none
     trim              stdev|stdev2|stdevn          # default is none

  
**transform:** Specify a transform to be performed on all numeric data
within this track prior to loading into the binary wig file. This will
bring the scores into a normal distribution and improve data scaling and
display resolution. Currently, the following two declarations are
recognized:

                transform=logsquared    y’ = log(y**2) for y != 0
                                        y’ = 0         for y == 0

                transform=logtransform  y' = log(y)    for y >= 0
                                        y' = -log(-y)  for y <  0

                transform=none          y’ = y   (no transform - the default)

**trim:** Specify a trimming function to be performed on the data prior
to scaling. Trimming will remove outlier scores, which can have the
effect of emphasizing differences between mid-range scores. Currently,
the following trim functions are recognized:

                trim=stdev1           trim to plus/minus 1 standard deviation of the mean
                trim=stdev2           trim to plus/minus 2 standard deviations of the mean
                ...
                trim=stdevN           trim to plus/minus N standard deviations of the mean; N is an integer

                trim=none             no trimming (the default)

#### <span id="Formatting_Examples" class="mw-headline">Formatting Examples</span>

The two images below represent various diplay and loading configurations
at high and low magnification for the same set of
<a href="../../mediawiki/images/1/19/Fly_sample.txt" class="internal"
title="Fly sample.txt">sample data</a> (Affymetrix tiling data for fly).

**Note:** The example data used here have an extremely wide range in
scores, resulting in a loss of contrast in the majority of the data,
which is in the mid-range. Using log transformation and min and max
trimming, it is possible to bring out the contrast that is otherwise
lost in the middle range.

**Zoomed in**

- The punctate pattern of the track with no span set is due to each
  array element being represented as 1bp in width

<a href="../File:DisplayOptions2.png" class="image"><img
src="../../mediawiki/images/7/76/DisplayOptions2.png" width="850"
height="242" alt="DisplayOptions2.png" /></a>

  
**Zoomed out**

- Note that the track with no span set is almost entirely lost at this
  resolution

<a href="../File:DisplayOptions1.png" class="image"><img
src="../../mediawiki/images/9/9c/DisplayOptions1.png" width="826"
height="239" alt="DisplayOptions1.png" /></a>

##### <span id="Smoothing" class="mw-headline">Smoothing</span>

The quantitative data may have a blockish appearance at low
magnification. This effect can be minimized by smoothing the data, by
blending the transitions between scores within a set number of pixels.
The examples below demonstrate smoothing at a resolution of 10px:

<a href="../File:Smooth_low.png" class="image"><img
src="../../mediawiki/images/b/b9/Smooth_low.png" width="851" height="97"
alt="Smooth low.png" /></a>

  
<a href="../File:Smooth_high.png" class="image"><img
src="../../mediawiki/images/c/ca/Smooth_high.png" width="836"
height="94" alt="Smooth high.png" /></a>

### <span id="Quantitative_Data_Examples:_C._elegans_Tiling_Arrays" class="mw-headline">Quantitative Data Examples: *C. elegans* Tiling Arrays</span>

#### <span id="C._elegans_BED" class="mw-headline">*C. elegans* BED</span>

- This is an example of *C. elegans* tiling array data in BED format
  <span class="pops">
  <a href="../../mediawiki/images/d/d9/PolyA_I_sample_bed.txt"
  class="internal" title="PolyA I sample bed.txt">(Click here to view the
  file)</a></span>.
- The first few lines of the example file

<!-- -->

    track type=wiggle_0 name="polyA" description="mixed-stage polyA tiling array" \
    visibility=pack altColor=0,0,255 windowingFunction=mean smoothingWindow=16
    I   456 480 0
    I   496 520 59
    I   523 547 0
    I   547 571 110
    I   577 601 159
    I   692 716 189
    I   809 833 168
    I   835 859 40
    I   861 885 0
    I   911 935 0

- The file looks lihe this when uploaded to the modENCODE genome browser

<a href="../File:Worm_bed.png" class="image"><img
src="../../mediawiki/images/b/b7/Worm_bed.png" width="931" height="266"
alt="Worm bed.png" /></a>

- **Try it yourself:** <span class="pops"><a
  href="http://modencode.oicr.on.ca/cgi-bin/gbrowse/worm/?name=I%3A1000..20000;eurl=http://modencode.oicr.on.ca/project/uploads/d/d9/PolyA_I_sample_bed.txt;type=CG%20ETILE"
  class="external text" rel="nofollow">Follow this link</a></span> to
  upload the above example file to the modENCODE *C. elegans* genome
  browser

#### <span id="C._elegans_Wiggle" class="mw-headline">*C. elegans* Wiggle</span>

- This is an example of *C. elegans* tiling array data in variable step
  wiggle format
  <span class="pops"><a href="../../mediawiki/images/9/9c/PolyA_I_sample_wig.txt"
  class="internal" title="PolyA I sample wig.txt">(Click here to view the
  file)</a></span>.
- The first few lines of the example file:

<!-- -->

    # Note: comments beginning with '#' are ignored
    track type=wiggle_0 name="polyA mRNA" description="mixed-stage polyA tiling array"\
    color=255,255,255 altColor=0,0,0 windowingFunction=mean smoothingWindow=16
    variableStep chrom=I span=25
    480 0
    520 59
    547 0
    571 110
    601 159
    716 189
    833 168
    859 40
    885 0

- This is what the track looks like after uploading to the modENCODE
  genome browser

<a href="../File:Worm_wiggle.png" class="image"><img
src="../../mediawiki/images/4/47/Worm_wiggle.png" width="922"
height="260" alt="Worm wiggle.png" /></a>

## <span id="Uploading_the_tracks" class="mw-headline">Uploading the tracks</span>

Uploading wiggle tracks to GBrowse is accomplished the same way as with
other classes of remote data.  
In the image below, there are three ways to upload your data:

1.  Upload a file from your computer via the "Browse..." and "Upload
    Buttons"
2.  Paste in your data via the "New..." button
3.  Put your file up on a web or ftp server and then put the URL
    (complete with the 'http://' or 'ftp://' protocol directive) in the
    entry form.

<a href="../File:Uploader.png" class="image"><img
src="../../mediawiki/images/5/55/Uploader.png" class="thumbborder"
width="1254" height="123" alt="Uploader.png" /></a>

  

## <span id="Making_a_Wiggle_Track_Permanent" class="mw-headline">Making a Wiggle Track Permanent</span>

The upload mechanism creates a temporary private track. If you are a
GBrowse administrator and wish to create a permanent wiggle track, the
process is simple.

1.  Format and save a wiggle file to disk in the manner described
    earlier.
2.  Run the script *wiggle2gff3.pl* on this file to create the binary
    wig file. Use the --path option to specify the directory in which
    you want the binary wig file to be stored (default is the temporary
    directory), and the --method option to set the feature type (the
    default is "example"). This will create a binary .wig file in the
    indicated directory and send a GFF3 file to standard output. You
    should capture this output using the "\>" redirect.
3.  Load the GFF3 file into your gbrowse database using
    bp_seqfeature_load.pl or bp_load_gff.pl.
4.  Configure a stanza for the data using the "wiggle_density" or
    "wiggle_xyplot" glyphs:

<!-- -->

    [TEST WIG]
    feature = example
    glyph   = wiggle_density
    key     = my first wiggle file

If you later need to move the wig file somewhere else, simply edit the
GFF3 file to change the path specified in the wigfile attribute. One
neat trick is to use a relative path for the wigfile attribute, as in:

    wigfile=track003.chr19.1199828298.wig

You can then use the **basedir** track option to tell the glyph which
directory contains the wigfile:

  

    [TEST WIG]
    feature = example
    glyph   = wiggle_density
    basedir = /var/data/wigfiles/
    key     = my first wiggle file

### <span id="Specifying_the_Order_of_Glyphs_within_a_Displayed_Track" class="mw-headline">Specifying the Order of Glyphs within a Displayed Track</span>

In the figure at the top of this page, there is a single GBrowse track
composed of several horizontal charts, one for each time period. One way
to ensure that these charts are displayed in the appropriate order is to
use the "source" field in the GFF3 file, in conjunction with the **sort
order** attribute in the stanza for the track.

For example, if the time periods are t=0, t=1, ..., t=9, and the primary
source is "Quelle", then the source for the data at t=0 could be called
Quelle_0, and similarly for the other time periods, and one would add
the following line to the relevant stanza:

    sort order = name

#### <span id="Illustrative_Script" class="mw-headline">Illustrative Script</span>

Assuming there is a .BED file named study_TT.BED for each time period
TT, where TT is 00, 01, 02, ...., then the following script illustrates
how to generate the .gff3 files for subsequent uploading:

    #!/bin/sh
    SOURCE=Quelle  # a string representing the primary source
    STUDY=study    # ${STUDY}_$t.BED
    METHOD=example # the "feature"
    for t in 00 01 02 03 04 05 06 07 08 09 10
    do
      wiggle2gff3.pl --method $METHOD --source ${SOURCE}_$t ${STUDY}_$t.BED \
        > ${STUDY}_$t.gff3
    done

  

## <span id="Email_Threads" class="mw-headline">Email Threads</span>

- <a
  href="http://gmod.827538.n3.nabble.com/wiggle-xyplot-smoothing-td839973.html"
  class="external text" rel="nofollow">wiggle_xyplot smoothing</a>,
  2010/06

</div>

<div class="printfooter">

Retrieved from
"<http://gmod.org/mediawiki/index.php?title=GBrowse/Uploading_Wiggle_Tracks&oldid=23519>"

</div>

<div id="catlinks" class="catlinks">

<div id="mw-normal-catlinks" class="mw-normal-catlinks">

[Categories](../Special:Categories "Special:Categories"):

- [GBrowse](../Category:GBrowse "Category:GBrowse")
- [HOWTO](../Category:HOWTO "Category:HOWTO")

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

- <span id="ca-nstab-main"><a href="Uploading_Wiggle_Tracks" accesskey="c"
  title="View the content page [c]">Page</a></span>
- <span id="ca-talk"><a
  href="http://gmod.org/mediawiki/index.php?title=Talk:GBrowse/Uploading_Wiggle_Tracks&amp;action=edit&amp;redlink=1"
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

<div id="right-navigation">





</div>



</div>

</div>

</div>

<div id="mw-panel">

<div id="p-logo" role="banner">

<a href="../Main_Page"
style="background-image: url(../../images/GMOD-cogs.png);"
title="Visit the main page"></a>

</div>

<div id="p-Navigation" class="portal" role="navigation"
aria-labelledby="p-Navigation-label">

### Navigation

<div class="body">

- <span id="n-GMOD-Home">[GMOD Home](../Main_Page)</span>
- <span id="n-Software">[Software](../GMOD_Components)</span>
- <span id="n-Categories-.2F-Tags">[Categories /
  Tags](../Categories)</span>
- <span id="n-View-all-pages">[View all
  pages](../Special:AllPages)</span>

</div>

</div>

<div id="p-Documentation" class="portal" role="navigation"
aria-labelledby="p-Documentation-label">

### Documentation

<div class="body">

- <span id="n-Overview">[Overview](../Overview)</span>
- <span id="n-FAQs">[FAQs](../Category:FAQ)</span>
- <span id="n-HOWTOs">[HOWTOs](../Category:HOWTO)</span>
- <span id="n-Glossary">[Glossary](../Glossary)</span>

</div>

</div>

<div id="p-Community" class="portal" role="navigation"
aria-labelledby="p-Community-label">

### Community

<div class="body">

- <span id="n-GMOD-News">[GMOD News](../GMOD_News)</span>
- <span id="n-Training-.2F-Outreach">[Training /
  Outreach](../Training_and_Outreach)</span>
- <span id="n-Support">[Support](../Support)</span>
- <span id="n-GMOD-Promotion">[GMOD Promotion](../GMOD_Promotion)</span>
- <span id="n-Meetings">[Meetings](../Meetings)</span>
- <span id="n-Calendar">[Calendar](../Calendar)</span>

</div>

</div>

<div id="p-tb" class="portal" role="navigation"
aria-labelledby="p-tb-label">

### Tools

<div class="body">


- <span id="t-smwbrowselink"><a href="../Special:Browse/GBrowse-2FUploading_Wiggle_Tracks"
  rel="smw-browse">Browse properties</a></span>
- <span id="t-pdf">[Print as
  PDF](http://gmod.org/mediawiki/index.php?title=Special:PdfPrint&page=GBrowse/Uploading_Wiggle_Tracks)</span>

</div>

</div>

</div>

</div>

<div id="footer" role="contentinfo">

- <span id="footer-info-lastmod">Last updated at 21:22 on 25 April
  2013.</span>
- <span id="footer-info-viewcount">123,320 page views.</span>
- <span id="footer-info-copyright">Content is available under
  <a href="http://www.gnu.org/licenses/fdl-1.3.html" class="external"
  rel="nofollow">a GNU Free Documentation License</a> unless otherwise
  noted.</span>

<!-- -->

- <span id="footer-places-about">[About
  GMOD](../GMOD:About "GMOD:About")</span>

<!-- -->

- <span id="footer-copyrightico">[<img src="http://www.gnu.org/graphics/gfdl-logo-small.png" width="88"
  height="31" alt="a GNU Free Documentation License" />](http://www.gnu.org/licenses/fdl-1.3.html)</span>
- <span id="footer-poweredbyico">[<img
  src="../../mediawiki/skins/common/images/poweredby_mediawiki_88x31.png"
  width="88" height="31" alt="Powered by MediaWiki" />](http://www.mediawiki.org/)
  [<img
  src="../../mediawiki/extensions/SemanticMediaWiki/resources/images/smw_button.png"
  width="88" height="31" alt="Powered by Semantic MediaWiki" />](https://www.semantic-mediawiki.org/wiki/Semantic_MediaWiki)</span>

<div style="clear:both">

</div>

</div>
