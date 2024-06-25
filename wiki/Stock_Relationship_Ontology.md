<div id="mw-page-base" class="noprint">

</div>

<div id="mw-head-base" class="noprint">

</div>

<div id="content" class="mw-body" role="main">

<span id="top"></span>

<div id="mw-js-message" style="display:none;">

</div>



# <span dir="auto">Stock Relationship Ontology</span>

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

This page serves as an initial draft of the nascent Stock Relationship
Ontology.

<div id="toc" class="toc">

<div id="toctitle">

## Contents

</div>

- [<span class="tocnumber">1</span> <span class="toctext">Talk
  page</span>](#Talk_page)
- [<span class="tocnumber">2</span> <span class="toctext">stock
  types</span>](#stock_types)
- [<span class="tocnumber">3</span> <span class="toctext">Proposed
  relations (by Pantelis Topalis 28 May
  2010)</span>](#Proposed_relations_.28by_Pantelis_Topalis_28_May_2010.29)
- [<span class="tocnumber">4</span>
  <span class="toctext">stock_relationship
  types</span>](#stock_relationship_types)
  - [<span class="tocnumber">4.1</span> <span class="toctext">individual
    -\> individual</span>](#individual_-.3E_individual)
  - [<span class="tocnumber">4.2</span> <span class="toctext">individual
    -\> group</span>](#individual_-.3E_group)
  - [<span class="tocnumber">4.3</span> <span class="toctext">group -\>
    individual</span>](#group_-.3E_individual)
  - [<span class="tocnumber">4.4</span> <span class="toctext">group -\>
    group</span>](#group_-.3E_group)
- [<span class="tocnumber">5</span> <span class="toctext">nd_assay_stock
  types</span>](#nd_assay_stock_types)
- [<span class="tocnumber">6</span> <span class="toctext">nd_assay
  types</span>](#nd_assay_types)

</div>

## <span id="Talk_page" class="mw-headline">Talk page</span>

If you are too shy to edit this page, then please add your suggested
terms or comments on the [talk
page](Talk:Stock_Relationship_Ontology "Talk:Stock Relationship Ontology").

  

## <span id="stock_types" class="mw-headline">stock types</span>

- term
  - is_a subterm

## <span id="Proposed_relations_.28by_Pantelis_Topalis_28_May_2010.29" class="mw-headline">Proposed relations (by <a
href="http://gmod.org/mediawiki/index.php?title=User:Pantelis_Topalis&amp;action=edit&amp;redlink=1"
class="new" title="User:Pantelis Topalis (page does not exist)">Pantelis
Topalis</a> 28 May 2010)</span>

Based on what it is written in this page, we can use the following
relations (please comment / add / modify as required).

- is_a (OBO_REL:is_a)
- part_of (OBO_REL:part_of)
- derives_from (OBO_REL:derives_from)
- is_parent_of
- is_offspring_of
- is_member_of

## <span id="stock_relationship_types" class="mw-headline">stock_relationship types</span>

(the following is largely taken from a prior VB
<a href="http://wiki.vectorbase.org/index.php/Samples_and_relationships"
class="external text" rel="nofollow">wiki</a> dealing with the same
issue. I've put them here as a conversation starter only - feel free to
delete / alter / extend as required) <a
href="http://gmod.org/mediawiki/index.php?title=User:Sethnr&amp;action=edit&amp;redlink=1"
class="new" title="User:Sethnr (page does not exist)">Sethnr</a> 13:12,
11 May 2010 (UTC)

### <span id="individual_-.3E_individual" class="mw-headline">individual -\> individual</span>

- parent -\> offspring
- individual -\> RNAi treated individual

### <span id="individual_-.3E_group" class="mw-headline">individual -\> group</span>

- parents -\> offspring
- parent -\> offspring (i.e. isofem)
- pool of individuals

### <span id="group_-.3E_individual" class="mw-headline">group -\> individual</span>

- individual from pool (e.g. single sequenced individual from field
  collection)
- individual under gen. modification (e.g. RNAi?)

### <span id="group_-.3E_group" class="mw-headline">group -\> group</span>

- sub-population from larger population
- group-\>group RNAi (and other experimental manipulations)
- bred lines from lab stocks

## <span id="nd_assay_stock_types" class="mw-headline">nd_assay_stock types</span>

Here is one distinction we may all need to make: assays that **use**
stocks and assays that **generate** stocks. I suggest the following but
it is a bit computer-sciency! <a
href="http://gmod.org/mediawiki/index.php?title=User:Maccallr&amp;action=edit&amp;redlink=1"
class="new" title="User:Maccallr (page does not exist)">Maccallr</a>
10:25, 1 June 2010 (UTC)

- assay_input_stock
- assay_output_stock

Should the amount of stock used/generated be recorded in
nd_assay_stockprop? Or should we have nd_assay_stock.types like 'stock
sample', 'entire stock'? <a
href="http://gmod.org/mediawiki/index.php?title=User:Maccallr&amp;action=edit&amp;redlink=1"
class="new" title="User:Maccallr (page does not exist)">Maccallr</a>
10:25, 1 June 2010 (UTC)

## <span id="nd_assay_types" class="mw-headline">nd_assay types</span>

</div>

<div class="printfooter">

Retrieved from
"<http://gmod.org/mediawiki/index.php?title=Stock_Relationship_Ontology&oldid=12802>"

</div>

<div id="catlinks" class="catlinks">

<div id="mw-normal-catlinks" class="mw-normal-catlinks">

[Categories](Special:Categories "Special:Categories"):

- [Chado](Category:Chado "Category:Chado")
- [Natural
  Diversity](Category:Natural_Diversity "Category:Natural Diversity")
- [Proposals](Category:Proposals "Category:Proposals")

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

- <span id="ca-nstab-main"><a href="Stock_Relationship_Ontology" accesskey="c"
  title="View the content page [c]">Page</a></span>
- <span id="ca-talk"><a href="Talk:Stock_Relationship_Ontology" accesskey="t"
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


- <span id="t-smwbrowselink"><a href="Special:Browse/Stock_Relationship_Ontology"
  rel="smw-browse">Browse properties</a></span>
- <span id="t-pdf">[Print as
  PDF](http://gmod.org/mediawiki/index.php?title=Special:PdfPrint&page=Stock_Relationship_Ontology)</span>

</div>

</div>

</div>

</div>

<div id="footer" role="contentinfo">

- <span id="footer-info-lastmod">Last updated at 10:25 on 1 June
  2010.</span>
<!-- - <span id="footer-info-viewcount">20,715 page views.</span> -->
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
