<div id="mw-page-base" class="noprint">

</div>

<div id="mw-head-base" class="noprint">

</div>

<div id="content" class="mw-body" role="main">

<span id="top"></span>

<div id="mw-js-message" style="display:none;">

</div>



# <span dir="auto">JBrowse Troubleshooting</span>

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

This page collects solutions to problems that people sometimes encounter
when installing JBrowse.

<div id="toc" class="toc">

<div id="toctitle">

## Contents

</div>

- [<span class="tocnumber">1</span> <span class="toctext">Installing
  prerequisites - libpng, zlib, libgd,
  etc</span>](#Installing_prerequisites_-_libpng.2C_zlib.2C_libgd.2C_etc)
  - [<span class="tocnumber">1.1</span> <span class="toctext">Linux -
    Ubuntu / Debian</span>](#Linux_-_Ubuntu_.2F_Debian)
  - [<span class="tocnumber">1.2</span> <span class="toctext">Linux -
    Red Hat / Fedora /
    CentOS</span>](#Linux_-_Red_Hat_.2F_Fedora_.2F_CentOS)
  - [<span class="tocnumber">1.3</span> <span class="toctext">Mac OS
    X</span>](#Mac_OS_X)
- [<span class="tocnumber">2</span> <span class="toctext">Other
  Problems</span>](#Other_Problems)

</div>

# <span id="Installing_prerequisites_-_libpng.2C_zlib.2C_libgd.2C_etc" class="mw-headline">Installing prerequisites - libpng, zlib, libgd, etc</span>

JBrowse requires a few fundamental prerequisites that it cannot install
itself: these are libpng, zlib, libgd, make, a C compiler, and a C++
compiler.

## <span id="Linux_-_Ubuntu_.2F_Debian" class="mw-headline">Linux - Ubuntu / Debian</span>

These commands, or similar, should install what you need:

     sudo apt-get install build-essential libpng-dev zlib1g-dev libgd2-xpm-dev

## <span id="Linux_-_Red_Hat_.2F_Fedora_.2F_CentOS" class="mw-headline">Linux - Red Hat / Fedora / CentOS</span>

These commands, or similar, should install what you need:

     sudo yum groupinstall "Development Tools"
     sudo yum install libpng-devel gd-devel zlib-devel perl-ExtUtils-MakeMaker

## <span id="Mac_OS_X" class="mw-headline">Mac OS X</span>

Use <a href="http://www.macports.org/" class="external text"
rel="nofollow">MacPorts</a>,
<a href="http://www.finkproject.org/" class="external text"
rel="nofollow">Fink</a>,
<a href="http://mxcl.github.com/homebrew/" class="external text"
rel="nofollow">Homebrew</a>, or another package manager to install a C++
compiler, libpng development headers, GD development headers, and Zlib
development headers.

# <span id="Other_Problems" class="mw-headline">Other Problems</span>

If nothing on this page helps you, try emailing the JBrowse mailing
list.

The setup script creates a file called `setup.log`, contains detailed
information on your installation. Email
<a href="mailto:gmod-ajax@lists.sourceforge.net" class="external text"
rel="nofollow">gmod-ajax@lists.sourceforge.net</a> with a request for
support, and attach your `setup.log` file to the email. Please do not
put the setup.log file directly in the email body.

As more users try `setup.sh` and report problems to the mailing list,
this wiki will be updated with fixes for common problems they encounter.

</div>

<div class="printfooter">

Retrieved from
"<http://gmod.org/mediawiki/index.php?title=JBrowse_Troubleshooting&oldid=24552>"

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

- <span id="ca-nstab-main"><a href="JBrowse_Troubleshooting" accesskey="c"
  title="View the content page [c]">Page</a></span>
- <span id="ca-talk"><a
  href="http://gmod.org/mediawiki/index.php?title=Talk:JBrowse_Troubleshooting&amp;action=edit&amp;redlink=1"
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

- <span id="t-whatlinkshere"><a href="Special:WhatLinksHere/JBrowse_Troubleshooting" accesskey="j"
  title="A list of all wiki pages that link here [j]">What links here</a></span>
- <span id="t-recentchangeslinked"><a href="Special:RecentChangesLinked/JBrowse_Troubleshooting"
  accesskey="k"
  title="Recent changes in pages linked from this page [k]">Related
  changes</a></span>
- <span id="t-specialpages"><a href="Special:SpecialPages" accesskey="q"
  title="A list of all special pages [q]">Special pages</a></span>
- <span id="t-print"><a
  href="http://gmod.org/mediawiki/index.php?title=JBrowse_Troubleshooting&amp;printable=yes"
  rel="alternate" accesskey="p"
  title="Printable version of this page [p]">Printable version</a></span>
- <span id="t-permalink">[Permanent
  link](http://gmod.org/mediawiki/index.php?title=JBrowse_Troubleshooting&oldid=24552 "Permanent link to this revision of the page")</span>
- <span id="t-info">[Page
  information](http://gmod.org/mediawiki/index.php?title=JBrowse_Troubleshooting&action=info)</span>
- <span id="t-smwbrowselink"><a href="Special:Browse/JBrowse_Troubleshooting" rel="smw-browse">Browse
  properties</a></span>
- <span id="t-pdf">[Print as
  PDF](http://gmod.org/mediawiki/index.php?title=Special:PdfPrint&page=JBrowse_Troubleshooting)</span>

</div>

</div>

</div>

</div>

<div id="footer" role="contentinfo">

- <span id="footer-info-lastmod">Last updated at 12:28 on 25 September
  2013.</span>
- <span id="footer-info-viewcount">39,332 page views.</span>
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
