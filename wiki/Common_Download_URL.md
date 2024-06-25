<div id="mw-page-base" class="noprint">

</div>

<div id="mw-head-base" class="noprint">

</div>

<div id="content" class="mw-body" role="main">

<span id="top"></span>

<div id="mw-js-message" style="display:none;">

</div>



# <span dir="auto">Standard URL</span>

<div id="bodyContent">

<div id="siteSub">

From GMOD

</div>

<div id="contentSub">

(Redirected from [Common Download
URL](http://gmod.org/mediawiki/index.php?title=Common_Download_URL&redirect=no "Common Download URL"))

</div>

<div id="jump-to-nav" class="mw-jump">

Jump to: [navigation](#mw-navigation), [search](#p-search)

</div>

<div id="mw-content-text" class="mw-content-ltr" lang="en" dir="ltr">

In order to simplify the retrieval of common datasets, the Generic Model
Organisms Database (GMOD) community has recommended a series of standard
URLs, or a common download URL. Each participating MOD has an index page
like the ones below, describing the species and datasets that are
available.

<div id="toc" class="toc">

<div id="toctitle">

## Contents

</div>

- [<span class="tocnumber">1</span> <span class="toctext">MOD Standard
  URL</span>](#MOD_Standard_URL)
- [<span class="tocnumber">2</span> <span class="toctext">About GMOD
  Standard URL</span>](#About_GMOD_Standard_URL)
- [<span class="tocnumber">3</span> <span class="toctext">Common /genome
  pages</span>](#Common_.2Fgenome_pages)
- [<span class="tocnumber">4</span> <span class="toctext">MOD
  Non-Standard URL</span>](#MOD_Non-Standard_URL)
- [<span class="tocnumber">5</span> <span class="toctext">See
  also</span>](#See_also)

</div>

# <span id="MOD_Standard_URL" class="mw-headline">MOD Standard URL</span>

| MOD | Standard URL | Description |
|----|----|----|
| <a href="http://www.wormbase.org/" class="external text"
rel="nofollow">WormBase</a> | <a href="http://www.wormbase.org/genome/" class="external free"
rel="nofollow">http://www.wormbase.org/genome/</a> | *Caenorhabditis elegans* and related nematodes |
| <a href="http://wfleabase.org/" class="external text"
rel="nofollow">wFleaBase</a> | <a href="http://wfleabase.org/genome/" class="external free"
rel="nofollow">http://wfleabase.org/genome/</a> | *Daphnia pulex* and related crustaceans |
| <a href="http://insects.eugenes.org/DroSpeGe/" class="external text"
rel="nofollow">DroSpeGe</a> | <a href="http://insects.eugenes.org/genome/" class="external free"
rel="nofollow">http://insects.eugenes.org/genome/</a> | Twelve *Drosophila* insect species genomes |

**Genome datasets available through the GMOD commom URL**

  

# <span id="About_GMOD_Standard_URL" class="mw-headline">About GMOD Standard URL</span>

This standard specifies the following URLs (all located under
*http://your.org/*). Display this HTML-formatted index page that
contains links to each of the species available through common URLs. See
also <a href="http://blog.gmod.org/workshops/2005/may/harris-050517.ppt"
class="external text" rel="nofollow">Todd Harris' powerpoint
presentation</a> given at the Spring, 2005 GMOD meeting. The uses for
these common URLs are two-fold:

- Keep it simple for scientists to guess where to find a genome, when
  they may be unfamiliar with the MOD website.
- Keep it standard for computists to program a long-lasting, computer
  parsable data URL, with no guesswork on spelling, and defined data
  formats.

  

| Standard URL | Description |
|----|----|
| /genome/Binomial_name | An index page for species "Binomial_name". This will be an HTML-format page containing links to each of the genome releases. |
| /genome/Binomial_name/release | Leads to index for the named release. It should be an HTML-format page containing links to each of the data sets described below. |
| /genome/Binomial_name/current | Leads to an index of the most current release, symbolic link style. |
| /genome/Binomial_name/current/dna | Returns a FASTA file containing big DNA fragments (e.g. chromosomes). MIME type is application/x-fasta. |
| /genome/Binomial_name/current/mrna | Returns a FASTA file containing spliced mRNA transcript sequences. MIME type is application/x-fasta. |
| /genome/Binomial_name/current/ncrna | Returns a FASTA file containing non-coding RNA sequences. MIME type is application/x-fasta. |
| /genome/Binomial_name/current/protein | Returns a FASTA file containing all the protein sequences known to be encoded by the genome. MIME type is application/x-fasta |
| /genome/Binomial_name/current/feature | Returns a GFF3 file describing genome annotations. MIME type is application/x-gff3. |

Other names for this: Common download URL, Common URL, Standard URL

  
*Note: MODs may optionally provide URLs in the short form of G_species
(eg C_elegans) as a convenience for users. This should be supplied in
addition to the full Binomial_name standard.*

# <span id="Common_.2Fgenome_pages" class="mw-headline">Common /genome pages</span>

These projects provide data information at /genome/, if not yet in the
common formats described below.

<table class="wikitable">
<caption><strong>Common /genome/ data pages</strong></caption>
<colgroup>
<col style="width: 33%" />
<col style="width: 33%" />
<col style="width: 33%" />
</colgroup>
<thead>
<tr class="header">
<th>MOD</th>
<th>Common URL</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><a href="http://www.medicago.org/" class="external text"
rel="nofollow">Medicago</a></td>
<td><a href="http://www.medicago.org/genome/" class="external free"
rel="nofollow">http://www.medicago.org/genome/</a></td>
<td><em>Medicago truncatula</em> plant genome</td>
</tr>
<tr class="even">
<td><a href="http://www.maizegdb.org/" class="external text"
rel="nofollow">MaizeGDB</a></td>
<td><a href="http://www.maizegdb.org/genome/" class="external free"
rel="nofollow">http://www.maizegdb.org/genome/</a></td>
<td><em>Maize</em> corn genome</td>
</tr>
<tr class="odd">
<td><a href="http://www.neurosporagenome.org/" class="external text"
rel="nofollow">Neurospora</a></td>
<td><a href="http://www.neurosporagenome.org/genome/"
class="external free"
rel="nofollow">http://www.neurosporagenome.org/genome/</a></td>
<td><em>Neurospora crassa</em></td>
</tr>
<tr class="even">
<td><a href="http://www.vectorbase.org/" class="external text"
rel="nofollow">Vectorbase</a></td>
<td><a href="http://agambiae.vectorbase.org/Genome/"
class="external free"
rel="nofollow">http://agambiae.vectorbase.org/Genome/</a><br />
<a href="http://aaegypti.vectorbase.org/Genome/" class="external free"
rel="nofollow">http://aaegypti.vectorbase.org/Genome/</a><br />
<a href="http://iscapularis.vectorbase.org/Genome/"
class="external free"
rel="nofollow">http://iscapularis.vectorbase.org/Genome/</a><br />
<a href="http://cpipiens.vectorbase.org/Genome/" class="external free"
rel="nofollow">http://cpipiens.vectorbase.org/Genome/</a><br />
<a href="http://phumanus.vectorbase.org/Genome/" class="external free"
rel="nofollow">http://phumanus.vectorbase.org/Genome/</a></td>
<td>Human vector insects genomes</td>
</tr>
</tbody>
</table>

**Common /genome/ data pages**

# <span id="MOD_Non-Standard_URL" class="mw-headline">MOD Non-Standard URL</span>

For those genome projects that haven't yet standardized their URLs there
is this site that lists what is available:

<a
href="http://wiki.geneontology.org/index.php/Reference_Genome_sequence_annotation"
class="external text" rel="nofollow">Reference Genomes</a>

# <span id="See_also" class="mw-headline">See also</span>

- [MOD](MOD "MOD")
- <a href="http://gmod.svn.sourceforge.net/viewvc/gmod/standard-urls"
  class="external text" rel="nofollow">standard-urls project in SVN</a>

</div>

<div class="printfooter">

Retrieved from
"<http://gmod.org/mediawiki/index.php?title=Standard_URL&oldid=9356>"

</div>

<div id="catlinks" class="catlinks">

<div id="mw-normal-catlinks" class="mw-normal-catlinks">

[Categories](Special:Categories "Special:Categories"):

- [GMOD Best
  Practices](Category:GMOD_Best_Practices "Category:GMOD Best Practices")
- [MOD User
  Interfaces](Category:MOD_User_Interfaces "Category:MOD User Interfaces")
- [WFleaBase](Category:WFleaBase "Category:WFleaBase")
- [WormBase](Category:WormBase "Category:WormBase")

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

- <span id="ca-nstab-main"><a href="Standard_URL" accesskey="c"
  title="View the content page [c]">Page</a></span>
- <span id="ca-talk"><a
  href="http://gmod.org/mediawiki/index.php?title=Talk:Standard_URL&amp;action=edit&amp;redlink=1"
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

<div id="p-search" role="search">

### Search

<div id="simpleSearch">

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

- <span id="t-whatlinkshere"><a href="Special:WhatLinksHere/Standard_URL" accesskey="j"
  title="A list of all wiki pages that link here [j]">What links here</a></span>
- <span id="t-recentchangeslinked"><a href="Special:RecentChangesLinked/Standard_URL" accesskey="k"
  title="Recent changes in pages linked from this page [k]">Related
  changes</a></span>
- <span id="t-specialpages"><a href="Special:SpecialPages" accesskey="q"
  title="A list of all special pages [q]">Special pages</a></span>
- <span id="t-print"><a
  href="http://gmod.org/mediawiki/index.php?title=Standard_URL&amp;printable=yes"
  rel="alternate" accesskey="p"
  title="Printable version of this page [p]">Printable version</a></span>
- <span id="t-permalink">[Permanent
  link](http://gmod.org/mediawiki/index.php?title=Standard_URL&oldid=9356 "Permanent link to this revision of the page")</span>
- <span id="t-info">[Page
  information](http://gmod.org/mediawiki/index.php?title=Standard_URL&action=info)</span>
- <span id="t-smwbrowselink"><a href="Special:Browse/Standard_URL" rel="smw-browse">Browse
  properties</a></span>
- <span id="t-pdf">[Print as
  PDF](http://gmod.org/mediawiki/index.php?title=Special:PdfPrint&page=Standard_URL)</span>

</div>

</div>

</div>

</div>

<div id="footer" role="contentinfo">

- <span id="footer-info-lastmod">Last updated at 22:44 on 15 September
  2009.</span>
- <span id="footer-info-viewcount">51,131 page views.</span>
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
