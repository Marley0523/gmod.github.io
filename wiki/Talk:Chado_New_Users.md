<div id="mw-page-base" class="noprint">

</div>

<div id="mw-head-base" class="noprint">

</div>

<div id="content" class="mw-body" role="main">

<span id="top"></span>

<div id="mw-js-message" style="display:none;">

</div>



# <span dir="auto">Talk:Chado New Users</span>

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

- [<span class="tocnumber">1</span> <span class="toctext">Meeting
  Notes</span>](#Meeting_Notes)
  - [<span class="tocnumber">1.1</span>
    <span class="toctext">20070405</span>](#20070405)
  - [<span class="tocnumber">1.2</span>
    <span class="toctext">20070329</span>](#20070329)
  - [<span class="tocnumber">1.3</span>
    <span class="toctext">20070322</span>](#20070322)

</div>

## <span id="Meeting_Notes" class="mw-headline">Meeting Notes</span>

### <span id="20070405" class="mw-headline">20070405</span>

- Tried to work through some of the Central Dogma stuff in Chado Best
  Practices. Zheng ran the sample query, which hung his laptop.
- Jim created the Problems template
  [Template:Problems](Template:Problems "Template:Problems") for adding
  notes to documentation pages in the wiki.

### <span id="20070329" class="mw-headline">20070329</span>

Jim was out of town and everyone else attended the Systems Biology
meeting

### <span id="20070322" class="mw-headline">20070322</span>

Lincoln was able to attend today. We looked at Chado tables using a
combination of phpPgAdmin and command line. To do direct SQL queries in
phpPgAdmin, click at the schema level.

Example query:

    select f.name, d.*, fd.* from dbxref as  d, feature_dbxref as fd, feature as f where d.dbxref_id = fd.dbxref_id and f.feature_id = fd.feature_id and accession !='SGD'

Gives:

    name  | dbxref_id | db_id | accession | version | description | feature_dbxref_id | feature_id | dbxref_id | is_current 
    -------+-----------+-------+-----------+---------+-------------+-------------------+------------+-----------+------------
    COX2  |     42435 |     2 | landmark  | 1       |             |             16241 |      16241 |     42435 | t
    COB   |     42435 |     2 | landmark  | 1       |             |             16176 |      16176 |     42435 | t
    COX1  |     42435 |     2 | landmark  | 1       |             |             16129 |      16129 |     42435 | t
    RPC40 |     42435 |     2 | landmark  | 1       |             |             15800 |      15800 |     42435 | t
    HTS1  |     42435 |     2 | landmark  | 1       |             |             15623 |      15623 |     42435 | t
    ERG10 |     42435 |     2 | landmark  | 1       |             |             15474 |      15474 |     42435 | t
    PEP4  |     42435 |     2 | landmark  | 1       |             |             15173 |      15173 |     42435 | t
    TPK2  |     42435 |     2 | landmark  | 1       |             |             15058 |      15058 |     42435 | t
    GAL4  |     42435 |     2 | landmark  | 1       |             |             14960 |      14960 |     42435 | t
    RAD17 |     42435 |     2 | landmark  | 1       |             |             14775 |      14775 |     42435 | t

Note that all have the same dbxref_id.

  
Conclusions

- bulk loaded sample yeast gff3 may not create canonical chado data.
  - features all have dbxref = NULL
    - *feature.dbxref_id is nullable; the original design was to have
      the dbxref_id that appears in the feature table to be the
      'primary' dbxref_id. A fairly recent addition was to add a command
      line flag to the bulk loader to allow the user to specify what (if
      anything) should be used as feature.dbxref_id. All others go in
      feature_dbxref.*
  - feature_dbxref acts strange (see example above)
    - *Not strange at all :-) In typical installations, db_id=2 is the
      GFF_source that comes from the GFF3 file. If you take a look at
      the GFF3 that SGD produces, most have a source of 'SGD', but a few
      have a source of 'landmark', which is used by SGD to put a few
      gene features in the overview in a GBrowse display.*
      - OK, it was a little strange--the GFF bulk loader (and the
        underlying bioperl module, Bio::FeatureIO::gff) didn't recognize
        attribute tags of 'dbxref' as dbxref tags (the standard is to
        use 'Dbxref'. I've modified bioperl and the bulk loader to allow
        the lowercase, non-standard dbxref now.
  - other?
- should get XML from a known Chado db and import via XORT or other.
  - talk to Pei Li and Eric Just

</div>

<div class="printfooter">

Retrieved from
"<http://gmod.org/mediawiki/index.php?title=Talk:Chado_New_Users&oldid=2303>"

</div>

<div id="catlinks" class="catlinks catlinks-allhidden">

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

- <span id="ca-nstab-main"><a href="Chado_New_Users" accesskey="c"
  title="View the content page [c]">Page</a></span>
- <span id="ca-talk"><a href="Talk:Chado_New_Users" accesskey="t"
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

- <span id="t-whatlinkshere"><a href="Special:WhatLinksHere/Talk:Chado_New_Users" accesskey="j"
  title="A list of all wiki pages that link here [j]">What links here</a></span>
- <span id="t-recentchangeslinked"><a href="Special:RecentChangesLinked/Talk:Chado_New_Users" accesskey="k"
  title="Recent changes in pages linked from this page [k]">Related
  changes</a></span>
- <span id="t-specialpages"><a href="Special:SpecialPages" accesskey="q"
  title="A list of all special pages [q]">Special pages</a></span>
- <span id="t-print"><a
  href="http://gmod.org/mediawiki/index.php?title=Talk:Chado_New_Users&amp;printable=yes"
  rel="alternate" accesskey="p"
  title="Printable version of this page [p]">Printable version</a></span>
- <span id="t-permalink">[Permanent
  link](http://gmod.org/mediawiki/index.php?title=Talk:Chado_New_Users&oldid=2303 "Permanent link to this revision of the page")</span>
- <span id="t-info">[Page
  information](http://gmod.org/mediawiki/index.php?title=Talk:Chado_New_Users&action=info)</span>
- <span id="t-pdf">[Print as
  PDF](http://gmod.org/mediawiki/index.php?title=Special:PdfPrint&page=Talk:Chado_New_Users)</span>

</div>

</div>

</div>

</div>

<div id="footer" role="contentinfo">

- <span id="footer-info-lastmod">Last updated at 16:16 on 12 April
  2007.</span>
- <span id="footer-info-viewcount">8,833 page views.</span>
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
