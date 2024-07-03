<div id="mw-page-base" class="noprint">

</div>

<div id="mw-head-base" class="noprint">

</div>

<div id="content" class="mw-body" role="main">

<span id="top"></span>

<div id="mw-js-message" style="display:none;">

</div>



# <span dir="auto">Chado Full Text Search</span>

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

Starting with the 0.30 release of the
<a href="Chado" class="mw-redirect" title="Chado">Chado</a> [GBrowse
adaptor](GBrowse_Adaptors "GBrowse Adaptors")
(<a href="http://search.cpan.org/perldoc?Bio::DB::Das::Chado"
class="external text" rel="nofollow">Bio::DB::Das::Chado</a>), there is
support for full text searching of names and attributes of features in
Chado through the GBrowse "Landmark or Region" search box. This
functionality is present largely due to the initial work by
<a href="http://www.scri.ac.uk/staff/leightonpritchard"
class="external text" rel="nofollow">Leighton Pritchard</a>, and we'd
like to thank him for contributing to the Chado GBrowse adaptor.

## <span id="Prerequisites" class="mw-headline">Prerequisites</span>

- [PostgreSQL](PostgreSQL "PostgreSQL") 8.4
- <a href="Chado" class="mw-redirect" title="Chado">Chado</a> 1.11
- [GBrowse](GBrowse.1 "GBrowse") 1.70 or 2.0

## <span id="Configuration" class="mw-headline">Configuration</span>

Before full text searching can be used, the database must be prepared.
Full text searching requires that a view that is present in the standard
Chado distribution be materialized (that is, turned into a table), as
well as adding a column to a few tables. The Chado GBrowse adaptor comes
with a script, `gmod_chado_fts_prep.pl`, that will perform these
actions:

- Validate that you have the prerequisite software.
- Add "searchable_name" column to the
  [feature](Chado_Sequence_Module#Table:_feature "Chado Sequence Module")
  table.
- Add "searchable_synonym_sgml" column to the
  [synonym](Chado_Sequence_Module#Table:_synonym "Chado Sequence Module")
  table.
- Add "searchable_accession" column to the
  [dbxref](Chado_General_Module#Table:_dbxref "Chado General Module")
  table.
- Add triggers on these tables so that when the name or accession is
  added or modified, the "searchable" column will be updated too.
- Execute the `gmod_materialized_view_tool.pl` to materialize the
  all_feature_names view.

In order to turn on full text searching through GBrowse, the
`-fulltext 1` argument must be passed to the Chado GBrowse adaptor from
the configuration file. Like this example:

    [main:database]
    db_adaptor    = Bio::DB::Das::Chado
    db_args       = -dsn dbi:Pg:dbname=chado;host=localhost;port=5432
                   -user cain
                   -organism 'Saccharomyces cerevisiae'
                   -srcfeatureslice 1
                   -fulltext 1

## <span id="Maintaining_the_materialized_view" class="mw-headline">Maintaining the materialized view</span>

If the data in your
<a href="Chado" class="mw-redirect" title="Chado">Chado</a> database is
changing, it is a good idea to periodically update the all_feature_names
materialized view. The `gmod_materialized_view_tool.pl` has a function
for examining the database and updating materialized views. This
functionality can be run via a
<a href="http://linuxmanpages.com/man8/cron.8.php" class="external text"
rel="nofollow"><code>cron</code></a> job to make it happen on a regular
basis:

     1 0 * * * gmod_materialized_view_tool.pl --automatic

In this example, `cron` will examine the database, and if a view hasn't
be updated recently, it will update the materialized at one minute past
midnight, everyday.

To determine if a materialized view is out of date, the script only
checks when was the last time it was updated, and if it is older than
the configured time, the script recreates the materialized view (that
is, there is no process for "marking" a view as out of date, because for
instance, data has been inserted into one of the underlying tables).
When the all_feature_names materialized view was created with the above
script, the frequency was set at daily, but this can be modified by
updating the materialized_view table, and changing the value in
refresh_time, which is an integer number of seconds. The default value
is 86400 (24 hours \* 60 minutes \* 60 seconds), but can be changed to
weekly (604800) or any other value desired:

<div class="mw-geshi mw-code mw-content-ltr" dir="ltr">

<div class="sql source-sql">

``` de1
  UPDATE materialized_view SET refresh_time = 604800 WHERE name = 'all_feature_names';
```

</div>

</div>

</div>

<div class="printfooter">

Retrieved from
"<http://gmod.org/mediawiki/index.php?title=Chado_Full_Text_Search&oldid=22159>"

</div>

<div id="catlinks" class="catlinks">

<div id="mw-normal-catlinks" class="mw-normal-catlinks">

[Categories](Special%3ACategories "Special%3ACategories"):

- [Chado](Category%3AChado "Category%3AChado")
- [GBrowse](Category%3AGBrowse "Category%3AGBrowse")

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
  href="http://gmod.org/mediawiki/index.php?title=Talk:Chado_Full_Text_Search&amp;action=edit&amp;redlink=1"
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
- <span id="n-FAQs">[FAQs](Category%3AFAQ)</span>
- <span id="n-HOWTOs">[HOWTOs](Category%3AHOWTO)</span>
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


- <span id="t-smwbrowselink"><a href="Special%3ABrowse/Chado_Full_Text_Search" rel="smw-browse">Browse
  properties</a></span>


</div>

</div>

</div>

</div>

<div id="footer" role="contentinfo">

- <span id="footer-info-lastmod">Last updated at 23:33 on 8 October
  2012.</span>
<!-- - <span id="footer-info-viewcount">26,787 page views.</span> -->
- <span id="footer-info-copyright">Content is available under
  <a href="http://www.gnu.org/licenses/fdl-1.3.html" class="external"
  rel="nofollow">a GNU Free Documentation License</a> unless otherwise
  noted.</span>

<!-- -->

- <span id="footer-places-about">[About
  GMOD](GMOD:About "GMOD:About")</span>

<!-- -->






</div>
