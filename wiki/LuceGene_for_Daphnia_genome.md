<div id="mw-page-base" class="noprint">

</div>

<div id="mw-head-base" class="noprint">

</div>

<div id="content" class="mw-body" role="main">

<span id="top"></span>

<div id="mw-js-message" style="display:none;">

</div>



# <span dir="auto">LuceGene for Daphnia genome</span>

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

Daphnia's genome now has lots of gene annotations, wanting both search
and reporting for these. I've dusted off
**[LuceGene](LuceGene "LuceGene")** which is designed for this, and
installed over the Labor Day weekend at
<a href="http://wfleabase.org/lucegene/" class="external free"
rel="nofollow">http://wfleabase.org/lucegene/</a>. It was relatively
easy to do: most of my time was in designing an XSLT stylesheet for gene
page display. Other organism databases should be able to follow these
steps, with more detail forthcoming, and have a similar gene search and
report service without special effort.

Steps involved

- Convert Daphnia's gene annotations (some 28,000) from [GFF](GFF "GFF")
  to GeneSummary [XML](Glossary#XML "Glossary"). This took a simple perl
  script and the GeneSummary XML package, at
  <a href="http://eugenes.org/gmod/gene-report-examples/"
  class="external free"
  rel="nofollow">http://eugenes.org/gmod/gene-report-examples/</a>. See
  `bin/gff2ugpxml.pl`. This is Daphnia specific, but should be easy to
  revise for other species GFF. You also want the `lib/` and `conf/`
  sections here to generate UGP-XML. See also the
  <a href="http://gmod.svn.sourceforge.net/viewvc/gmod/genepages/"
  class="external text" rel="nofollow">genepages project</a> in
  <a href="SVN" class="mw-redirect" title="SVN">SVN</a>.
- install from the [GMOD Lucegene distribution](Downloads "Downloads")
  the web archive (lucegene.war), having already a Tomcat servlet server
  for this.
- copy and edit the `conf/ugpxml.*` configuration files, tweaking for
  Daphnia. The `ugpxml.properties` handles Lucegene indexing
  configuration, and that mostly worked but needed some field updates
  for Daphnia. The `ugpxml.xslt` for GeneSummary page reports needed the
  most work, to tune it to the specific gene annotations for this data
  set.
- also add Daphnia fasta gene and EST sequences to Lucegene search
  configurations, and the wfleabase.org web documents (updating current
  conf/ files for those).
- run the `admin/lucegene-index.sh` script to index the gene page XML,
  fasta sequences and web documents (or use `admin/make-indices` for
  all).
- update various html documents with Daphnia search examples.
- Restart Tomcat, already configured for the wfleabase.org webapps
  folder with this lucegene web archive. View results at
  <a href="http://wfleabase.org/lucegene/" class="external free"
  rel="nofollow">http://wfleabase.org/lucegene/</a>

Note that this is all what-you-see-is-what-you-get, in that the source
gene page XML is exactly what is being searched, with no hidden or extra
search tables, and is exactly what is sent to the client web browser.
The browser does the boring job of converting it to HTML display (if it
wants). Or one can use these gene pages in XML for data processing
without tedious HTML page scraping.

Here is a Daphnia gene page example,
<a href="http://wfleabase.org/lucegene/lookup?id=NCBI_GNO_292134"
class="external free"
rel="nofollow">http://wfleabase.org/lucegene/lookup?id=NCBI_GNO_292134</a>
(view the page source to see structured gene page XML). This corresponds
to these screen shots
<a href="../mediawiki/images/e/e3/Daphnia-genepage.png" class="internal"
title="Daphnia-genepage.png">daphnia gene page</a> and
<a href="../mediawiki/images/9/96/Daphnia-genepage-xml.png"
class="internal" title="Daphnia-genepage-xml.png">gene page xml</a>.

  
[Dongilbert](User:Dongilbert "User:Dongilbert") 16:23, 4 September 2007
(EDT)

</div>

<div class="printfooter">

Retrieved from
"<http://gmod.org/mediawiki/index.php?title=LuceGene_for_Daphnia_genome&oldid=9346>"

</div>

<div id="catlinks" class="catlinks">

<div id="mw-normal-catlinks" class="mw-normal-catlinks">

[Categories](Special:Categories "Special:Categories"):

- [LuceGene](Category:LuceGene "Category:LuceGene")
- [WFleaBase](Category:WFleaBase "Category:WFleaBase")

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

- <span id="ca-nstab-main"><a href="LuceGene_for_Daphnia_genome" accesskey="c"
  title="View the content page [c]">Page</a></span>
- <span id="ca-talk"><a
  href="http://gmod.org/mediawiki/index.php?title=Talk:LuceGene_for_Daphnia_genome&amp;action=edit&amp;redlink=1"
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

- <span id="ca-view">[Read](LuceGene_for_Daphnia_genome)</span>
- <span id="ca-viewsource"><a
  href="http://gmod.org/mediawiki/index.php?title=LuceGene_for_Daphnia_genome&amp;action=edit"
  accesskey="e" title="This page is protected.
  You can view its source [e]">View source</a></span>
- <span id="ca-history"><a
  href="http://gmod.org/mediawiki/index.php?title=LuceGene_for_Daphnia_genome&amp;action=history"
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

- <span id="t-whatlinkshere"><a href="Special:WhatLinksHere/LuceGene_for_Daphnia_genome"
  accesskey="j" title="A list of all wiki pages that link here [j]">What
  links here</a></span>
- <span id="t-recentchangeslinked"><a href="Special:RecentChangesLinked/LuceGene_for_Daphnia_genome"
  accesskey="k"
  title="Recent changes in pages linked from this page [k]">Related
  changes</a></span>
- <span id="t-specialpages"><a href="Special:SpecialPages" accesskey="q"
  title="A list of all special pages [q]">Special pages</a></span>
- <span id="t-print"><a
  href="http://gmod.org/mediawiki/index.php?title=LuceGene_for_Daphnia_genome&amp;printable=yes"
  rel="alternate" accesskey="p"
  title="Printable version of this page [p]">Printable version</a></span>
- <span id="t-permalink">[Permanent
  link](http://gmod.org/mediawiki/index.php?title=LuceGene_for_Daphnia_genome&oldid=9346 "Permanent link to this revision of the page")</span>
- <span id="t-info">[Page
  information](http://gmod.org/mediawiki/index.php?title=LuceGene_for_Daphnia_genome&action=info)</span>
- <span id="t-smwbrowselink"><a href="Special:Browse/LuceGene_for_Daphnia_genome"
  rel="smw-browse">Browse properties</a></span>
- <span id="t-pdf">[Print as
  PDF](http://gmod.org/mediawiki/index.php?title=Special:PdfPrint&page=LuceGene_for_Daphnia_genome)</span>

</div>

</div>

</div>

</div>

<div id="footer" role="contentinfo">

- <span id="footer-info-lastmod">Last updated at 22:29 on 15 September
  2009.</span>
- <span id="footer-info-viewcount">25,826 page views.</span>
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
