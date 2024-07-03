<div id="mw-page-base" class="noprint">

</div>

<div id="mw-head-base" class="noprint">

</div>

<div id="content" class="mw-body" role="main">

<span id="top"></span>

<div id="mw-js-message" style="display:none;">

</div>



# <span dir="auto">DBStag</span>

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

DBStag is a generic [SQL](Glossary#SQL "Glossary") to
[XML](Glossary#XML "Glossary") mapping tool

<div id="toc" class="toc">

<div id="toctitle">

## Contents

</div>

- [<span class="tocnumber">1</span>
  <span class="toctext">Download</span>](#Download)
- [<span class="tocnumber">2</span>
  <span class="toctext">Use</span>](#Use)
  - [<span class="tocnumber">2.1</span> <span class="toctext">Loading
    data</span>](#Loading_data)
  - [<span class="tocnumber">2.2</span>
    <span class="toctext">Querying</span>](#Querying)

</div>

## <span id="Download" class="mw-headline">Download</span>

- <a href="http://search.cpan.org/~cmungall/DBIx-DBStag/"
  class="external text" rel="nofollow">CPAN</a>

## <span id="Use" class="mw-headline">Use</span>

### <span id="Loading_data" class="mw-headline">Loading data</span>

The most common use in the context of Chado is to load [Chado
XML](Chado_XML "Chado XML"). No configuration is necessary, just install
and run

     stag-storenode.pl -d Pg:mychadoinst@myserver gene_ontology.chado

### <span id="Querying" class="mw-headline">Querying</span>

A secondary use is a means of data retrieval. DBStag can be used to
query <a href="Chado" class="mw-redirect" title="Chado">Chado</a> using
multi-table joins with the results automatically nested.

Chado <a
href="http://gmod.svn.sourceforge.net/viewvc/gmod/schema/trunk/chado/stag-templates/"
class="external text" rel="nofollow">comes with some templates</a> that
can be used with Stag.

Example:

     selectall_xml.pl -d Pg:mychadoinst@myserver /chado-cvterm dbname=GO accession=0008150

</div>

<div class="printfooter">

Retrieved from
"<http://gmod.org/mediawiki/index.php?title=DBStag&oldid=9365>"

</div>

<div id="catlinks" class="catlinks">

<div id="mw-normal-catlinks" class="mw-normal-catlinks">

[Categories](Special%3ACategories "Special%3ACategories"):

- [Chado](Category%3AChado "Category%3AChado")
- [Perl](Category%3APerl "Category%3APerl")
- [XML](Category%3AXML "Category%3AXML")

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
  href="http://gmod.org/mediawiki/index.php?title=Talk:DBStag&amp;action=edit&amp;redlink=1"
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


- <span id="t-smwbrowselink"><a href="Special%3ABrowse/DBStag" rel="smw-browse">Browse properties</a></span>


</div>

</div>

</div>

</div>

<div id="footer" role="contentinfo">

- <span id="footer-info-lastmod">Last updated at 23:10 on 15 September
  2009.</span>
<!-- - <span id="footer-info-viewcount">16,189 page views.</span> -->
- <span id="footer-info-copyright">Content is available under
  <a href="http://www.gnu.org/licenses/fdl-1.3.html" class="external"
  rel="nofollow">a GNU Free Documentation License</a> unless otherwise
  noted.</span>

<!-- -->

- <span id="footer-places-about">[About
  GMOD](GMOD:About "GMOD:About")</span>

<!-- -->






</div>
