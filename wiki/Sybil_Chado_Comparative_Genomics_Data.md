<div id="mw-page-base" class="noprint">

</div>

<div id="mw-head-base" class="noprint">

</div>

<div id="content" class="mw-body" role="main">

<span id="top"></span>

<div id="mw-js-message" style="display:none;">

</div>



# <span dir="auto">Sybil Chado Comparative Genomics Data</span>

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

## <span id="Sybil_Chado_Comparative_Genomics_Data_storage" class="mw-headline">Sybil Chado Comparative Genomics Data storage</span>

This page will detail the TIGR/JCVI/IGS Sybil way of storing comparative
genomics data.

The following diagram describes how protein clusters are stored for
Sybil:

<a href="File:ChadoSybilComparative.png" class="image"><img
src="../mediawiki/images/2/2a/ChadoSybilComparative.png" width="621"
height="355" alt="ChadoSybilComparative.png" /></a>

The purple line represents the protein cluster and is stored in feature.

The proteins that are members of the cluster are shown with the labels
'member sequence' and are linked to the cluster feature via featurloc
(where feature_id = protein feature and srcfeature_id = cluster
feature). The featureloc rank column is incremented for each cluster
member.

------------------------------------------------------------------------

Cluster assignments are based on bi-directional best BLASTP hit. Top
BLASTP hits are stored in the database via 'match' and 'match_part'
features independent of the clustering analysis. In this way multiple
clustering analyses may be loaded which use the same set of BLASTP hits.
Loading multiple clustering analyses can be useful when one wants to try
out/compare some new clustering parameters or would like to cluster on
only a subset of the loaded genomes.

The use of featureloc to join matching regions allows for the method to
include storage of locatable syntenic regions based on whole genome
alignment or other genomic DNA based comparison methods. Doing this
would simply require replacing the 'polypeptide' feature with an
'assembly' feature in the featureloc table.

------------------------------------------------------------------------

I propose adding another link to this scheme as I feel it could help
with performance and simplify some queries. The new relationship would
be as follows:

A feature_relationship of type derived_from (Seems the most
appropriate?) that links the cluster Match feature with each of the
blastp match features that were used to generate this cluster. The new
picture would look like this:

<a href="File:ChadoSybilComparative_new.png" class="image"><img
src="../mediawiki/images/9/95/ChadoSybilComparative_new.png" width="604"
height="398" alt="ChadoSybilComparative new.png" /></a>

  

  

  

------------------------------------------------------------------------

[Proposed schema extensions related to Sybil/IGS
needs](Proposed_schema_extensions_related_to_Sybil/IGS_needs "Proposed schema extensions related to Sybil/IGS needs")

</div>

<div class="printfooter">

Retrieved from
"<http://gmod.org/mediawiki/index.php?title=Sybil_Chado_Comparative_Genomics_Data&oldid=5214>"

</div>

<div id="catlinks" class="catlinks">

<div id="mw-normal-catlinks" class="mw-normal-catlinks">

[Categories](Special:Categories "Special:Categories"):

- [Chado](Category:Chado "Category:Chado")
- [Comparative
  Genomics](Category:Comparative_Genomics "Category:Comparative Genomics")
- [Sybil](Category:Sybil "Category:Sybil")

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

- <span id="ca-nstab-main"><a href="Sybil_Chado_Comparative_Genomics_Data" accesskey="c"
  title="View the content page [c]">Page</a></span>
- <span id="ca-talk"><a
  href="http://gmod.org/mediawiki/index.php?title=Talk:Sybil_Chado_Comparative_Genomics_Data&amp;action=edit&amp;redlink=1"
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

- <span id="t-whatlinkshere"><a href="Special:WhatLinksHere/Sybil_Chado_Comparative_Genomics_Data"
  accesskey="j" title="A list of all wiki pages that link here [j]">What
  links here</a></span>
- <span id="t-recentchangeslinked"><a
  href="Special:RecentChangesLinked/Sybil_Chado_Comparative_Genomics_Data"
  accesskey="k"
  title="Recent changes in pages linked from this page [k]">Related
  changes</a></span>
- <span id="t-specialpages"><a href="Special:SpecialPages" accesskey="q"
  title="A list of all special pages [q]">Special pages</a></span>
- <span id="t-print"><a
  href="http://gmod.org/mediawiki/index.php?title=Sybil_Chado_Comparative_Genomics_Data&amp;printable=yes"
  rel="alternate" accesskey="p"
  title="Printable version of this page [p]">Printable version</a></span>
- <span id="t-permalink">[Permanent
  link](http://gmod.org/mediawiki/index.php?title=Sybil_Chado_Comparative_Genomics_Data&oldid=5214 "Permanent link to this revision of the page")</span>
- <span id="t-info">[Page
  information](http://gmod.org/mediawiki/index.php?title=Sybil_Chado_Comparative_Genomics_Data&action=info)</span>
- <span id="t-smwbrowselink"><a href="Special:Browse/Sybil_Chado_Comparative_Genomics_Data"
  rel="smw-browse">Browse properties</a></span>
- <span id="t-pdf">[Print as
  PDF](http://gmod.org/mediawiki/index.php?title=Special:PdfPrint&page=Sybil_Chado_Comparative_Genomics_Data)</span>

</div>

</div>

</div>

</div>

<div id="footer" role="contentinfo">

- <span id="footer-info-lastmod">Last updated at 20:04 on 12 April
  2008.</span>
- <span id="footer-info-viewcount">21,929 page views.</span>
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
