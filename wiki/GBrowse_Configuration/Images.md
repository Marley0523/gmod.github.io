<div id="mw-page-base" class="noprint">

</div>

<div id="mw-head-base" class="noprint">

</div>

<div id="content" class="mw-body" role="main">

<span id="top"></span>

<div id="mw-js-message" style="display:none;">

</div>



# <span dir="auto">GBrowse Configuration/Images</span>

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

This article describes **static images** and how to create them in
[GBrowse](../GBrowse.1 "GBrowse").

For the main GBrowse configuration article, see:

- <a href="../GBrowse_Configuration" class="mw-redirect"
  title="GBrowse Configuration">GBrowse Configuration</a> or
- [GBrowse 2.0 HOWTO](../GBrowse_2.0_HOWTO "GBrowse 2.0 HOWTO").

## <span id="Generating_Static_Images:_PNGs.2C_SVGs_and_PDFs" class="mw-headline">Generating Static Images: PNGs, SVGs and PDFs</span>

GBrowse can create three types of static image suitable for
incorporation into posters, publications or other web pages:

- PNG -- a bitmapped format suitable for low-resolution graphics, such
  as web pages.
- SVG -- an editable vector-graphics format, suitable for posters,
  publications and other high-resolution applications.
- PDF -- the familiar document exchange format, suitable for posters,
  publications and other high-resolution applications.

All the work is handled by the *gbrowse_img* script and needs little
configuration. When the user selects a region and set of tracks to
browse, the "link to image" and "high-res image" links at the top of the
page will be automatically set to reproduce the user's view as closely
as possible. GBrowse_img customization options, including instructions
on how to embed an image in a web page so that the clickable imagemap
links are maintained, can be found
<a href="http://www.wormbase.org/db/seq/gbrowse_img"
class="external text" rel="nofollow">here</a>.

The PNG generation will work in the default installation. In order to
get SVG generation to work, you will need to install the perl SVG and
GD::SVG modules, available from
<a href="http://www.cpan.org" class="external text"
rel="nofollow">CPAN</a>.

For PDF generation, you will need the perl GD and GD::SVG modules
installed, as well as a helper application called
<a href="http://www.inkscape.org/index.php" class="external text"
rel="nofollow">Inkscape</a>. Inkscape provies a command-line tool that
will convert SVG files into PDF. To install, download and install it
somewhere on the standard system path (e.g. /usr/bin). You will then
need to create two subdirectories in the web user's home directory in
order for inkscape to work properly. Assuming that the web user is
"www-data" run the following commands:

    sudo mkdir ~www-data/{.inkscape,.gnome2}
    sudo chown www-data ~www-data/{.inkscape,.gnome2}

This will create the two directories ".inkscape" and ".gnome2" in the
www-data user's home directory, and make them writable by the www-data
user.

Unfortunately, Inkscape will generate a one line warning into the server
error log every time it executes:

    (inkscape:28490): Gdk-CRITICAL **: gdk_display_list_devices: assertion `GDK_IS_DISPLAY (display)' failed

At the current time there is no known fix for this problem.

Note that Inkscape PDF generation should work properly on all platforms,
including Linux, Mac OSX and Windows. However, it has only been tested
on Linux platforms at the current time.

</div>

<div class="printfooter">

Retrieved from
"<http://gmod.org/mediawiki/index.php?title=GBrowse_Configuration/Images&oldid=14152>"

</div>

<div id="catlinks" class="catlinks">

<div id="mw-normal-catlinks" class="mw-normal-catlinks">

[Categories](../Special:Categories "Special:Categories"):

- [GBrowse](../Category:GBrowse "Category:GBrowse")
- [HOWTO](../Category:HOWTO "Category:HOWTO")
- [Configuration](../Category:Configuration "Category:Configuration")

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
  href="http://gmod.org/mediawiki/index.php?title=Talk:GBrowse_Configuration/Images&amp;action=edit&amp;redlink=1"
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


- <span id="t-smwbrowselink"><a href="../Special:Browse/GBrowse_Configuration-2FImages"
  rel="smw-browse">Browse properties</a></span>


</div>

</div>

</div>

</div>

<div id="footer" role="contentinfo">

- <span id="footer-info-lastmod">Last updated at 09:23 on 12 August
  2010.</span>
<!-- - <span id="footer-info-viewcount">26,182 page views.</span> -->
- <span id="footer-info-copyright">Content is available under
  <a href="http://www.gnu.org/licenses/fdl-1.3.html" class="external"
  rel="nofollow">a GNU Free Documentation License</a> unless otherwise
  noted.</span>

<!-- -->

- <span id="footer-places-about">[About
  GMOD](../GMOD:About "GMOD:About")</span>

<!-- -->






</div>
