<div id="mw-page-base" class="noprint">

</div>

<div id="mw-head-base" class="noprint">

</div>

<div id="content" class="mw-body" role="main">

<span id="top"></span>

<div id="mw-js-message" style="display:none;">

</div>



# <span dir="auto">Public Chado Databases</span>

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

- [<span class="tocnumber">1</span> <span class="toctext">Public Chado
  Genome Database
  Releases</span>](#Public_Chado_Genome_Database_Releases)
  - [<span class="tocnumber">1.1</span> <span class="toctext">Chado
    PostgreSQL Dumps</span>](#Chado_PostgreSQL_Dumps)
  - [<span class="tocnumber">1.2</span> <span class="toctext">Direct
    Chado Access</span>](#Direct_Chado_Access)
    - [<span class="tocnumber">1.2.1</span>
      <span class="toctext">FlyBase</span>](#FlyBase)
    - [<span class="tocnumber">1.2.2</span>
      <span class="toctext">GeneDB</span>](#GeneDB)

</div>

# <span id="Public_Chado_Genome_Database_Releases" class="mw-headline">Public <a href="Chado" class="mw-redirect" title="Chado">Chado</a> <a href="Genome" class="mw-redirect" title="Genome">Genome</a> Database Releases</span>

## <span id="Chado_PostgreSQL_Dumps" class="mw-headline">Chado [PostgreSQL](PostgreSQL "PostgreSQL") Dumps</span>

These projects provide
<a href="Chado" class="mw-redirect" title="Chado">Chado</a> database
dumps that you can copy and learn from.

- [FlyBase](Category:FlyBase "Category:FlyBase"):
  <a href="ftp://ftp.flybase.org/releases/current/psql/"
  class="external free"
  rel="nofollow">ftp://ftp.flybase.org/releases/current/psql/</a> -
  Contains 12 Drosophila genomes.
- [ParameciumDB](ParameciumDB "ParameciumDB"):
  <a href="http://paramecium.cgm.cnrs-gif.fr/download/sql/"
  class="external free"
  rel="nofollow">http://paramecium.cgm.cnrs-gif.fr/download/sql/</a>
- [Yeast](Category:SGD "Category:SGD"):
  <a href="http://sgdlite.princeton.edu/download/sgdlite/"
  class="external free"
  rel="nofollow">http://sgdlite.princeton.edu/download/sgdlite/</a>
- <a
  href="http://gmod.org/mediawiki/index.php?title=VectorBase&amp;action=edit&amp;redlink=1"
  class="new" title="VectorBase (page does not exist)">VectorBase</a>:
  <a href="ftp://ftp.vectorbase.org/public_data/databases/chado/"
  class="external free"
  rel="nofollow">ftp://ftp.vectorbase.org/public_data/databases/chado/</a>

Please add to this list, if you have a Chado database to share, or know
of someone who does. If you have a public Chado database, please
consider adding an export dump file.

     pg_dump -f mychado.dump mychado

## <span id="Direct_Chado_Access" class="mw-headline">Direct <a href="Chado" class="mw-redirect" title="Chado">Chado</a> Access</span>

### <span id="FlyBase" class="mw-headline"><a href="http://flybase.org" class="external text"
rel="nofollow">FlyBase</a></span>

- <a
  href="https://flybase.github.io/docs/chado/index#public-database#public-database"
  class="external text" rel="nofollow">FlyBase public chado database</a>

### <span id="GeneDB" class="mw-headline"><a href="http://www.genedb.org" class="external text"
rel="nofollow">GeneDB</a></span>

The following connection information is for the preliminary GeneDB Chado
database. This database currently contains Plasmodium genomes; more
organisms will be added during 2008. This is currently a pre-release
database, which may change or disappear without warning.

**hostname:** db.genedb.org  
**port:** 5432  
**username:** genedb_ro  
**password:** no password  
**database name:** snapshot  

e.g.

    psql -h db.genedb.org -U genedb_ro snapshot

</div>

<div class="printfooter">

Retrieved from
"<http://gmod.org/mediawiki/index.php?title=Public_Chado_Databases&oldid=27781>"

</div>

<div id="catlinks" class="catlinks">

<div id="mw-normal-catlinks" class="mw-normal-catlinks">

[Categories](Special:Categories "Special:Categories"):

- [ParameciumDB](Category:ParameciumDB "Category:ParameciumDB")
- [FlyBase](Category:FlyBase "Category:FlyBase")
- [SGD](Category:SGD "Category:SGD")
- [Chado](Category:Chado "Category:Chado")

</div>

</div>

<div class="visualClear">

</div>

</div>

</div>

<div id="mw-navigation">

## Navigation menu

<div id="mw-head">

<div id="p-personal" role="navigation"
aria-labelledby="p-personal-label">

### Personal tools

- <span id="pt-login"><a
  href="http://gmod.org/mediawiki/index.php?title=Special:UserLogin&amp;returnto=Public+Chado+Databases"
  accesskey="o"
  title="You are encouraged to log in; however, it is not mandatory [o]">Log
  in / create account</a></span>

</div>

<div id="left-navigation">

<div id="p-namespaces" class="vectorTabs" role="navigation"
aria-labelledby="p-namespaces-label">

### Namespaces

- <span id="ca-nstab-main"><a href="Public_Chado_Databases" accesskey="c"
  title="View the content page [c]">Page</a></span>
- <span id="ca-talk"><a
  href="http://gmod.org/mediawiki/index.php?title=Talk:Public_Chado_Databases&amp;action=edit&amp;redlink=1"
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

- <span id="ca-view">[Read](Public_Chado_Databases)</span>
- <span id="ca-viewsource"><a
  href="http://gmod.org/mediawiki/index.php?title=Public_Chado_Databases&amp;action=edit"
  accesskey="e" title="This page is protected.
  You can view its source [e]">View source</a></span>
- <span id="ca-history"><a
  href="http://gmod.org/mediawiki/index.php?title=Public_Chado_Databases&amp;action=history"
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

- <span id="t-whatlinkshere"><a href="Special:WhatLinksHere/Public_Chado_Databases" accesskey="j"
  title="A list of all wiki pages that link here [j]">What links here</a></span>
- <span id="t-recentchangeslinked"><a href="Special:RecentChangesLinked/Public_Chado_Databases"
  accesskey="k"
  title="Recent changes in pages linked from this page [k]">Related
  changes</a></span>
- <span id="t-specialpages"><a href="Special:SpecialPages" accesskey="q"
  title="A list of all special pages [q]">Special pages</a></span>
- <span id="t-print"><a
  href="http://gmod.org/mediawiki/index.php?title=Public_Chado_Databases&amp;printable=yes"
  rel="alternate" accesskey="p"
  title="Printable version of this page [p]">Printable version</a></span>
- <span id="t-permalink">[Permanent
  link](http://gmod.org/mediawiki/index.php?title=Public_Chado_Databases&oldid=27781 "Permanent link to this revision of the page")</span>
- <span id="t-info">[Page
  information](http://gmod.org/mediawiki/index.php?title=Public_Chado_Databases&action=info)</span>
- <span id="t-smwbrowselink"><a href="Special:Browse/Public_Chado_Databases" rel="smw-browse">Browse
  properties</a></span>
- <span id="t-pdf">[Print as
  PDF](http://gmod.org/mediawiki/index.php?title=Special:PdfPrint&page=Public_Chado_Databases)</span>

</div>

</div>

</div>

</div>

<div id="footer" role="contentinfo">

- <span id="footer-info-lastmod">Last updated at 14:56 on 25 June
  2019.</span>
- <span id="footer-info-viewcount">32,469 page views.</span>
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
