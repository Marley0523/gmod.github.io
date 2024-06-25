<div id="mw-page-base" class="noprint">

</div>

<div id="mw-head-base" class="noprint">

</div>

<div id="content" class="mw-body" role="main">

<span id="top"></span>

<div id="mw-js-message" style="display:none;">

</div>



# <span dir="auto">Load ncbi taxonomy</span>

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

`load_ncbi_taxonomy.pl` is a perl script for loading NCBI taxonomy trees
in the
[**`phylotree`**](Chado_Phylogeny_Module#Table:_phylotree "Chado Phylogeny Module")[phylotree
table](Chado_Phylogeny_Module#Table:_phylotree "Chado Phylogeny Module").
This script was contributed by [Naama
Menda](User:NaamaMenda "User:NaamaMenda") at
<a href="http://www.sgn.cornell.edu/" class="external text"
rel="nofollow">Sol Genomics Network (SGN)</a> led by Lukas Mueller.

## <span id="Where_to_find_it" class="mw-headline">Where to find it</span>

### <span id="gmod_1.1" class="mw-headline">gmod 1.1</span>

In the 1.1 release,load_ncbi_taxonomy.pl is installed with other scripts
with the distribution and will typically go in /usr/bin or
/usr/local/bin.

## <span id="Command_line_options" class="mw-headline">Command line options</span>

- `-H hostname` for database \[required if `-g` isn't used\]

<!-- -->

- `-D database name</t> [required if <tt>-g` isn't used\]

<!-- -->

- `-g GMOD database profile name` (can provide host and DB name)
  Default: `default`

<!-- -->

- `-p phylotree name` (optional - defaults to `NCBI taxonomy tree`. You
  want to set this if you plan to load more than one tree)

<!-- -->

- `-i input file` - list of taxonomy ids to be stored (optional- without
  this the entire NCBI taxonomy will be loaded)

<!-- -->

- `-v` verbose output

<!-- -->

- `-t` trial mode. Don't perform any store operations at all. (trial
  mode cannot test inserting associated data for new terms)

For storing phylonodes a new phylotree will be stored with the name
'NCBI taxonomy tree'. Each organism will get a phylonode id and will be
stored in a tmp table, since each phylonode (except for the root) has a
parent_phylonode_id, which is an internal foreign key. Next each
phylonode will get a left and right indexes, which are calculated by
walking down the entire tree structure (see article by Aaron Mackey: <a
href="http://www.oreillynet.com/pub/a/network/2002/11/27/bioconf.html?page=2"
class="external free"
rel="nofollow">http://www.oreillynet.com/pub/a/network/2002/11/27/bioconf.html?page=2</a>).
Only after each phylonode will have calculated indexes, the phylonode
table will be populated from the tmp table.

</div>

<div class="printfooter">

Retrieved from
"<http://gmod.org/mediawiki/index.php?title=Load_ncbi_taxonomy&oldid=16355>"

</div>

<div id="catlinks" class="catlinks">

<div id="mw-normal-catlinks" class="mw-normal-catlinks">

[Categories](Special:Categories "Special:Categories"):

- [SGN](Category:SGN "Category:SGN")
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



<div id="left-navigation">

<div id="p-namespaces" class="vectorTabs" role="navigation"
aria-labelledby="p-namespaces-label">

### Namespaces

- <span id="ca-nstab-main"><a href="Load_ncbi_taxonomy" accesskey="c"
  title="View the content page [c]">Page</a></span>
- <span id="ca-talk"><a
  href="http://gmod.org/mediawiki/index.php?title=Talk:Load_ncbi_taxonomy&amp;action=edit&amp;redlink=1"
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


- <span id="t-smwbrowselink"><a href="Special:Browse/Load_ncbi_taxonomy" rel="smw-browse">Browse
  properties</a></span>
- <span id="t-pdf">[Print as
  PDF](http://gmod.org/mediawiki/index.php?title=Special:PdfPrint&page=Load_ncbi_taxonomy)</span>

</div>

</div>

</div>

</div>

<div id="footer" role="contentinfo">

- <span id="footer-info-lastmod">Last updated at 23:29 on 29 December
  2010.</span>
<!-- - <span id="footer-info-viewcount">11,778 page views.</span> -->
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
