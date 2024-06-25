<div id="mw-page-base" class="noprint">

</div>

<div id="mw-head-base" class="noprint">

</div>

<div id="content" class="mw-body" role="main">

<span id="top"></span>

<div id="mw-js-message" style="display:none;">

</div>



# <span dir="auto">News/cas-utils-0.1 Released</span>

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

In the wake of the <a href="../GMOD_Summer_School" class="mw-redirect"
title="GMOD Summer School">GMOD Summer School</a> a little over a week
ago, I decided that I should create a release that has the tools that I
used to tie together [GBrowse](../GBrowse.1 "GBrowse"),
[Apollo](../Apollo.1 "Apollo") and
<a href="../Chado" class="mw-redirect" title="Chado">Chado</a>. It can
be downloaded at:

    http://sourceforge.net/project/showfiles.php?group_id=27707&package_id=284978

These utilities consist of 4 main tools:

- A CGI for selecting a region in GBrowse, extracting the data for

that region from Apollo and creating an
[XML](../Glossary#XML "Glossary") file and a Java Webstart (.jnlp) file
for Apollo.

- A CGI for accepting uploads of edited XML files to either be

immediately loaded into Chado or to be held for validation.

- A configuration perl module to make modifying the CGI's behavior easy.
- A Module::Build based installer that queries the user for needed setup
  data.

While this release of cas-utils assumes that the port for connecting to
the database is blocked for outside users, future releases of these
tools could be configured to assume the reverse. Another item planned
for a future release is tools for integrating Chado with a MediaWiki
site for more text-based annotation. Of course, because of the nature of
these tools, it is assumed that several things are already in place and
working:

- Chado with computational analysis and annotation data already loaded.
- GBrowse (either 1.69 (to be released soon) or from the stable cvs
  branch).
- Apollo, both as an installed application (like in /usr/bin), and as

source that has been built into a webstart application and installed for
the web server to use.

If you have questions about either cas-utils or any of the
prerequisites, please send questions to the most appropriate mailing
list:

- Chado:
  <a href="mailto:gmod-schema@lists.sourceforge.net" class="external text"
  rel="nofollow">gmod-schema@lists.sourceforge.net</a>
- GBrowse: <a href="mailto:gmod-gbrowse@lists.sourceforge.net"
  class="external text"
  rel="nofollow">gmod-gbrowse@lists.sourceforge.net</a>
- Apollo: <a href="mailto:apollo@fruitfly.org" class="external text"
  rel="nofollow">apollo@fruitfly.org</a>

I've only tested this application on CentOS 4.6 and Ubuntu 8.04, though
there is no reason to believe that this wouldn't work on any Linux and
probably on MacOS as well. I am considerably less sure that this would
work out of the box on Windows, but support for that could probably be
in a future release if the demand is there.

Thanks and happy curating! [Scott Cain](../User:Scott "User:Scott")

  

<div class="newsfooter">

*Posted to the [GMOD News](../GMOD_News "GMOD News") on 2008/07/22*

</div>

</div>

<div class="printfooter">

Retrieved from
"<http://gmod.org/mediawiki/index.php?title=News/cas-utils-0.1_Released&oldid=16628>"

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

- <span id="ca-nstab-main"><a href="cas-utils-0.1_Released" accesskey="c"
  title="View the content page [c]">Page</a></span>
- <span id="ca-talk"><a
  href="http://gmod.org/mediawiki/index.php?title=Talk:News/cas-utils-0.1_Released&amp;action=edit&amp;redlink=1"
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


- <span id="t-smwbrowselink"><a href="../Special:Browse/News-2Fcas-2Dutils-2D0.1_Released"
  rel="smw-browse">Browse properties</a></span>
- <span id="t-pdf">[Print as
  PDF](http://gmod.org/mediawiki/index.php?title=Special:PdfPrint&page=News/cas-utils-0.1_Released)</span>

</div>

</div>

</div>

</div>

<div id="footer" role="contentinfo">

- <span id="footer-info-lastmod">Last updated at 21:20 on 24 January
  2011.</span>
<!-- - <span id="footer-info-viewcount">6,353 page views.</span> -->
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


<div style="clear:both">

</div>

</div>
