<div id="mw-page-base" class="noprint">

</div>

<div id="mw-head-base" class="noprint">

</div>

<div id="content" class="mw-body" role="main">

<span id="top"></span>

<div id="mw-js-message" style="display:none;">

</div>



# <span dir="auto">PostgreSQL Performance Tips</span>

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
  <span class="toctext">Background</span>](#Background)
- [<span class="tocnumber">2</span> <span class="toctext">General
  Tips</span>](#General_Tips)
- [<span class="tocnumber">3</span> <span class="toctext">Database
  initialization</span>](#Database_initialization)
- [<span class="tocnumber">4</span> <span class="toctext">Configuration
  options</span>](#Configuration_options)
- [<span class="tocnumber">5</span>
  <span class="toctext">Vacuuming</span>](#Vacuuming)
  - [<span class="tocnumber">5.1</span> <span class="toctext">Auto
    vacuuming</span>](#Auto_vacuuming)
- [<span class="tocnumber">6</span> <span class="toctext">Powering
  GBrowse</span>](#Powering_GBrowse)
- [<span class="tocnumber">7</span> <span class="toctext">Installing
  Schema</span>](#Installing_Schema)

</div>

## <span id="Background" class="mw-headline">Background</span>

This page is for collecting tips on tuning
[PostgreSQL](PostgreSQL "PostgreSQL"), especially when using it with
<a href="Chado" class="mw-redirect" title="Chado">Chado</a>. Feel free
to place information from your own experience on this page. Unless
otherwise indicated the tips on this page refer to PostgreSQL servers in
the 8.x series.

## <span id="General_Tips" class="mw-headline">General Tips</span>

- <a href="http://wiki.postgresql.org/wiki/Tuning_Your_PostgreSQL_Server"
  class="external text" rel="nofollow">Tuning Your PostgreSQL Server</a>
- <a href="http://wiki.postgresql.org/wiki/Performance_Optimization"
  class="external text" rel="nofollow">Performance Optimization</a>
- <a
  href="http://wiki.postgresql.org/wiki/FAQ#How_do_I_tune_the_database_engine_for_better_performance.3F#How_do_I_tune_the_database_engine_for_better_performance.3F"
  class="external text" rel="nofollow">PostgreSQL performance FAQ</a>
- <a href="http://archives.postgresql.org/pgsql-performance/"
  class="external text" rel="nofollow">PostgreSQL performance mailing
  list</a>
- <a
  href="http://momjian.us/main/writings/pgsql/hw_performance/index.html"
  class="external text" rel="nofollow">PostgreSQL Hardware Performance
  Tuning</a>
- <a href="http://www.powerpostgresql.com/docs.html" class="external free"
  rel="nofollow">http://www.powerpostgresql.com/docs.html</a>
- <a
  href="http://web.archive.org/web/20090126230633/http://powerpostgresql.com/PerfList"
  class="external text" rel="nofollow">PostgreSQL performance
  checklist</a>
- <a
  href="http://web.archive.org/web/20090122040931/http://powerpostgresql.com/Downloads/annotated_conf_80.html"
  class="external text" rel="nofollow">PostgreSQL annotated configuration
  option guide</a>

## <span id="Database_initialization" class="mw-headline">Database initialization</span>

One step that can be taken to optimize your PostgreSQL database is to
properly initialize it with
<a href="http://www.postgresql.org/docs/8.2/interactive/app-initdb.html"
class="external text" rel="nofollow">initdb</a>. If you are using a
PostgreSQL server that came with your OS or have installed it from some
package system it may have already been initialized. In these cases you
are probably better off removing the PostgreSQL data directory and
reinitializing it manually.

To do this you need to execute the following command as the postgres
user, or whatever user you use to run postgres under.

     initdb -D /var/lib/pgsql/data --locale=C

Please note that the directory location is entirely dependent on your
system or your specific setup and should be substituted with whatever
convention is used in your situation. What this command does is
explicitly initialize the PostgreSQL database with a C locale. If you do
not specify the C locale it defaults to whatever your system is set to,
which is set to 'en_US.UTF8' on many linux distributions. In these
cases, queries with "LIKE" will take a performance hit because
PostgreSQL will not use the indices as you would expect it to. Setting
it to the C locale from the start eliminates this.

From the Locale Support page in the manual:

    The drawback of using locales other than C or POSIX in PostgreSQL is its performance impact.
    It slows character handling and prevents ordinary indexes from being used by LIKE.
    For this reason use locales only if you actually need them.

If for some reason you cannot reinitialize your database you can also
drop specific indexes that involve text fields and recreate them using
<a
href="http://www.postgresql.org/docs/8.2/interactive/indexes-opclass.html"
class="external text" rel="nofollow">operator classes</a>.

- <a
  href="http://archives.postgresql.org/pgsql-performance/2007-05/msg00117.php"
  class="external free"
  rel="nofollow">http://archives.postgresql.org/pgsql-performance/2007-05/msg00117.php</a>

One other option you should consider is what the default encoding for
all your databases should be. If your data requires UTF-8 or just plain
ASCII characters it might be a wise choice to specify that via the
initdb command:

     initdb -D /var/lib/pgsql/data --encoding=UTF8 --locale=C
         or
     initdb -D /var/lib/pgsql/data --encoding=SQL_ASCII --locale=C

If you do not do this you need to be sure that you specify the correct
encoding when you create the database instance for Chado via createdb.

## <span id="Configuration_options" class="mw-headline">Configuration options</span>

I recommend starting with
<a href="http://wiki.postgresql.org/wiki/Tuning_Your_PostgreSQL_Server"
class="external text" rel="nofollow">Tuning Your PostgreSQL Server</a>.
Take your time and READ all the options before you start tinkering.
Tuning PostgreSQL configuration options requires some serious voodoo and
patience. In addition to the links above you might find useful
information on these pages.

- <a
  href="http://www.postgresql.org/docs/current/static/runtime-config.html"
  class="external free"
  rel="nofollow">http://www.postgresql.org/docs/current/static/runtime-config.html</a>
- <a
  href="http://www.postgresql.org/docs/current/static/kernel-resources.html#SYSVIPC#SYSVIPC"
  class="external free"
  rel="nofollow">http://www.postgresql.org/docs/current/static/kernel-resources.html#SYSVIPC</a>

  

## <span id="Vacuuming" class="mw-headline">Vacuuming</span>

Vacuuming your database after loading or after a large update is very
important to database performance. To vacuum your database issue this
command

       vacuumdb -d DBNAME -f -z -v

See vacuumdb --help for more options. Doing a verbose vacuum is
important because it will sometimes inform you when configuration
options needs to be increased.

### <span id="Auto_vacuuming" class="mw-headline">Auto vacuuming</span>

PostgreSQL 8.1 and up has the ability to <a
href="http://www.postgresql.org/docs/8.2/interactive/routine-vacuuming.html#AUTOVACUUM#AUTOVACUUM"
class="external text" rel="nofollow">automate vacuming</a>. Users who
are in read/write environments should utilize this for maintaining
performance over the long term.

*This section should be expanded with information from Chado users who
actually use auto vacuuming.*

## <span id="Powering_GBrowse" class="mw-headline">Powering GBrowse</span>

Some useful email threads on improving performance when using
<a href="Chado" class="mw-redirect" title="Chado">Chado</a> to power
[GBrowse](GBrowse.1 "GBrowse"):

- <a
  href="http://gmod.827538.n3.nabble.com/Full-text-search-in-CHADO-PostgreSQL-GBROWSE-td844967.html#a844967#a844967"
  class="external text" rel="nofollow">Full Text Search in PostgreSQL</a>,
  2010/05

## <span id="Installing_Schema" class="mw-headline">Installing Schema</span>

This is technically not a postgres performance tip, but an ontology
loading performance tip. For those who regularly deploy chado database,
[Precompiled Chado
Databases](Precompiled_Chado_Databases "Precompiled Chado Databases")
are available.

</div>

<div class="printfooter">

Retrieved from
"<http://gmod.org/mediawiki/index.php?title=PostgreSQL_Performance_Tips&oldid=25268>"

</div>

<div id="catlinks" class="catlinks">

<div id="mw-normal-catlinks" class="mw-normal-catlinks">

[Categories](Special:Categories "Special:Categories"):

- [Chado](Category:Chado "Category:Chado")
- <a
  href="http://gmod.org/mediawiki/index.php?title=Category:Performance&amp;action=edit&amp;redlink=1"
  class="new"
  title="Category:Performance (page does not exist)">Performance</a>
- [PostgreSQL](Category:PostgreSQL "Category:PostgreSQL")

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

- <span id="ca-nstab-main"><a href="PostgreSQL_Performance_Tips" accesskey="c"
  title="View the content page [c]">Page</a></span>
- <span id="ca-talk"><a
  href="http://gmod.org/mediawiki/index.php?title=Talk:PostgreSQL_Performance_Tips&amp;action=edit&amp;redlink=1"
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


- <span id="t-smwbrowselink"><a href="Special:Browse/PostgreSQL_Performance_Tips"
  rel="smw-browse">Browse properties</a></span>


</div>

</div>

</div>

</div>

<div id="footer" role="contentinfo">

- <span id="footer-info-lastmod">Last updated at 17:57 on 5 February
  2014.</span>
<!-- - <span id="footer-info-viewcount">117,518 page views.</span> -->
- <span id="footer-info-copyright">Content is available under
  <a href="http://www.gnu.org/licenses/fdl-1.3.html" class="external"
  rel="nofollow">a GNU Free Documentation License</a> unless otherwise
  noted.</span>

<!-- -->

- <span id="footer-places-about">[About
  GMOD](GMOD:About "GMOD:About")</span>

<!-- -->






</div>
