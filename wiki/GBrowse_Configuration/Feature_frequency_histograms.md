<div id="mw-page-base" class="noprint">

</div>

<div id="mw-head-base" class="noprint">

</div>

<div id="content" class="mw-body" role="main">

<span id="top"></span>

<div id="mw-js-message" style="display:none;">

</div>



# <span dir="auto">GBrowse Configuration/Feature frequency histograms</span>

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

This article describes **feature frequency histograms** and how to
configure them in GBrowse.

*For the main GBrowse configuration article, see:
<a href="../GBrowse_Configuration" class="mw-redirect"
title="GBrowse Configuration">GBrowse Configuration</a>.*

## <span id="Generating_Feature_Frequency_Histograms" class="mw-headline">Generating Feature Frequency Histograms</span>

*Note: this applies to GFF2 databases only and needs to be rewritten
slightly for GFF3*

With a little bit of additional effort, you can set one or more tracks
up to display a density histogram of the features contained within the
track. For example, the human data source in the
<a href="http://www.wormbase.org/db/seq/gbrowse/human"
class="external text" rel="nofollow">GBrowse demo</a> uses density
histograms in the chromosomal overview. In addition, when the features
in the SNP track become too dense to view, this track converts into a
histogram. To see this in action, turn on the SNP track and then zoom
out beyond 150K - Link plz?

There are four steps for making histograms:

1.  generate the density data using the `bp_generate_histogram.pl`
    script.
2.  load the density data using `bp_load_gff.pl` or
    `bp_fast_load_gff.pl`.
3.  declare a density aggregator to the gbrowse configuration file
4.  add the density aggregator to the appropriate track in the
    configuration file.

The first step is to generate the density data. Currently this is done
by generating a GFF file containing a set of "bin" feature types. Use
the `bp_generate_histogram.pl` script to do this. You will find it in
[BioPerl](../BioPerl "BioPerl") under the `scripts/Bio-DB-GFF`
directory.

Assuming that your database is named "dicty", you have a feature named
SNP, and you wish to generate a density distribution across 10,000 bp
bins, here is the command you would use:

     bp_generate_histogram.pl -merge -d dicty -bin 10000 SNP >snp_density.gff

This is saying to use the "dicty" database (-d) option, to use 10,000 bp
bins (the -bin option) and to count the occurrences of the SNP feature
throughout the database. In addition, the -merge option says to merge
all types of SNPs into a single bin. Otherwise they will be stratified
by their source. The resulting GFF file contains a series of entries
like these ones:

     Chr1  SNP bin 1     10000 49 + . bin Chr1:SNP
     Chr1  SNP bin 10001 20000 29 + . bin Chr1:SNP

What this is saying is that there are now a series of pseudo-features of
type "bin:SNP" that occupy successive 10,000 bp regions of the genome.
The score field contains the number of times a SNP was seen in that bin.

You'll now load this file using `bp_load_gff.pl` or
`bp_fast_load_gff.pl`:

     bp_load_gff.pl -d dicty snp_density.gff

The next step is to tell GBrowse how to use this information. You do
this by creating a new aggregator for the SNP density information. Open
the GBrowse configuration file and find the aggregators option. Add a
new aggregator that looks like this:

     aggregators = snp_density{bin:SNP}

This is declaring a new feature named "snp_density" that is composed of
subparts of type bin:SNP.

The last step is to declare a track for the density information. You
will use the "xyplot" glyph, which can draw a number of graphs,
including histograms. To add the SNP density information as a static
track in the overview, create a section like this one:

    [SNP:overview]
    feature       = snp_density
    glyph         = xyplot
    graph_type    = boxes
    scale         = right
    bgcolor       = red
    fgcolor       = red
    height        = 20
    key           = SNP Density

This article describes **glyphs** and **glyph configuration options** in
GBrowse.

*For the main GBrowse configuration article, see:
<a href="../GBrowse_Configuration" class="mw-redirect"
title="GBrowse Configuration">GBrowse Configuration</a>.*

  

This is declaring a new constant track in the overview named "SNP
Density." The feature is "snp_density", corresponding to the aggregator
declared earlier. The glyph is "xyplot" using the graph type of "boxes"
to generate a column graph.

To set up a track so that the histogram appears when the user zooms out
beyond 100,000 bp but shows the detailed information at higher
magnifications, generate two track sections like these:

     [SNPs]
     feature       = snp
     glyph         = triangle
     point         = 1
     orient        = N
     height        = 6
     bgcolor       = blue
     fgcolor       = blue
     key           = SNPs

     [SNPs:100000]
     feature       = snp_density
     glyph         = xyplot
     graph_type    = boxes
     scale         = right

The first track section sets up the defaults for the SNP track. SNPs are
represented as blue triangles pointing North. The second track
declaration declares that when the user zooms out to over 100K base
pairs, GBrowse should display the snp_density feature using the xyplot
glyph.

</div>

<div class="printfooter">

Retrieved from
"<http://gmod.org/mediawiki/index.php?title=GBrowse_Configuration/Feature_frequency_histograms&oldid=13495>"

</div>

<div id="catlinks" class="catlinks">

<div id="mw-normal-catlinks" class="mw-normal-catlinks">

[Categories](../Special:Categories "Special:Categories"):

- [GBrowse](../Category:GBrowse "Category:GBrowse")
- [HOWTO](../Category:HOWTO "Category:HOWTO")
- [Configuration](../Category:Configuration "Category:Configuration")

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

- <span id="ca-nstab-main"><a href="Feature_frequency_histograms" accesskey="c"
  title="View the content page [c]">Page</a></span>
- <span id="ca-talk"><a
  href="http://gmod.org/mediawiki/index.php?title=Talk:GBrowse_Configuration/Feature_frequency_histograms&amp;action=edit&amp;redlink=1"
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

<div id="p-views" class="vectorTabs" role="navigation"
aria-labelledby="p-views-label">

### Views

- <span id="ca-view">[Read](Feature_frequency_histograms)</span>
- <span id="ca-viewsource"><a
  href="http://gmod.org/mediawiki/index.php?title=GBrowse_Configuration/Feature_frequency_histograms&amp;action=edit"
  accesskey="e" title="This page is protected.
  You can view its source [e]">View source</a></span>
- <span id="ca-history"><a
  href="http://gmod.org/mediawiki/index.php?title=GBrowse_Configuration/Feature_frequency_histograms&amp;action=history"
  accesskey="h" title="Past revisions of this page [h]">View history</a></span>

</div>

<div id="p-cactions" class="vectorMenu emptyPortlet" role="navigation"
aria-labelledby="p-cactions-label">

### Actions[](#)

<div class="menu">

</div>

</div>

<div id="p-search" role="search">

### Search

<div id="simpleSearch">

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

- <span id="t-whatlinkshere"><a
  href="../Special:WhatLinksHere/GBrowse_Configuration/Feature_frequency_histograms"
  accesskey="j" title="A list of all wiki pages that link here [j]">What
  links here</a></span>
- <span id="t-recentchangeslinked"><a
  href="../Special:RecentChangesLinked/GBrowse_Configuration/Feature_frequency_histograms"
  accesskey="k"
  title="Recent changes in pages linked from this page [k]">Related
  changes</a></span>
- <span id="t-specialpages"><a href="../Special:SpecialPages" accesskey="q"
  title="A list of all special pages [q]">Special pages</a></span>
- <span id="t-print"><a
  href="http://gmod.org/mediawiki/index.php?title=GBrowse_Configuration/Feature_frequency_histograms&amp;printable=yes"
  rel="alternate" accesskey="p"
  title="Printable version of this page [p]">Printable version</a></span>
- <span id="t-permalink">[Permanent
  link](http://gmod.org/mediawiki/index.php?title=GBrowse_Configuration/Feature_frequency_histograms&oldid=13495 "Permanent link to this revision of the page")</span>
- <span id="t-info">[Page
  information](http://gmod.org/mediawiki/index.php?title=GBrowse_Configuration/Feature_frequency_histograms&action=info)</span>
- <span id="t-smwbrowselink"><a
  href="../Special:Browse/GBrowse_Configuration-2FFeature_frequency_histograms"
  rel="smw-browse">Browse properties</a></span>
- <span id="t-pdf">[Print as
  PDF](http://gmod.org/mediawiki/index.php?title=Special:PdfPrint&page=GBrowse_Configuration/Feature_frequency_histograms)</span>

</div>

</div>

</div>

</div>

<div id="footer" role="contentinfo">

- <span id="footer-info-lastmod">Last updated at 10:34 on 9 July
  2010.</span>
- <span id="footer-info-viewcount">21,142 page views.</span>
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
