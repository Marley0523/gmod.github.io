<div id="mw-page-base" class="noprint">

</div>

<div id="mw-head-base" class="noprint">

</div>

<div id="content" class="mw-body" role="main">

<span id="top"></span>

<div id="mw-js-message" style="display:none;">

</div>



# <span dir="auto">News/GBrowse 2.13 Release</span>

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

<div class="floatright">

[<img
src="../../mediawiki/images/thumb/0/04/GBrowseLogo.png/200px-GBrowseLogo.png"
srcset="../../mediawiki/images/thumb/0/04/GBrowseLogo.png/300px-GBrowseLogo.png 1.5x, ../../mediawiki/images/thumb/0/04/GBrowseLogo.png/400px-GBrowseLogo.png 2x"
width="200" height="47" alt="GBrowse 2.13 Released" />](../GBrowse.1 "GBrowse 2.13 Released")

</div>

[GBrowse](../GBrowse.1 "GBrowse") version 2.13 has been released. 2.13
is a maintenance update to 2.12. GBrowse 2.13 and 2.12 include these
changes:

New features & enhancements  

- The <a href="../DAS" class="mw-redirect" title="DAS">DAS</a> server
  and client are now functional. You will need
  <a href="http://search.cpan.org/perldoc?Bio::Das" class="external text"
  rel="nofollow">Bio::Das</a> version 1.17 and
  <a href="http://search.cpan.org/perldoc?Bio::Graphics"
  class="external text" rel="nofollow">Bio::Graphics</a> version 2.11
  for best results.
- The "import track" function now allows you to specify the URL of
  either a [BAM](../Glossary#BAM "Glossary") or a BigWig file. The track
  will be displayed without physically copying the file onto the GBrowse
  server. You will need
  <a href="http://search.cpan.org/perldoc?Bio::DB::Sam"
  class="external text" rel="nofollow">Bio::DB::Sam</a> and
  <a href="http://search.cpan.org/perldoc?Bio::DB::BigWig"
  class="external text" rel="nofollow">Bio::DB::BigWig</a> for these
  features to work.
- Uploading a Wig file now generates a BigWig database for improved
  performance and scalability. This requires Bio::DB::BigWig to be
  installed.
- There is now a **Get chromosome sizes** entry in the File menu.
- Calling GBrowse with the CGI argument `action=scan` will generate a
  quick summary of track contents.
- Improved performance when working with truly huge (\>1000 track
  definition) configuration files.
- Fasta, [GFF3](../GFF3 "GFF3"), [SAM](../Glossary#SAM "Glossary") and
  wiggle dumps now include the genome build ID if that information is
  provided in the data source "metadata" configuration variable.

Bug fixes

- When [MySQL](../MySQL "MySQL") is used as the back end for user
  uploads, it will no longer fail on long filenames.
- Fixed the "eurl" CGI parameter for importing data sets by their URLs.
- Fasta and GFF3 dumps are now working when invoked from the File menu.
- Fixed SAM file processing so as not to die when presented with a SAM
  @SQ header. This requires
  <a href="http://search.cpan.org/perldoc?Bio::DB::Sam"
  class="external text" rel="nofollow">Bio::DB::Sam</a> 1.20 to work
  properly.
- Fixed upload listing table so as not to duplicate track labels.
- Fixed track importation via the eurl parameter so that it works when
  the user's uploadid is empty (due to clearing cache of cookies).
- Fixed DAS server handling of the link option.

Please use the <a href="https://sourceforge.net/tracker/?group_id=27707"
class="external text" rel="nofollow">GMOD bug tracking system</a> to
report <a
href="https://sourceforge.net/tracker/?atid=391291&amp;group_id=27707&amp;func=browse"
class="external text" rel="nofollow">bugs</a> or <a
href="https://sourceforge.net/tracker/?atid=391294&amp;group_id=27707&amp;func=browse"
class="external text" rel="nofollow">feature requests</a>.

[Lincoln Stein](../User:Lstein "User:Lstein")

  

<div class="newsfooter">

*Posted to the [GMOD News](../GMOD_News "GMOD News") on 2010/07/13*

</div>

</div>

<div class="printfooter">

Retrieved from
"<http://gmod.org/mediawiki/index.php?title=News/GBrowse_2.13_Release&oldid=22318>"

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
  href="http://gmod.org/mediawiki/index.php?title=Talk:News/GBrowse_2.13_Release&amp;action=edit&amp;redlink=1"
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


- <span id="t-smwbrowselink"><a href="../Special:Browse/News-2FGBrowse_2.13_Release"
  rel="smw-browse">Browse properties</a></span>


</div>

</div>

</div>

</div>

<div id="footer" role="contentinfo">

- <span id="footer-info-lastmod">Last updated at 23:10 on 9 October
  2012.</span>
<!-- - <span id="footer-info-viewcount">7,595 page views.</span> -->
- <span id="footer-info-copyright">Content is available under
  <a href="http://www.gnu.org/licenses/fdl-1.3.html" class="external"
  rel="nofollow">a GNU Free Documentation License</a> unless otherwise
  noted.</span>

<!-- -->

- <span id="footer-places-about">[About
  GMOD](../GMOD:About "GMOD:About")</span>

<!-- -->






</div>
