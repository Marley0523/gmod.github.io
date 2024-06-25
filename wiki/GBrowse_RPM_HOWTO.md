<div id="mw-page-base" class="noprint">

</div>

<div id="mw-head-base" class="noprint">

</div>

<div id="content" class="mw-body" role="main">

<span id="top"></span>

<div id="mw-js-message" style="display:none;">

</div>



# <span dir="auto">GBrowse RPM HOWTO</span>

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

> **This page or section needs to be edited.**
> <span class="small">Please help by <span class="plainlinks"><a
> href="http://gmod.org/mediawiki/index.php?title=GBrowse_RPM_HOWTO&amp;action=edit"
> class="external text" rel="nofollow">editing this page</a></span> to
> add your revisions or additions.</span>

**Important note:** The instructions below will install a relatively old
version of GBrowse (1.54 I think). To install a newer version, first
install the Apache webserver (httpd) and libgd with yum:

     sudo yum install gd-devel httpd

and then follow the directions on [the main install
page](GBrowse_Install_HOWTO "GBrowse Install HOWTO") for using the net
install script. If you don't want or need the 'bleating edge', just
ignore this note.

<div id="toc" class="toc">

<div id="toctitle">

## Contents

</div>

- [<span class="tocnumber">1</span>
  <span class="toctext">Biopackages</span>](#Biopackages)
- [<span class="tocnumber">2</span>
  <span class="toctext">Preliminaries</span>](#Preliminaries)
- [<span class="tocnumber">3</span> <span class="toctext">Installing
  Packages</span>](#Installing_Packages)
- [<span class="tocnumber">4</span>
  <span class="toctext">Authors</span>](#Authors)

</div>

# <span id="Biopackages" class="mw-headline">Biopackages</span>

RPM-based Linux distributions, including
<a href="http://fedoraproject.org/" class="external text"
rel="nofollow">Fedora</a> and
<a href="http://www.centos.org" class="external text"
rel="nofollow">CentOS</a>, can install GBrowse using the RPMs located at
<a href="http://www.biopackages.net/" class="external free"
rel="nofollow">http://www.biopackages.net/</a>. These can be installed
using the
<a href="http://en.wikipedia.org/wiki/Yellow_dog_Updater_Modified"
class="external text" rel="nofollow">yum</a> installer tool. For more
information please see the [Biopackages
HOWTO](Biopackages_HOWTO "Biopackages HOWTO").

# <span id="Preliminaries" class="mw-headline">Preliminaries</span>

See the [Biopackages HOWTO](Biopackages_HOWTO "Biopackages HOWTO") for
the steps to setup Biopackages on your system.

# <span id="Installing_Packages" class="mw-headline">Installing Packages</span>

First, as root, freshen your local cache of yum header files. Yum will
print something similar to what is below:

    % yum update
    Gathering header information file(s) from server(s)
    Server: Fedora Core 2 - x86_64 - Base
    Server: BioPackages (Stable x86_64) for Fedora Core 2 - x86_64
    Server: BioPackages (Stable noarch) for Fedora Core 2 - x86_64
    Server: Fedora Core 2 - x86_64 - Released Updates
    Finding updated packages
    Downloading needed headers
    genome-Sce-annotation-gen 100% |=========================| 1.1 kB    00:00
    genome-Sce-nib-0-S228C-3. 100% |=========================| 1.7 kB    00:00
    chado-Sce-0-S228C.0.003-2 100% |=========================| 2.0 kB    00:00
    genome-Sce-annotation-aff 100% |=========================| 1.2 kB    00:00
    genome-Sce-0-S228C-3.2005 100% |=========================| 1.7 kB    00:00

Then install gbrowse:

    % yum install gbrowse

You can now visit the documentation and try out the example Yeast
database by visiting
<a href="http://localhost/gbrowse" class="external free"
rel="nofollow">http://localhost/gbrowse</a>

NOTE: One problem with the RPM install is it currently installs gbrowse
into it's own directory (e.g. /var/www/cgi-bin/gbrowse/). This means
that the yeast example referenced in
<a href="http://localhost/gbrowse" class="external free"
rel="nofollow">http://localhost/gbrowse</a> should actually point to
<a href="http://localhost/cgi-bin/gbrowse/gbrowse/yeast_chr1"
class="external free"
rel="nofollow">http://localhost/cgi-bin/gbrowse/gbrowse/yeast_chr1</a>.

# <span id="Authors" class="mw-headline">Authors</span>

[Lincoln Stein](User:Lstein "User:Lstein") 12:51, 17 April 2007 (EDT)

Some material cut and paste from www.biopackages.net, with permission
from Allen Day.

<a
href="http://gmod.org/mediawiki/index.php?title=User:Boconnor&amp;action=edit&amp;redlink=1"
class="new" title="User:Boconnor (page does not exist)">Brian
O'Connor</a> 12:12, 19 April 2007 (PDT)

Updated the install description of Biopackages to use our new
configuration RPMs.

  
<a
href="http://gmod.org/mediawiki/index.php?title=User:Boconnor&amp;action=edit&amp;redlink=1"
class="new" title="User:Boconnor (page does not exist)">Brian
O'Connor</a> 12:18, 05 June 2007 (PDT)

Added note about install path for gbrowse.

</div>

<div class="printfooter">

Retrieved from
"<http://gmod.org/mediawiki/index.php?title=GBrowse_RPM_HOWTO&oldid=6279>"

</div>

<div id="catlinks" class="catlinks">

<div id="mw-normal-catlinks" class="mw-normal-catlinks">

[Categories](Special:Categories "Special:Categories"):

- [Needs Editing](Category:Needs_Editing "Category:Needs Editing")
- [GBrowse](Category:GBrowse "Category:GBrowse")
- [HOWTO](Category:HOWTO "Category:HOWTO")
- [Linux](Category:Linux "Category:Linux")

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
  href="http://gmod.org/mediawiki/index.php?title=Talk:GBrowse_RPM_HOWTO&amp;action=edit&amp;redlink=1"
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


- <span id="t-smwbrowselink"><a href="Special:Browse/GBrowse_RPM_HOWTO" rel="smw-browse">Browse
  properties</a></span>


</div>

</div>

</div>

</div>

<div id="footer" role="contentinfo">

- <span id="footer-info-lastmod">Last updated at 11:32 on 28 October
  2008.</span>
<!-- - <span id="footer-info-viewcount">78,137 page views.</span> -->
- <span id="footer-info-copyright">Content is available under
  <a href="http://www.gnu.org/licenses/fdl-1.3.html" class="external"
  rel="nofollow">a GNU Free Documentation License</a> unless otherwise
  noted.</span>

<!-- -->

- <span id="footer-places-about">[About
  GMOD](GMOD:About "GMOD:About")</span>

<!-- -->






</div>
