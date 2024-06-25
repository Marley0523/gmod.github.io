<div id="mw-page-base" class="noprint">

</div>

<div id="mw-head-base" class="noprint">

</div>

<div id="content" class="mw-body" role="main">

<span id="top"></span>

<div id="mw-js-message" style="display:none;">

</div>



# <span dir="auto">GBrowse Windows HOWTO</span>

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

- [<span class="tocnumber">1</span>
  <span class="toctext">WARNING</span>](#WARNING)
- [<span class="tocnumber">2</span>
  <span class="toctext">Abstract</span>](#Abstract)
- [<span class="tocnumber">3</span> <span class="toctext">Windows
  Installation</span>](#Windows_Installation)
  - [<span class="tocnumber">3.1</span> <span class="toctext">Install
    ActiveState Perl</span>](#Install_ActiveState_Perl)
  - [<span class="tocnumber">3.2</span> <span class="toctext">Install
    the Apache web server</span>](#Install_the_Apache_web_server)
  - [<span class="tocnumber">3.3</span> <span class="toctext">Install
    the MySQL database
    (optional)</span>](#Install_the_MySQL_database_.28optional.29)
  - [<span class="tocnumber">3.4</span> <span class="toctext">Install
    GBrowse and its Perl
    Dependencies</span>](#Install_GBrowse_and_its_Perl_Dependencies)
- [<span class="tocnumber">4</span>
  <span class="toctext">Authors</span>](#Authors)

</div>

## <span id="WARNING" class="mw-headline">WARNING</span>

This document has serious issues and installing GBrowse 1.70 on Windows
is not easy as a result. Unless you absolutely must use Windows, I
suggest you try Linux (as a virtual machine if necessary) instead.

## <span id="Abstract" class="mw-headline">Abstract</span>

This HOWTO describes a method for installing
[GBrowse](GBrowse.1 "GBrowse") version 1.x (currently 1.70) on Windows;
GBrowse 2.0 is not supported on Windows.

## <span id="Windows_Installation" class="mw-headline">Windows Installation</span>

Before installing on Windows systems, you will need to install
ActiveState Perl and the Apache web server. You may also wish to install
a database management system such as MySQL.

### <span id="Install_ActiveState_Perl" class="mw-headline">Install ActiveState Perl</span>

*This may be a show stopper: BioPerl can't be installed in the current
releases of ActiveState Perl versions 5.12 and 5.14 because (as far as I
know), DB_File can't be installed in those releases. It may be possible
to install BioPerl and GBrowse using
<a href="http://strawberryperl.com/" class="external text"
rel="nofollow">Strawberry Perl</a>, but I haven't tried.*

Go to <a href="http://www.activestate.com" class="external text"
rel="nofollow">ActiveState.com</a>, and download the product
"ActivePerl." This is a little confusing because web site tries to point
you to the commercial product, ASPN Perl. At the current time, the full
download URL for ActivePerl is:

<a
href="http://www.activestate.com/Products/Download/Download.plex?id=ActivePerl"
class="external free"
rel="nofollow">http://www.activestate.com/Products/Download/Download.plex?id=ActivePerl</a>

Choose the "MSI" package for Windows for Perl version 5.8. (**Version
5.10 does not currently work due to modules that have not yet been made
available by ActiveState!**) Once downloaded, launch the package, and it
will install automatically. Unfortunately, the missing module is
DB_File, and is still missing from all post-5.8 releases of ActiveState
Perl. I believe it can be installed in ActiveState Perl 5.10 using the
<a href="http://trouchelle.com/perl/ppmrepview.pl" class="external text"
rel="nofollow">Trouchelle repo</a>. I don't know of a similar repo for
ActiveState Perl 5.12 or 5.14. It might be possible to install GBrowse
with <a href="http://strawberryperl.com/" class="external text"
rel="nofollow">Strawberry Perl</a>, but I haven't tried.

*Please accept the default location for ActiveState Perl; this will make
it easier to install GBrowse.*

### <span id="Install_the_Apache_web_server" class="mw-headline">Install the Apache web server</span>

Go to
<a href="http://httpd.apache.org/download.cgi" class="external free"
rel="nofollow">http://httpd.apache.org/download.cgi</a>. Select the most
recent version of Apache, and choose the download marked "Win32 Binary
(MSI Installer)." Once downloaded, launch the package and it will
install automatically.

*Please accept the default location for Apache.*

### <span id="Install_the_MySQL_database_.28optional.29" class="mw-headline">Install the MySQL database (optional)</span>

Do this only if you want to run the [MySQL](MySQL "MySQL") backend to
GBrowse. You might want to wait until after you've played with the
flat-file based implementation a bit and decide you need better
performance.

Go to
<a href="http://dev.mysql.com/downloads/mysql" class="external free"
rel="nofollow">http://dev.mysql.com/downloads/mysql</a>. Select and
download the most recent version of the Windows package. Once the
package is downloaded, you will need to unpack it with the WinZip
program. Then launch the installer.

After installing MySQL, install DBD::mysql; the easiest way to do that
is via the ActiveState ppm utility.

### <span id="Install_GBrowse_and_its_Perl_Dependencies" class="mw-headline">Install GBrowse and its Perl Dependencies</span>

Download the <a
href="https://raw.github.com/GMOD/GBrowse/master/bin/gbrowse_netinstall.pl"
class="external text"
rel="nofollow"><code>gbrowse_netinstall.pl</code></a> script. The script
works best when <a href="http://apache.org" class="external text"
rel="nofollow">Apache</a> and
<a href="http://www.activestate.com" class="external text"
rel="nofollow">ActiveState</a> Perl 5.8 are already installed using the
default locations. Execute the command in the DOS command shell:

     perl gbrowse_netinstall.pl

And answer questions that are presented (the defaults will be acceptable
most of the time, but be careful if you've changed the location of
ActiveState and/or Apache!). A few notes:

- The script requires the LWP Perl package be installed, but it comes by
  default with ActiveState Perl 5.8.
- The script also works for Linux and MacOS as long as it is run as root
  (e.g. with `sudo`). Please see the [GBrowse](GBrowse.1 "GBrowse")
  install doc for more information on what this script is doing.
- *This is out of date, as the bulk loader doesn't yet support pulling
  GBrowse from git.* If you want to use the `-d`, `--bioperl_dev`, or
  `--gbrowse_dev` options (to install from
  <a href="SVN" class="mw-redirect" title="SVN">SVN</a>), you must have
  a <a href="Subversion" class="mw-redirect"
  title="Subversion">Subversion</a> client installed, such as
  <a href="http://tortoisesvn.tigris.org/" class="external text"
  rel="nofollow">TortoiseSVN</a> or
  <a href="http://rapidsvn.tigris.org/" class="external text"
  rel="nofollow">RapidSVN</a> or
  <a href="http://www.xptweaks.net/" class="external text"
  rel="nofollow">xp tweaks</a>

## <span id="Authors" class="mw-headline">Authors</span>

- [Lincoln Stein](User:Lstein "User:Lstein")
- [Scott Cain](User:Scott "User:Scott")

</div>

<div class="printfooter">

Retrieved from
"<http://gmod.org/mediawiki/index.php?title=GBrowse_Windows_HOWTO&oldid=18286>"

</div>

<div id="catlinks" class="catlinks">

<div id="mw-normal-catlinks" class="mw-normal-catlinks">

[Categories](Special:Categories "Special:Categories"):

- [GBrowse](Category:GBrowse "Category:GBrowse")
- [HOWTO](Category:HOWTO "Category:HOWTO")
- [Windows](Category:Windows "Category:Windows")

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

- <span id="ca-nstab-main"><a href="GBrowse_Windows_HOWTO" accesskey="c"
  title="View the content page [c]">Page</a></span>
- <span id="ca-talk"><a
  href="http://gmod.org/mediawiki/index.php?title=Talk:GBrowse_Windows_HOWTO&amp;action=edit&amp;redlink=1"
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


- <span id="t-smwbrowselink"><a href="Special:Browse/GBrowse_Windows_HOWTO" rel="smw-browse">Browse
  properties</a></span>
- <span id="t-pdf">[Print as
  PDF](http://gmod.org/mediawiki/index.php?title=Special:PdfPrint&page=GBrowse_Windows_HOWTO)</span>

</div>

</div>

</div>

</div>

<div id="footer" role="contentinfo">

- <span id="footer-info-lastmod">Last updated at 15:07 on 27 July
  2011.</span>
- <span id="footer-info-viewcount">111,780 page views.</span>
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
