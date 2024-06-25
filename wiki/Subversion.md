<div id="mw-page-base" class="noprint">

</div>

<div id="mw-head-base" class="noprint">

</div>

<div id="content" class="mw-body" role="main">

<span id="top"></span>

<div id="mw-js-message" style="display:none;">

</div>



# <span dir="auto">Version Control System Access</span>

<div id="bodyContent">

<div id="siteSub">

From GMOD

</div>

<div id="contentSub">

(Redirected from
[Subversion](http://gmod.org/mediawiki/index.php?title=Subversion&redirect=no "Subversion"))

</div>

<div id="jump-to-nav" class="mw-jump">

Jump to: [navigation](#mw-navigation), [search](#p-search)

</div>

<div id="mw-content-text" class="mw-content-ltr" lang="en" dir="ltr">

*Subversion* (often abbreviated *SVN* is the *source code control*
system used by most of GMOD. Source code control systems, also known as
*revision control* or *version control* systems are used to record
changes to computer files. GMOD's main source code repository is at
<a href="http://gmod.svn.sourceforge.net/" class="external text"
rel="nofollow">SourceForge</a>.

This page explains how to both download and update the main GMOD
repository at SourceForge. For more on SVN itself see the
<a href="http://subversion.tigris.org/" class="external text"
rel="nofollow">Subversion Home Page</a> and the official
<a href="http://svnbook.red-bean.com/" class="external text"
rel="nofollow">Subversion Book</a>.

SVN is used by GMOD developers to update the components. SVN is also
used by some GMOD users, most of whom never modify any GMOD code. GMOD
users access SVN when they want to get component source code so they can
use the latest development version of that component, without having to
wait for the next official release. Please note, however, that
components pulled from SVN are **development** versions, and may not
always work as expected.

<div id="toc" class="toc">

<div id="toctitle">

## Contents

</div>

- [<span class="tocnumber">1</span> <span class="toctext">Browsing SVN
  Repositories</span>](#Browsing_SVN_Repositories)
- [<span class="tocnumber">2</span> <span class="toctext">SVN Read-only
  Access</span>](#SVN_Read-only_Access)
- [<span class="tocnumber">3</span> <span class="toctext">SVN Developer
  Access</span>](#SVN_Developer_Access)
- [<span class="tocnumber">4</span> <span class="toctext">Legacy CVS
  Read-only Access</span>](#Legacy_CVS_Read-only_Access)

</div>

## <span id="Browsing_SVN_Repositories" class="mw-headline">Browsing SVN Repositories</span>

GMOD SVN repositories can be browsed via web:
<a href="http://gmod.svn.sourceforge.net/gmod/" class="external free"
rel="nofollow">http://gmod.svn.sourceforge.net/gmod/</a>.

## <span id="SVN_Read-only_Access" class="mw-headline">SVN Read-only Access</span>

The GMOD [SVN](Glossary#SVN "Glossary") repository can be checked out
through anonymous SVN with the following instruction set. The module you
wish to check out must be specified in place of **PROJECTNAME**.

    svn co https://gmod.svn.sourceforge.net/svnroot/gmod/PROJECTNAME/trunk

See <a href="http://gmod.svn.sourceforge.net/" class="external free"
rel="nofollow">http://gmod.svn.sourceforge.net/</a> for available GMOD
projects in SVN repositories.

You can then get updates with the `svn update` command.

## <span id="SVN_Developer_Access" class="mw-headline">SVN Developer Access</span>

Developer access uses the same URLs as read-only access. When performing
write operations, you will simply be prompted for your SourceForge.net
username and password. To perform write operations, a GMOD project
administrator must have granted you write access to the repository.

## <span id="Legacy_CVS_Read-only_Access" class="mw-headline">Legacy CVS Read-only Access</span>

<div class="emphasisbox" style="font-size: 120%">

GMOD has migrated all projects from CVS to
<a href="http://subversion.tigris.org/" class="external text"
rel="nofollow">Subversion</a> as of September 15, 2009. See the [CVS to
Subversion
Conversion](CVS_to_Subversion_Conversion "CVS to Subversion Conversion")
page.

</div>

The old GMOD [CVS](Glossary#CVS "Glossary") repositories can be checked
out through anonymous (pserver) CVS with the following instruction set.
The module you wish to check out must be specified as the *modulename*.
When prompted for a password for anonymous, simply press the Enter or
Return key.

    cvs -d:pserver:anonymous@gmod.cvs.sourceforge.net:/cvsroot/gmod login
    cvs -d:pserver:anonymous@gmod.cvs.sourceforge.net:/cvsroot/gmod co modulename

If you need to check out a particular revision/tag in the repository,
add *-r tag_name* to the command. For example, if you needed the
'stable' branch of the GBrowse repository, you would do this in your
checkout command:

     cvs -d:pserver:anonymous@gmod.cvs.sourceforge.net:/cvsroot/gmod co -r stable Generic-Genome-Browser

See <a href="http://gmod.cvs.sourceforge.net/" class="external free"
rel="nofollow">http://gmod.cvs.sourceforge.net/</a> for available CVS
repositories.

You can then get updates with the `cvs update -d` command (the `-d`
command tells CVS to get any new directories that have been added to the
repository since the last update).

GMOD CVS repositories can also be browsed on the web:
<a href="http://gmod.cvs.sourceforge.net/gmod/" class="external free"
rel="nofollow">http://gmod.cvs.sourceforge.net/gmod/</a>.

</div>

<div class="printfooter">

Retrieved from
"<http://gmod.org/mediawiki/index.php?title=Version_Control_System_Access&oldid=9306>"

</div>

<div id="catlinks" class="catlinks">

<div id="mw-normal-catlinks" class="mw-normal-catlinks">

[Category](Special:Categories "Special:Categories"):

- [GMOD Developers](Category:GMOD_Developers "Category:GMOD Developers")

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

- <span id="ca-nstab-main"><a href="Version_Control_System_Access" accesskey="c"
  title="View the content page [c]">Page</a></span>
- <span id="ca-talk"><a
  href="http://gmod.org/mediawiki/index.php?title=Talk:Version_Control_System_Access&amp;action=edit&amp;redlink=1"
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

- <span id="t-whatlinkshere"><a href="Special:WhatLinksHere/Version_Control_System_Access"
  accesskey="j" title="A list of all wiki pages that link here [j]">What
  links here</a></span>
- <span id="t-recentchangeslinked"><a href="Special:RecentChangesLinked/Version_Control_System_Access"
  accesskey="k"
  title="Recent changes in pages linked from this page [k]">Related
  changes</a></span>
- <span id="t-specialpages"><a href="Special:SpecialPages" accesskey="q"
  title="A list of all special pages [q]">Special pages</a></span>
- <span id="t-print"><a
  href="http://gmod.org/mediawiki/index.php?title=Version_Control_System_Access&amp;printable=yes"
  rel="alternate" accesskey="p"
  title="Printable version of this page [p]">Printable version</a></span>
- <span id="t-permalink">[Permanent
  link](http://gmod.org/mediawiki/index.php?title=Version_Control_System_Access&oldid=9306 "Permanent link to this revision of the page")</span>
- <span id="t-info">[Page
  information](http://gmod.org/mediawiki/index.php?title=Version_Control_System_Access&action=info)</span>
- <span id="t-smwbrowselink"><a href="Special:Browse/Version_Control_System_Access"
  rel="smw-browse">Browse properties</a></span>
- <span id="t-pdf">[Print as
  PDF](http://gmod.org/mediawiki/index.php?title=Special:PdfPrint&page=Version_Control_System_Access)</span>

</div>

</div>

</div>

</div>

<div id="footer" role="contentinfo">

- <span id="footer-info-lastmod">Last updated at 16:46 on 15 September
  2009.</span>
- <span id="footer-info-viewcount">125,101 page views.</span>
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
