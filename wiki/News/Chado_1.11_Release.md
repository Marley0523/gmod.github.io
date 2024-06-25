<div id="mw-page-base" class="noprint">

</div>

<div id="mw-head-base" class="noprint">

</div>

<div id="content" class="mw-body" role="main">

<span id="top"></span>

<div id="mw-js-message" style="display:none;">

</div>



# <span dir="auto">News/Chado 1.11 Release</span>

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

I am pleased to announce the <a
href="https://sourceforge.net/projects/gmod/files/gmod/chado-1.11/chado-1.11.tar.gz/download"
class="external text" rel="nofollow">1.11 release of Chado</a>, the GMOD
schema and related tools. The file can be downloaded from <a
href="https://sourceforge.net/projects/gmod/files/gmod/chado-1.11/chado-1.11.tar.gz/download"
class="external text" rel="nofollow">SourceForge</a>

In this release, the schema itself has not changed since the 1.1 release
in May of this year, but there have been bug fixes (see <a
href="http://gmod.svn.sourceforge.net/viewvc/gmod/schema/tags/chado-1.11/chado/Changes?revision=23640&amp;view=markup"
class="external text" rel="nofollow">release notes</a>; thanks to [Naama
Menda](../User:NaamaMenda "User:NaamaMenda") for those fixes) and one
added functionality to the materialized view tool. This functionality
was required to support full text searching that will be included in the
up coming release of the
<a href="../Chado" class="mw-redirect" title="Chado">Chado</a> [GBrowse
adaptor](../GBrowse_Adaptors "GBrowse Adaptors"),
<a href="http://search.cpan.org/perldoc?Bio::DB::Das::Chado"
class="external text" rel="nofollow">Bio::DB::Das::Chado</a>.

Also note that the name of the release has changed: previously, releases
of the <a href="../Chado" class="mw-redirect" title="Chado">Chado</a>
schema were called "gmod" (gmod-0.003, gmod-1.0, and gmod-1.1), but that
led to a couple of different kinds of confusion, so with this release
going forward, the releases will be called "chado-\*".

Since the schema didn't change, if you already have a 1.1 schema and
want the bug fixes and added functionality, all you need to do for
installation is to go up to the install step and stop there, i.e.:

    perl Makefile.PL
    make
    sudo make install

Happy *GMODing* and please direct questions about this release to the
<a href="https://lists.sourceforge.net/lists/listinfo/gmod-schema"
class="external text" rel="nofollow">schema mailing list</a>,

[Scott Cain](../User:Scott "User:Scott")

  

<div class="newsfooter">

*Posted to the [GMOD News](../GMOD_News "GMOD News") on 2010/08/06*

</div>

</div>

<div class="printfooter">

Retrieved from
"<http://gmod.org/mediawiki/index.php?title=News/Chado_1.11_Release&oldid=16751>"

</div>

<div id="catlinks" class="catlinks">

<div id="mw-normal-catlinks" class="mw-normal-catlinks">

[Category](../Special:Categories "Special:Categories"):

- [News Items](../Category:News_Items "Category:News Items")

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

- <span id="ca-nstab-main"><a href="Chado_1.11_Release" accesskey="c"
  title="View the content page [c]">Page</a></span>
- <span id="ca-talk"><a
  href="http://gmod.org/mediawiki/index.php?title=Talk:News/Chado_1.11_Release&amp;action=edit&amp;redlink=1"
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

<a href="../Main_Page"
style="background-image: url(../../images/GMOD-cogs.png);"
title="Visit the main page"></a>

</div>

<div id="p-Navigation" class="portal" role="navigation"
aria-labelledby="p-Navigation-label">

### Navigation

<div class="body">

- <span id="n-GMOD-Home">[GMOD Home](../Main_Page)</span>
- <span id="n-Software">[Software](../GMOD_Components)</span>
- <span id="n-Categories-.2F-Tags">[Categories /
  Tags](../Categories)</span>
- <span id="n-View-all-pages">[View all
  pages](../Special:AllPages)</span>

</div>

</div>

<div id="p-Documentation" class="portal" role="navigation"
aria-labelledby="p-Documentation-label">

### Documentation

<div class="body">

- <span id="n-Overview">[Overview](../Overview)</span>
- <span id="n-FAQs">[FAQs](../Category:FAQ)</span>
- <span id="n-HOWTOs">[HOWTOs](../Category:HOWTO)</span>
- <span id="n-Glossary">[Glossary](../Glossary)</span>

</div>

</div>

<div id="p-Community" class="portal" role="navigation"
aria-labelledby="p-Community-label">

### Community

<div class="body">

- <span id="n-GMOD-News">[GMOD News](../GMOD_News)</span>
- <span id="n-Training-.2F-Outreach">[Training /
  Outreach](../Training_and_Outreach)</span>
- <span id="n-Support">[Support](../Support)</span>
- <span id="n-GMOD-Promotion">[GMOD Promotion](../GMOD_Promotion)</span>
- <span id="n-Meetings">[Meetings](../Meetings)</span>
- <span id="n-Calendar">[Calendar](../Calendar)</span>

</div>

</div>

<div id="p-tb" class="portal" role="navigation"
aria-labelledby="p-tb-label">

### Tools

<div class="body">

- <span id="t-whatlinkshere"><a href="../Special:WhatLinksHere/News/Chado_1.11_Release" accesskey="j"
  title="A list of all wiki pages that link here [j]">What links here</a></span>
- <span id="t-recentchangeslinked"><a href="../Special:RecentChangesLinked/News/Chado_1.11_Release"
  accesskey="k"
  title="Recent changes in pages linked from this page [k]">Related
  changes</a></span>
- <span id="t-specialpages"><a href="../Special:SpecialPages" accesskey="q"
  title="A list of all special pages [q]">Special pages</a></span>
- <span id="t-print"><a
  href="http://gmod.org/mediawiki/index.php?title=News/Chado_1.11_Release&amp;printable=yes"
  rel="alternate" accesskey="p"
  title="Printable version of this page [p]">Printable version</a></span>
- <span id="t-permalink">[Permanent
  link](http://gmod.org/mediawiki/index.php?title=News/Chado_1.11_Release&oldid=16751 "Permanent link to this revision of the page")</span>
- <span id="t-info">[Page
  information](http://gmod.org/mediawiki/index.php?title=News/Chado_1.11_Release&action=info)</span>
- <span id="t-smwbrowselink"><a href="../Special:Browse/News-2FChado_1.11_Release"
  rel="smw-browse">Browse properties</a></span>
- <span id="t-pdf">[Print as
  PDF](http://gmod.org/mediawiki/index.php?title=Special:PdfPrint&page=News/Chado_1.11_Release)</span>

</div>

</div>

</div>

</div>

<div id="footer" role="contentinfo">

- <span id="footer-info-lastmod">Last updated at 23:20 on 24 January
  2011.</span>
- <span id="footer-info-viewcount">6,695 page views.</span>
- <span id="footer-info-copyright">Content is available under
  <a href="http://www.gnu.org/licenses/fdl-1.3.html" class="external"
  rel="nofollow">a GNU Free Documentation License</a> unless otherwise
  noted.</span>

<!-- -->

- <span id="footer-places-about">[About
  GMOD](../GMOD:About "GMOD:About")</span>

<!-- -->

- <span id="footer-copyrightico">[<img src="http://www.gnu.org/graphics/gfdl-logo-small.png" width="88"
  height="31" alt="a GNU Free Documentation License" />](http://www.gnu.org/licenses/fdl-1.3.html)</span>
- <span id="footer-poweredbyico">[<img
  src="../../mediawiki/skins/common/images/poweredby_mediawiki_88x31.png"
  width="88" height="31" alt="Powered by MediaWiki" />](http://www.mediawiki.org/)
  [<img
  src="../../mediawiki/extensions/SemanticMediaWiki/resources/images/smw_button.png"
  width="88" height="31" alt="Powered by Semantic MediaWiki" />](https://www.semantic-mediawiki.org/wiki/Semantic_MediaWiki)</span>

<div style="clear:both">

</div>

</div>
