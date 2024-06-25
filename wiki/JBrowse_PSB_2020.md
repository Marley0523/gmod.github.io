<div id="mw-page-base" class="noprint">

</div>

<div id="mw-head-base" class="noprint">

</div>

<div id="content" class="mw-body" role="main">

<span id="top"></span>

<div id="mw-js-message" style="display:none;">

</div>



# <span dir="auto">JBrowse PSB 2020</span>

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

  

## <span id="Overview" class="mw-headline">Overview</span>

In this workshop, we present an introduction to the JBrowse genome
browser. We will cover new functionality of JBrowse 2, which is
downloadable as a desktop application, and provides new modalities for
genome browsing including complex structural variant views and Circos
views. It also contains connections to datasets for human datasets and
common model organisms using trackhubs and data APIs.

### <span id="Relevance_to_PSB" class="mw-headline">Relevance to PSB</span>

The JBrowse JavaScript genome browser is a very widely used genome
browser, deployed at thousands of sites with around 30,000 monthly
active users (source: Google Analytics). We are now presenting a preview
of JBrowse 2, a ground up rewrite of JBrowse that enables new
visualization modalities including multiple-linear views and circos
views, which opens up the doors to synteny views, structural variant
comparisons, and more. JBrowse 2 preserves the capabilities of JBrowse
(especially the ability to interface with many data sources) but moving
to a more modular architecture and a React-style model where the
rendered DOM is a function of application state. Many new features are
available in JBrowse 2 and this part of the workshop will introduce them
for the first time.

  

#### <span id="Intended_Audience" class="mw-headline">Intended Audience</span>

JBrowse is sufficiently easy to install that a biologist, bioinformatics
researcher, or bioinformatics developer can easily set up and configure
a JBrowse server after the initial hurdles of learning about
configuration options and file formats are overcome. This talk is
intended to introduce the more advanced features of JBrowse, and provide
a preview of the JBrowse 2 application.

### <span id="Workshop_Schedule" class="mw-headline">Workshop Schedule</span>

| Time | Presenter | Topic |
|----|----|----|
| 10 minutes | Ian Holmes | Welcome, JBrowse and JBrowse 2 overview |
| 60 minutes | Colin Diesh and Garrett Stevens | JBrowse 2 architecture, SV inspector, and detailed overview of JBrowse 2 |
| 20 minutes | Ian Holmes | Coverage of the JBrowse ecosystem, including plugins, JBrowse Connect, Apollo, and the future. |

</div>

<div class="printfooter">

Retrieved from
"<http://gmod.org/mediawiki/index.php?title=JBrowse_PSB_2020&oldid=27789>"

</div>

<div id="catlinks" class="catlinks">

<div id="mw-normal-catlinks" class="mw-normal-catlinks">

[Categories](Special:Categories "Special:Categories"):

- [JBrowse](Category:JBrowse "Category:JBrowse")
- [Conferences](Category:Conferences "Category:Conferences")
- [GMOD Component](Category:GMOD_Component "Category:GMOD Component")
- <a
  href="http://gmod.org/mediawiki/index.php?title=Category:Tutorial&amp;action=edit&amp;redlink=1"
  class="new" title="Category:Tutorial (page does not exist)">Tutorial</a>

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
  href="http://gmod.org/mediawiki/index.php?title=Special:UserLogin&amp;returnto=JBrowse+PSB+2020"
  accesskey="o"
  title="You are encouraged to log in; however, it is not mandatory [o]">Log
  in / create account</a></span>

</div>

<div id="left-navigation">

<div id="p-namespaces" class="vectorTabs" role="navigation"
aria-labelledby="p-namespaces-label">

### Namespaces

- <span id="ca-nstab-main"><a href="JBrowse_PSB_2020" accesskey="c"
  title="View the content page [c]">Page</a></span>
- <span id="ca-talk"><a
  href="http://gmod.org/mediawiki/index.php?title=Talk:JBrowse_PSB_2020&amp;action=edit&amp;redlink=1"
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

- <span id="ca-view">[Read](JBrowse_PSB_2020)</span>
- <span id="ca-form_edit">[View
  form](http://gmod.org/mediawiki/index.php?title=JBrowse_PSB_2020&action=formedit)</span>
- <span id="ca-viewsource"><a
  href="http://gmod.org/mediawiki/index.php?title=JBrowse_PSB_2020&amp;action=edit"
  accesskey="e" title="This page is protected.
  You can view its source [e]">View source</a></span>
- <span id="ca-history"><a
  href="http://gmod.org/mediawiki/index.php?title=JBrowse_PSB_2020&amp;action=history"
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

- <span id="t-whatlinkshere"><a href="Special:WhatLinksHere/JBrowse_PSB_2020" accesskey="j"
  title="A list of all wiki pages that link here [j]">What links here</a></span>
- <span id="t-recentchangeslinked"><a href="Special:RecentChangesLinked/JBrowse_PSB_2020" accesskey="k"
  title="Recent changes in pages linked from this page [k]">Related
  changes</a></span>
- <span id="t-specialpages"><a href="Special:SpecialPages" accesskey="q"
  title="A list of all special pages [q]">Special pages</a></span>
- <span id="t-print"><a
  href="http://gmod.org/mediawiki/index.php?title=JBrowse_PSB_2020&amp;printable=yes"
  rel="alternate" accesskey="p"
  title="Printable version of this page [p]">Printable version</a></span>
- <span id="t-permalink">[Permanent
  link](http://gmod.org/mediawiki/index.php?title=JBrowse_PSB_2020&oldid=27789 "Permanent link to this revision of the page")</span>
- <span id="t-info">[Page
  information](http://gmod.org/mediawiki/index.php?title=JBrowse_PSB_2020&action=info)</span>
- <span id="t-smwbrowselink"><a href="Special:Browse/JBrowse_PSB_2020" rel="smw-browse">Browse
  properties</a></span>
- <span id="t-pdf">[Print as
  PDF](http://gmod.org/mediawiki/index.php?title=Special:PdfPrint&page=JBrowse_PSB_2020)</span>

</div>

</div>

</div>

</div>

<div id="footer" role="contentinfo">

- <span id="footer-info-lastmod">Last updated at 19:41 on 18 October
  2019.</span>
- <span id="footer-info-viewcount">17,774 page views.</span>
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
