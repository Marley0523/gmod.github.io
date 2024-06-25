<div id="mw-page-base" class="noprint">

</div>

<div id="mw-head-base" class="noprint">

</div>

<div id="content" class="mw-body" role="main">

<span id="top"></span>

<div id="mw-js-message" style="display:none;">

</div>



# <span dir="auto">GBrowse syn Help</span>

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

[GBrowse_syn](GBrowse_syn.1 "GBrowse syn") is a
[GBrowse](GBrowse.1 "GBrowse") based
<a href="Synteny" class="mw-redirect" title="Synteny">synteny</a>
viewer. This page provides help on using GBrowse_syn. See the
[GBrowse_syn](GBrowse_syn.1 "GBrowse syn") page for other information on
GBrowse_syn.

<div id="toc" class="toc">

<div id="toctitle">

## Contents

</div>

- [<span class="tocnumber">1</span> <span class="toctext">Search
  Section</span>](#Search_Section)
  - [<span class="tocnumber">1.1</span>
    <span class="toctext">Landmark</span>](#Landmark)
  - [<span class="tocnumber">1.2</span> <span class="toctext">Reference
    Species</span>](#Reference_Species)
  - [<span class="tocnumber">1.3</span> <span class="toctext">Aligned
    Species</span>](#Aligned_Species)
  - [<span class="tocnumber">1.4</span> <span class="toctext">Data
    Source</span>](#Data_Source)
  - [<span class="tocnumber">1.5</span> <span class="toctext">Display
    Mode</span>](#Display_Mode)
- [<span class="tocnumber">2</span> <span class="toctext">Display
  Settings</span>](#Display_Settings)
  - [<span class="tocnumber">2.1</span> <span class="toctext">Image
    Widths</span>](#Image_Widths)
  - [<span class="tocnumber">2.2</span> <span class="toctext">Image
    Options</span>](#Image_Options)
    - [<span class="tocnumber">2.2.1</span> <span class="toctext">Chain
      Alignments</span>](#Chain_Alignments)
    - [<span class="tocnumber">2.2.2</span> <span class="toctext">Flip
      Minus Strand Panels</span>](#Flip_Minus_Strand_Panels)
    - [<span class="tocnumber">2.2.3</span> <span class="toctext">Grid
      Lines</span>](#Grid_Lines)
    - [<span class="tocnumber">2.2.4</span>
      <span class="toctext">Edges</span>](#Edges)
    - [<span class="tocnumber">2.2.5</span>
      <span class="toctext">Shading</span>](#Shading)

</div>

# <span id="Search_Section" class="mw-headline">Search Section</span>

<a href="File:GBS_Search_Section.png" class="image"><img
src="../mediawiki/images/c/cb/GBS_Search_Section.png"
class="thumbborder" width="1077" height="149"
alt="GBS Search Section.png" /></a>

## <span id="Landmark" class="mw-headline">Landmark</span>

<a href="File:GBS_Landmark.png" class="image"><img
src="../mediawiki/images/6/67/GBS_Landmark.png" class="thumbborder"
width="308" height="41" alt="GBS Landmark.png" /></a>

- The landmark input box accepts segment labels in the form:

<!-- -->

    reference sequence:start..end

- In some cases, gene names and other landmarks can also be entered.
  Support for searching other classes depends on the configuration for
  the species' data source.
- Note, make sure you have selected the correct reference species before
  clicking the 'Search' button.

## <span id="Reference_Species" class="mw-headline">Reference Species</span>

<a href="File:GBS_ref_Species.png" class="image"><img
src="../mediawiki/images/7/71/GBS_ref_Species.png" class="thumbborder"
width="168" height="44" alt="GBS ref Species.png" /></a>

- This is the species that occupies the center panel in the alignment
  display.
- Alignments for other species are shown with reference to this
  coordinate system.
- Select the species from the pull-down menu and check boxes (see below)
  to select which species should be aligned to the reference sequence.

## <span id="Aligned_Species" class="mw-headline">Aligned Species</span>

<a href="File:GBS_aln_Species.png" class="image"><img
src="../mediawiki/images/d/d0/GBS_aln_Species.png" class="thumbborder"
width="423" height="43" alt="GBS aln Species.png" /></a>

- Configured species (except for the reference species) for the selected
  data source will be listed here.
- By checking each box, you indicate that alignments for this species,
  if available, should be displayed relative to the reference species.

## <span id="Data_Source" class="mw-headline">Data Source</span>

<a href="File:GBS_Datasource.png" class="image"><img
src="../mediawiki/images/2/25/GBS_Datasource.png" class="thumbborder"
width="249" height="36" alt="GBS Datasource.png" /></a>

- This pull-down menu lists all available data sets configured for the
  synteny browser.
- Each item in this list corresponds to a ***sourcename.synconf***
  configuration file.
- If only one data source is available this menu will not appear.

## <span id="Display_Mode" class="mw-headline">Display Mode</span>

<a href="File:GBS_Display_Mode1.png" class="image"><img
src="../mediawiki/images/8/8f/GBS_Display_Mode1.png" class="thumbborder"
width="419" height="43" alt="GBS Display Mode1.png" /></a>   <a href="File:GBS_Display_Mode2.png" class="image"><img
src="../mediawiki/images/7/76/GBS_Display_Mode2.png" class="thumbborder"
width="516" height="43" alt="GBS Display Mode2.png" /></a>

- The default display mode shows the reference species plus two aligned
  species per panel and repeats the display panel as many times as
  required to display all aligned species relative to the reference
  species.
  - This mode is best suited to displaying all sequences on roughly the
    same scale.
- The other display mode is a summary view that shows all species in a
  single panel.
- The display mode can be toggled between expanded and compact by
  clicking the link shown above or via a pull-down menu on the "Display
  Settings" section

<div class="thumb tleft">

<div class="thumbinner" style="width:802px;">

<a href="File:GBS_expanded.png" class="image"><img
src="../mediawiki/images/thumb/e/e3/GBS_expanded.png/800px-GBS_expanded.png"
class="thumbimage"
srcset="../mediawiki/images/e/e3/GBS_expanded.png 1.5x, ../mediawiki/images/e/e3/GBS_expanded.png 2x"
width="800" height="416" /></a>

<div class="thumbcaption">

<div class="magnify">

<a href="File:GBS_expanded.png" class="internal" title="Enlarge"><img
src="../mediawiki/skins/common/images/magnify-clip.png" width="15"
height="11" /></a>

</div>

Display mode: Refence species plus two aligned species/panel; repaeted
until all aligned species are shown

</div>

</div>

</div>

<div class="thumb tleft">

<div class="thumbinner" style="width:802px;">

<a href="File:GBS_compact.png" class="image"><img
src="../mediawiki/images/thumb/f/f3/GBS_compact.png/800px-GBS_compact.png"
class="thumbimage"
srcset="../mediawiki/images/f/f3/GBS_compact.png 1.5x, ../mediawiki/images/f/f3/GBS_compact.png 2x"
width="800" height="500" /></a>

<div class="thumbcaption">

<div class="magnify">

<a href="File:GBS_compact.png" class="internal" title="Enlarge"><img
src="../mediawiki/skins/common/images/magnify-clip.png" width="15"
height="11" /></a>

</div>

Display mode: All species on a single panel

</div>

</div>

</div>

  

# <span id="Display_Settings" class="mw-headline">Display Settings</span>

<a href="File:GBS_Display_Settings.png" class="image"><img
src="../mediawiki/images/thumb/a/a1/GBS_Display_Settings.png/800px-GBS_Display_Settings.png"
class="thumbborder"
srcset="../mediawiki/images/a/a1/GBS_Display_Settings.png 1.5x, ../mediawiki/images/a/a1/GBS_Display_Settings.png 2x"
width="800" height="72" alt="GBS Display Settings.png" /></a>

## <span id="Image_Widths" class="mw-headline">Image Widths</span>

<a href="File:GBS_widths.png" class="image"><img
src="../mediawiki/images/f/f3/GBS_widths.png" class="thumbborder"
width="405" height="40" alt="GBS widths.png" /></a>

- the total width of the displayed reference sequence panel.

## <span id="Image_Options" class="mw-headline">Image Options</span>

### <span id="Chain_Alignments" class="mw-headline">Chain Alignments</span>

<a href="File:GBS_chain.png" class="image"><img
src="../mediawiki/images/6/6b/GBS_chain.png" class="thumbborder"
width="222" height="27" alt="GBS chain.png" /></a>

- GBrowse_syn uses a dynamic programming algorithm to assembled aligned
  regions into chains.
  - If alignments are on the same strand on the same reference sequence
    and their coordinates increase (or decrease) monotonically, they are
    assembled into a meta-alignment, which is indicated by dashed
    connectors.
  - Chained alignments may have other alignments in the intervening
    gaps.
- This feature is useful for displaying small rearrangements, such as
  translocations, nested inversions, etc.

<div class="thumb tleft">

<div class="thumbinner" style="width:802px;">

<a href="File:GBS_chained.png" class="image"><img
src="../mediawiki/images/thumb/9/95/GBS_chained.png/800px-GBS_chained.png"
class="thumbimage"
srcset="../mediawiki/images/9/95/GBS_chained.png 1.5x, ../mediawiki/images/9/95/GBS_chained.png 2x"
width="800" height="429" /></a>

<div class="thumbcaption">

<div class="magnify">

<a href="File:GBS_chained.png" class="internal" title="Enlarge"><img
src="../mediawiki/skins/common/images/magnify-clip.png" width="15"
height="11" /></a>

</div>

Chained aligments

</div>

</div>

</div>

  
<a href="File:GBS_nochain.png" class="image"><img
src="../mediawiki/images/7/79/GBS_nochain.png" class="thumbborder"
width="221" height="28" alt="GBS nochain.png" /></a>

<div class="thumb tleft">

<div class="thumbinner" style="width:802px;">

<a href="File:GBS_unchained.png" class="image"><img
src="../mediawiki/images/thumb/e/ec/GBS_unchained.png/800px-GBS_unchained.png"
class="thumbimage"
srcset="../mediawiki/images/e/ec/GBS_unchained.png 1.5x, ../mediawiki/images/e/ec/GBS_unchained.png 2x"
width="800" height="448" /></a>

<div class="thumbcaption">

<div class="magnify">

<a href="File:GBS_unchained.png" class="internal" title="Enlarge"><img
src="../mediawiki/skins/common/images/magnify-clip.png" width="15"
height="11" /></a>

</div>

Unchained aligments

</div>

</div>

</div>

  

### <span id="Flip_Minus_Strand_Panels" class="mw-headline">Flip Minus Strand Panels</span>

<a href="File:GBS_flip.png" class="image"><img
src="../mediawiki/images/1/1d/GBS_flip.png" class="thumbborder"
width="274" height="30" alt="GBS flip.png" /></a>

- Choosing the flip option makes it easier directly compare the aligned
  regions.
- Otherwise, in alignments is on the negative strand, relative to the
  reference, the grid lines and shaded polygon will cross-over to
  indicate inversion
- Unless the flip option is turned off, the decision to flip a panel is
  determined by the number of (+) vs (-) aligned base pairs.

<div class="thumb tleft">

<div class="thumbinner" style="width:802px;">

<a href="File:GBS_flipped.png" class="image"><img
src="../mediawiki/images/thumb/b/b5/GBS_flipped.png/800px-GBS_flipped.png"
class="thumbimage"
srcset="../mediawiki/images/b/b5/GBS_flipped.png 1.5x, ../mediawiki/images/b/b5/GBS_flipped.png 2x"
width="800" height="367" /></a>

<div class="thumbcaption">

<div class="magnify">

<a href="File:GBS_flipped.png" class="internal" title="Enlarge"><img
src="../mediawiki/skins/common/images/magnify-clip.png" width="15"
height="11" /></a>

</div>

Reverse strand panel (*C. briggsae*) flipped to facilitate direct
comparison of gene order

</div>

</div>

</div>

<div class="thumb tleft">

<div class="thumbinner" style="width:802px;">

<a href="File:GBS_unflipped.png" class="image"><img
src="../mediawiki/images/thumb/1/18/GBS_unflipped.png/800px-GBS_unflipped.png"
class="thumbimage"
srcset="../mediawiki/images/1/18/GBS_unflipped.png 1.5x, ../mediawiki/images/1/18/GBS_unflipped.png 2x"
width="800" height="367" /></a>

<div class="thumbcaption">

<div class="magnify">

<a href="File:GBS_unflipped.png" class="internal" title="Enlarge"><img
src="../mediawiki/skins/common/images/magnify-clip.png" width="15"
height="11" /></a>

</div>

Reverse strand panel keo in original orientation

</div>

</div>

</div>

  

### <span id="Grid_Lines" class="mw-headline">Grid Lines</span>

<a href="File:GBS_lines.png" class="image"><img
src="../mediawiki/images/2/2e/GBS_lines.png" class="thumbborder"
width="168" height="30" alt="GBS lines.png" /></a>

- Grid lines use insertion/deletion data from the multiple sequence
  alignments to provide a visual representation of sequence loss or gain
- This feature is useful because it provides fine-grained information
  about the underlying sequence changes within aligned regions.
- Every fifth line is thicker to provide a visual cue help trace the
  lines between species.

<div class="thumb tleft">

<div class="thumbinner" style="width:802px;">

<a href="File:GBS_noglines.png" class="image"><img
src="../mediawiki/images/thumb/a/a1/GBS_noglines.png/800px-GBS_noglines.png"
class="thumbimage"
srcset="../mediawiki/images/a/a1/GBS_noglines.png 1.5x, ../mediawiki/images/a/a1/GBS_noglines.png 2x"
width="800" height="220" /></a>

<div class="thumbcaption">

<div class="magnify">

<a href="File:GBS_noglines.png" class="internal" title="Enlarge"><img
src="../mediawiki/skins/common/images/magnify-clip.png" width="15"
height="11" /></a>

</div>

Alignment of *C. elegans* and *C. remanei*, showing the R193.2 gene

</div>

</div>

</div>

<div class="thumb tleft">

<div class="thumbinner" style="width:802px;">

<a href="File:GBS_glines.png" class="image"><img
src="../mediawiki/images/thumb/0/05/GBS_glines.png/800px-GBS_glines.png"
class="thumbimage"
srcset="../mediawiki/images/0/05/GBS_glines.png 1.5x, ../mediawiki/images/0/05/GBS_glines.png 2x"
width="800" height="220" /></a>

<div class="thumbcaption">

<div class="magnify">

<a href="File:GBS_glines.png" class="internal" title="Enlarge"><img
src="../mediawiki/skins/common/images/magnify-clip.png" width="15"
height="11" /></a>

</div>

The same alignment with grid-lines turned on. Note the large gain/loss
of intron sequence

</div>

</div>

</div>

  

### <span id="Edges" class="mw-headline">Edges</span>

<a href="File:GBS_edges.png" class="image"><img
src="../mediawiki/images/a/aa/GBS_edges.png" class="thumbborder"
width="142" height="32" alt="GBS edges.png" /></a>

- This option is on by default, it outlines the polygons that connect
  aligned blocks

<div class="thumb tleft">

<div class="thumbinner" style="width:802px;">

<a href="File:GBS_edgeson.png" class="image"><img
src="../mediawiki/images/thumb/9/90/GBS_edgeson.png/800px-GBS_edgeson.png"
class="thumbimage"
srcset="../mediawiki/images/9/90/GBS_edgeson.png 1.5x, ../mediawiki/images/9/90/GBS_edgeson.png 2x"
width="800" height="400" /></a>

<div class="thumbcaption">

<div class="magnify">

<a href="File:GBS_edgeson.png" class="internal" title="Enlarge"><img
src="../mediawiki/skins/common/images/magnify-clip.png" width="15"
height="11" /></a>

</div>

An alignment view with edges on grid-lines and shading off

</div>

</div>

</div>

  

### <span id="Shading" class="mw-headline">Shading</span>

<a href="File:GBS_shading.png" class="image"><img
src="../mediawiki/images/a/a9/GBS_shading.png" class="thumbborder"
width="158" height="34" alt="GBS shading.png" /></a>

<div class="thumb tleft">

<div class="thumbinner" style="width:802px;">

<a href="File:GBS_shadingon.png" class="image"><img
src="../mediawiki/images/thumb/d/db/GBS_shadingon.png/800px-GBS_shadingon.png"
class="thumbimage"
srcset="../mediawiki/images/d/db/GBS_shadingon.png 1.5x, ../mediawiki/images/d/db/GBS_shadingon.png 2x"
width="800" height="400" /></a>

<div class="thumbcaption">

<div class="magnify">

<a href="File:GBS_shadingon.png" class="internal" title="Enlarge"><img
src="../mediawiki/skins/common/images/magnify-clip.png" width="15"
height="11" /></a>

</div>

An alignment view with shading on and grid-lines and edges off

</div>

</div>

</div>

  

</div>

<div class="printfooter">

Retrieved from
"<http://gmod.org/mediawiki/index.php?title=GBrowse_syn_Help&oldid=9100>"

</div>

<div id="catlinks" class="catlinks">

<div id="mw-normal-catlinks" class="mw-normal-catlinks">

[Category](Special:Categories "Special:Categories"):

- [GBrowse syn](Category:GBrowse_syn "Category:GBrowse syn")

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

- <span id="ca-nstab-main"><a href="GBrowse_syn_Help" accesskey="c"
  title="View the content page [c]">Page</a></span>
- <span id="ca-talk"><a
  href="http://gmod.org/mediawiki/index.php?title=Talk:GBrowse_syn_Help&amp;action=edit&amp;redlink=1"
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
- <span id="n-View-all-pages">[View all pages](Special:AllPages)</span>

</div>

</div>

<div id="p-Documentation" class="portal" role="navigation"
aria-labelledby="p-Documentation-label">

### Documentation

<div class="body">

- <span id="n-Overview">[Overview](Overview)</span>
- <span id="n-FAQs">[FAQs](Category:FAQ)</span>
- <span id="n-HOWTOs">[HOWTOs](Category:HOWTO)</span>
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


- <span id="t-smwbrowselink"><a href="Special:Browse/GBrowse_syn_Help" rel="smw-browse">Browse
  properties</a></span>
- <span id="t-pdf">[Print as
  PDF](http://gmod.org/mediawiki/index.php?title=Special:PdfPrint&page=GBrowse_syn_Help)</span>

</div>

</div>

</div>

</div>

<div id="footer" role="contentinfo">

- <span id="footer-info-lastmod">Last updated at 12:40 on 22 August
  2009.</span>
<!-- - <span id="footer-info-viewcount">163,154 page views.</span> -->
- <span id="footer-info-copyright">Content is available under
  <a href="http://www.gnu.org/licenses/fdl-1.3.html" class="external"
  rel="nofollow">a GNU Free Documentation License</a> unless otherwise
  noted.</span>

<!-- -->

- <span id="footer-places-about">[About
  GMOD](GMOD:About "GMOD:About")</span>

<!-- -->

- <span id="footer-copyrightico">[<img src="http://www.gnu.org/graphics/gfdl-logo-small.png" width="88"
  height="31" alt="a GNU Free Documentation License" />](http://www.gnu.org/licenses/fdl-1.3.html)</span>


<div style="clear:both">

</div>

</div>
