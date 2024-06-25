<div id="mw-page-base" class="noprint">

</div>

<div id="mw-head-base" class="noprint">

</div>

<div id="content" class="mw-body" role="main">

<span id="top"></span>

<div id="mw-js-message" style="display:none;">

</div>



# <span dir="auto">Chado GBrowse Summary View</span>

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

Starting in [GBrowse](GBrowse.1 "GBrowse") version 2.13, administrators
have the option of configuring a *summary view* (feature density) for
tracks when zoomed out too far to effectively show individual features,
and starting with the 0.30 release of
<a href="http://search.cpan.org/perldoc?Bio::DB::Das::Chado"
class="external text" rel="nofollow">Bio::DB::Das::Chado</a> this
functionality is supported for browsing
<a href="Chado" class="mw-redirect" title="Chado">Chado</a> databases
with GBrowse.

## <span id="Prerequisites" class="mw-headline">Prerequisites</span>

- [GBrowse](GBrowse.1 "GBrowse") 2.13
- <a href="http://search.cpan.org/perldoc?Bio::DB::Das::Chado"
  class="external text" rel="nofollow">Bio::DB::Das::Chado</a> 0.31
- [PostgreSQL](PostgreSQL "PostgreSQL") 8.1 (probably--I only tested
  with 8.4, but I'm reasonably sure it will work with versions back to
  8.1)

## <span id="Configuration" class="mw-headline">Configuration</span>

To support the summary view,
<a href="Chado" class="mw-redirect" title="Chado">Chado</a> needs an
additional table that the Chado [GBrowse
adaptor](GBrowse_Adaptors "GBrowse Adaptors") will use to calculate the
summary view. To create this table (gff_interval_stats) and populate it
with data, the
<a href="http://search.cpan.org/perldoc?Bio::DB::Das::Chado"
class="external text" rel="nofollow">Bio::DB::Das::Chado</a>
distribution comes with a perl script,
`gmod_create_summary_statistics.pl`. Executing this script, optionally
with a `--dbprofile` flag to indicate the database to work on, will
create the table if it doesn't exist, as well as a few stored procedures
for populating the table, and then execute the stored procedure. This
script can also be used in a
<a href="http://linuxmanpages.com/man8/cron.8.php" class="external text"
rel="nofollow"><code>cron</code></a> job to periodically recreate the
data in the summary statistics data when the data in the table becomes
stale due to added data.

To turn on summaries, add this line to your data source's conf file in
the main section:

     show summary   = 100000

which will make all tracks go to the summary view when the region shown
is greater than 100000. To turn summaries off for a given track, add

     show summary   = 0

to the track configuration.

</div>

<div class="printfooter">

Retrieved from
"<http://gmod.org/mediawiki/index.php?title=Chado_GBrowse_Summary_View&oldid=17637>"

</div>

<div id="catlinks" class="catlinks">

<div id="mw-normal-catlinks" class="mw-normal-catlinks">

[Categories](Special:Categories "Special:Categories"):

- [GBrowse](Category:GBrowse "Category:GBrowse")
- [Chado](Category:Chado "Category:Chado")

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

- <span id="ca-nstab-main"><a href="Chado_GBrowse_Summary_View" accesskey="c"
  title="View the content page [c]">Page</a></span>
- <span id="ca-talk"><a href="Talk:Chado_GBrowse_Summary_View" accesskey="t"
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


- <span id="t-smwbrowselink"><a href="Special:Browse/Chado_GBrowse_Summary_View"
  rel="smw-browse">Browse properties</a></span>


</div>

</div>

</div>

</div>

<div id="footer" role="contentinfo">

- <span id="footer-info-lastmod">Last updated at 12:55 on 4 May
  2011.</span>
<!-- - <span id="footer-info-viewcount">17,392 page views.</span> -->
- <span id="footer-info-copyright">Content is available under
  <a href="http://www.gnu.org/licenses/fdl-1.3.html" class="external"
  rel="nofollow">a GNU Free Documentation License</a> unless otherwise
  noted.</span>

<!-- -->

- <span id="footer-places-about">[About
  GMOD](GMOD:About "GMOD:About")</span>

<!-- -->






</div>
