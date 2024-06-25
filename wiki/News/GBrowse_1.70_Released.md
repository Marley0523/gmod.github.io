<div id="mw-page-base" class="noprint">

</div>

<div id="mw-head-base" class="noprint">

</div>

<div id="content" class="mw-body" role="main">

<span id="top"></span>

<div id="mw-js-message" style="display:none;">

</div>



# <span dir="auto">News/GBrowse 1.70 Released</span>

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

Hello,

I am pleased to announce the official release of
[GBrowse](../GBrowse.1 "GBrowse") 1.70. This is a bug fix release for
GBrowse 1.69. It introduces no new functionality to the GBrowse portion
of the application, however,
[GBrowse_syn](../GBrowse_syn.1 "GBrowse syn") is considerably improved
along with [documentation](../GBrowse_syn.1 "GBrowse syn") and a
<a href="../GBrowse_syn_Tutorial" class="mw-redirect"
title="GBrowse syn Tutorial">tutorial</a>.

There will likely be one more release in the GBrowse 1 development path,
which will introduce improved support for circular genomes. After that,
development on this path will end and further development will focus on
[GBrowse 2](../Category:GBrowse_2 "Category:GBrowse 2").

GBrowse can be installed with the [GBrowse
netinstaller](../GBrowse_Install_HOWTO "GBrowse Install HOWTO").

GBrowse 1.70 can be <a
href="http://sourceforge.net/projects/gmod/files/Generic%20Genome%20Browser/GBrowse-1.70/Generic-Genome-Browser-1.70.tar.gz/download"
class="external text" rel="nofollow">downloaded directly from
SourceForge</a>.

A big thanks to [Lincoln Stein](../User:Lstein "User:Lstein"), the lead
developer of GBrowse, [Sheldon McKay](../User:Mckays "User:Mckays"), the
developer of GBrowse_syn, and all of the GBrowse users who debug and
provide help on the [GBrowse mailing
list](../GMOD_Mailing_Lists "GMOD Mailing Lists").

Changes from 1.69 to 1.70:

- Bug fixes for the Chado adapter, including improving wildcard
  searching and fixing a bug that caused ALL features on a reference
  sequence to be returned when the segment was at the beginning of the
  reference sequence.
- Fixed [Galaxy](../Galaxy.1 "Galaxy") support bug which caused
  prevented features from multiple tracks being selected.
- Fixed problem with feature highlighting which caused highlighting to
  get "stuck"on beige.
- Removed annoying debugging statements from log files
- Fixed character encoding issues for onClick popup balloons
- Killed annoying "missing path" warning on windows systems
- Fixed issue in which the selected region shown in the overview is
  offset from true region.
- Silenced log file warnings when inkscape isn't present.
- Added "merge searches" option to turn merging of similarly-named
  features on and off.
- Moved Bio::DB::Das::Chado and Bio::DB::BioSQL to their own packages
  and out of the GBrowse distribution so they can be updated
  independently via CPAN
- Fixed encoding of version number at the bottom of the page.
- Made the <a href="../DAS" class="mw-redirect" title="DAS">DAS</a>
  script compatible with DAS Registry

[Scott](../User:Scott "User:Scott")

  

<div class="newsfooter">

*Posted to the [GMOD News](../GMOD_News "GMOD News") on 2009/08/24*

</div>

</div>

<div class="printfooter">

Retrieved from
"<http://gmod.org/mediawiki/index.php?title=News/GBrowse_1.70_Released&oldid=16665>"

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


- <span id="ca-talk"><a
  href="http://gmod.org/mediawiki/index.php?title=Talk:News/GBrowse_1.70_Released&amp;action=edit&amp;redlink=1"
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


- <span id="t-smwbrowselink"><a href="../Special:Browse/News-2FGBrowse_1.70_Released"
  rel="smw-browse">Browse properties</a></span>


</div>

</div>

</div>

</div>

<div id="footer" role="contentinfo">

- <span id="footer-info-lastmod">Last updated at 21:56 on 24 January
  2011.</span>
<!-- - <span id="footer-info-viewcount">5,867 page views.</span> -->
- <span id="footer-info-copyright">Content is available under
  <a href="http://www.gnu.org/licenses/fdl-1.3.html" class="external"
  rel="nofollow">a GNU Free Documentation License</a> unless otherwise
  noted.</span>

<!-- -->

- <span id="footer-places-about">[About
  GMOD](../GMOD:About "GMOD:About")</span>

<!-- -->






</div>
