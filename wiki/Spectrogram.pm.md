<div id="mw-page-base" class="noprint">

</div>

<div id="mw-head-base" class="noprint">

</div>

<div id="content" class="mw-body" role="main">

<span id="top"></span>

<div id="mw-js-message" style="display:none;">

</div>



# <span dir="auto">Spectrogram.pm</span>

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

Spectrogram.pm is a [GBrowse](GBrowse.1 "GBrowse") plugin written by
[Sheldon McKay](User:Mckays "User:Mckays"). It draws DNA spectrograms of
DNA of digitized DNA sequences using techniques borrowed from the
digital signal processing world. Graphical rendering is accomplished
using the HSV color space. The color of the spot on the spectrogram
corresponds to the dominant nucleotide at that "frequency" and position
and the intensity corresponds to the strength of the signal. DNA
spectrograms reveal non-random sequence composition, the two most common
examples of which are coding DNA and repeat sequences.

- Coding DNA has a signal due the the non-random occurence of
  nulceotides in codons and appear as a line in the spectrogram with a
  period of 3.
- Repeats have a characteristic ladder like appearance in the
  spectrogram.
- Follow this link for
  <span class="pops"><a href="http://www.hindawi.com/journals/asp/2004/790248.abs.html"
  class="external text" rel="nofollow">background reading of digital
  signal processing of DNA</a></span>

  
<a href="File:Spec1.png" class="image"><img
src="../mediawiki/images/3/3d/Spec1.png" class="thumbborder" width="858"
height="450" alt="Spec1.png" /></a>

<a href="File:Spec2.png" class="image"><img
src="../mediawiki/images/9/9e/Spec2.png" class="thumbborder" width="877"
height="449" alt="Spec2.png" /></a>

<a href="File:Spec3.png" class="image"><img
src="../mediawiki/images/3/39/Spec3.png" class="thumbborder" width="869"
height="538" alt="Spec3.png" /></a>

## <span id="How_is_the_DNA_spectrogram_calculated.3F" class="mw-headline">How is the DNA spectrogram calculated?</span>

A sliding window of variable size and overlap is used to calculate the
spectrogram, which is displayed graphically as a track in the genome
browser. Each window is a subsegment of DNA and corresponds to a
'column' in the graphical display of the spectrogram. The window slides
along the sequence, from left to right, at a set increment, which
corresponds to the column width.

The spectrogram refers collectively to all of the rows and columns seen
in the graphical display.

The spectrogram has n rows, where n is the number of bases in the
window. Each row corresponds to a discrete 'frequency' from 0 -\> n-1.

An arguably more intuitive way to relate this to DNA sequence to
calculate the 'period' (n/frequency\*2). If we see a feature in the
spectrogram at period x, there is a non-random structure with a
periodicity of x nucleotides. The chief example of this would be coding
DNA at period 3.

The DNA sequence is converted from analog to digital by creating four
binary indicator sequences:

              G A T C C T C T G A T T C C A A
            G 1 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0
            A 0 1 0 0 0 0 0 0 0 1 0 0 0 0 1 1
            T 0 0 1 0 0 1 0 1 0 0 1 1 0 0 0 0
            C 0 0 0 1 1 0 1 0 0 0 0 0 1 1 0 0

  
The magnitude of the discrete fourier transform (DFT) is calculated
seperately for each of the four indicator sequences. The algorithm used
is the fast fourier transfrom (FFT; via Math::FFT), which is much faster
than the original DFT algorithm but is limited in that only base2
numbers (128, 256, 512, etc) can be used for window sizes. This is
necessary to make the spectrogram calculation fast enough for real-time
use.

For graphical rendering, each transformed sequence is assigned a color
(A=blue; T=red; C=green; G=yellow). The colors for each base are
superimposed on the image. In a given spot on the spectrogram, the
brightness corresponds to the magnitide (signal intensity) and the color
corresponds to the dominant base at that frequency/period. If no single
base predominates, an intermediate color is calculated based on the
relative magnitudes.

The spectrogram is visible as a track in the generic genome browser.
Please note that the calculations and graphical rendering are
computationally intensive, so the image will take a while to load,
especially with larger sequence regions and/or small increments for the
sliding window.

After you have launched this plugin, the spectrogram will continue to be
calculated in the main gbrowse display until you turn off the
'Spectrogram' track.

The plugin was written by Sheldon McKay (mckays@cshl.edu)

</div>

<div class="printfooter">

Retrieved from
"<http://gmod.org/mediawiki/index.php?title=Spectrogram.pm&oldid=17658>"

</div>

<div id="catlinks" class="catlinks">

<div id="mw-normal-catlinks" class="mw-normal-catlinks">

[Categories](Special:Categories "Special:Categories"):

- [GBrowse](Category:GBrowse "Category:GBrowse")
- [GBrowse Plugins](Category:GBrowse_Plugins "Category:GBrowse Plugins")
- [Pages with problems or
  questions](Category:Pages_with_problems_or_questions "Category:Pages with problems or questions")

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

- <span id="ca-nstab-main"><a href="Spectrogram.pm" accesskey="c"
  title="View the content page [c]">Page</a></span>
- <span id="ca-talk"><a
  href="http://gmod.org/mediawiki/index.php?title=Talk:Spectrogram.pm&amp;action=edit&amp;redlink=1"
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

- <span id="t-whatlinkshere"><a href="Special:WhatLinksHere/Spectrogram.pm" accesskey="j"
  title="A list of all wiki pages that link here [j]">What links here</a></span>
- <span id="t-recentchangeslinked"><a href="Special:RecentChangesLinked/Spectrogram.pm" accesskey="k"
  title="Recent changes in pages linked from this page [k]">Related
  changes</a></span>
- <span id="t-specialpages"><a href="Special:SpecialPages" accesskey="q"
  title="A list of all special pages [q]">Special pages</a></span>
- <span id="t-print"><a
  href="http://gmod.org/mediawiki/index.php?title=Spectrogram.pm&amp;printable=yes"
  rel="alternate" accesskey="p"
  title="Printable version of this page [p]">Printable version</a></span>
- <span id="t-permalink">[Permanent
  link](http://gmod.org/mediawiki/index.php?title=Spectrogram.pm&oldid=17658 "Permanent link to this revision of the page")</span>
- <span id="t-info">[Page
  information](http://gmod.org/mediawiki/index.php?title=Spectrogram.pm&action=info)</span>
- <span id="t-smwbrowselink"><a href="Special:Browse/Spectrogram.pm" rel="smw-browse">Browse
  properties</a></span>
- <span id="t-pdf">[Print as
  PDF](http://gmod.org/mediawiki/index.php?title=Special:PdfPrint&page=Spectrogram.pm)</span>

</div>

</div>

</div>

</div>

<div id="footer" role="contentinfo">

- <span id="footer-info-lastmod">Last updated at 14:21 on 4 May
  2011.</span>
- <span id="footer-info-viewcount">25,343 page views.</span>
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
- <span id="footer-poweredbyico">[<img
  src="../mediawiki/skins/common/images/poweredby_mediawiki_88x31.png"
  width="88" height="31" alt="Powered by MediaWiki" />](http://www.mediawiki.org/)
  [<img
  src="../mediawiki/extensions/SemanticMediaWiki/resources/images/smw_button.png"
  width="88" height="31" alt="Powered by Semantic MediaWiki" />](https://www.semantic-mediawiki.org/wiki/Semantic_MediaWiki)</span>

<div style="clear:both">

</div>

</div>
