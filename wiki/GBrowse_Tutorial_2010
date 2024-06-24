<div id="mw-page-base" class="noprint">

</div>

<div id="mw-head-base" class="noprint">

</div>

<div id="content" class="mw-body" role="main">

<span id="top"></span>

<div id="mw-js-message" style="display:none;">

</div>



# <span dir="auto">GBrowse Tutorial 2010</span>

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

{{ TutorialHeader \| what = GBrowse \| where = [2010 GMOD Summer
School -
Americas](2010_GMOD_Summer_School_-_Americas "2010 GMOD Summer School - Americas")
\| who = [Scott Cain](User:Scott "User:Scott") \| when = May 2010 \|
logo = GBrowseLogo.png

<div id="toc" class="toc">

<div id="toctitle">

## Contents

</div>

- [<span class="tocnumber">1</span>
  <span class="toctext">VMware</span>](#VMware)
- [<span class="tocnumber">2</span>
  <span class="toctext">Caveats</span>](#Caveats)
- [<span class="tocnumber">3</span>
  <span class="toctext">Prerequisites</span>](#Prerequisites)
- [<span class="tocnumber">4</span> <span class="toctext">Install
  GBrowse</span>](#Install_GBrowse)
- [<span class="tocnumber">5</span>
  <span class="toctext">Tutorial</span>](#Tutorial)
- [<span class="tocnumber">6</span> <span class="toctext">Basic Chado
  Configuration (if we have
  time)</span>](#Basic_Chado_Configuration_.28if_we_have_time.29)
  - [<span class="tocnumber">6.1</span>
    <span class="toctext">Materialized views for
    searching</span>](#Materialized_views_for_searching)

</div>

## <span id="VMware" class="mw-headline">VMware</span>

This tutorial was taught using a <a
href="http://gmod.org/mediawiki/index.php?title=VMware&amp;action=edit&amp;redlink=1"
class="new" title="VMware (page does not exist)">VMware</a> system image
as a starting point. If you want to start with the same system, download
and install the start image (below). See <a
href="http://gmod.org/mediawiki/index.php?title=VMware&amp;action=edit&amp;redlink=1"
class="new" title="VMware (page does not exist)">VMware</a> for what
software you need to use a VMware system image and for directions on how
to get the image up and running on your machine.

Download the <a
href="ftp://ftp.gmod.org/pub/gmod/Courses/2010/SummerSchoolAmericas/GMODCourse2010Day1.vmwarevm.tar.gz"
class="external text" rel="nofollow">start image</a> and the <a
href="ftp://ftp.gmod.org/pub/gmod/Courses/2010/SummerSchoolAmericas/GMODCourse2010Day2.vmwarevm.tar.gz"
class="external text" rel="nofollow">end image</a>.

**Logins**:

| Purpose | Username | Password         |
|---------|----------|------------------|
| Shell   | gmod     | gmodamericas2010 |
| MySQL   | root     | gmodamericas2010 |

## <span id="Caveats" class="mw-headline">Caveats</span>

<div class="emphasisbox">

**Important Note**

This [tutorial](Category:Tutorials "Category:Tutorials") describes the
world as it existed on the day the tutorial was given. Please be aware
that things like CPAN modules, Java libraries, and Linux packages change
over time, and that the instructions in the tutorial will slowly drift
over time. Newer versions of tutorials will be posted as they become
available.

</div>

## <span id="Prerequisites" class="mw-headline">Prerequisites</span>

Installed before using apt or cpan.

## <span id="Install_GBrowse" class="mw-headline">Install GBrowse</span>

Easily installed via the cpan shell:

     sudo cpan
     cpan> install Bio::Graphics::Browser2

Which gets all of the prereqs that aren't installed on the machine.

## <span id="Tutorial" class="mw-headline">Tutorial</span>

Go to <a href="http://localhost/gbrowse" class="external free"
rel="nofollow">http://localhost/gbrowse</a>

  

  

## <span id="Basic_Chado_Configuration_.28if_we_have_time.29" class="mw-headline">Basic <a href="Chado" class="mw-redirect" title="Chado">Chado</a> Configuration (if we have time)</span>

<a href="http://search.cpan.org/perldoc?Bio::DB::Das::Chado"
class="external text" rel="nofollow">Bio::DB::Das::Chado</a> was
installed when we created the image, but I've since released a new
version, so we can install the new version with the cpan shell:

     sudo cpan
     cpan> install Bio::DB::Das::Chado</enter>

Simple config file in `/etc/gbrowse2/pythium.conf`

Some simple tweaks and additions:

- fix the dbi string
- add nucleotide matches
- strip out stuff that is in `/etc/gbrowse2/GBrowse.conf`

### <span id="Materialized_views_for_searching" class="mw-headline">Materialized views for searching</span>

Chado comes with a tool to materialize views written by developers at
the [SOL Genomics Network (SGN)](Category:SGN "Category:SGN"). A
materialized view is faster (at the expense of more disk space) to
search than a regular view (which is really a query over potentially
several tables). To create a materialized view that makes searching a
GBrowse <a href="Chado" class="mw-redirect" title="Chado">Chado</a>
instance a faster, we can do this:

     gmod_materialized_view_tool.pl -c

which will ask us several obscure questions for which we need to provide
obscure answers:

     Give your materialized view a name (word characters only):
     all_feature_names

     Where will this MV be located? (schemaname.tablename):
     public.all_feature_names

     A view with this name already exists; do you want to replace it
     with a materialized view? [y|n]
     y

     How often, in seconds, should the MV be refreshed?
     You can also type 'daily', 'weekly', 'monthly' (30 days), or 'yearly' (365 days):
     weekly

     Enter specifications for the materialized view, OR provide a file in which
     the specs are written ('? for help):
     feature_id integer,name varchar(255)

     Enter the SQL query for the materialized view,
     or a file containing only the query:
     SELECT feature_id,CAST(substring(uniquename from 0 for 255) as varchar(255)) as name FROM feature UNION SELECT feature_id, name FROM feature where name is not null UNION SELECT fs.feature_id,s.name FROM feature_synonym fs, synonym s WHERE fs.synonym_id = s.synonym_id

     Enter a comma separated list of fields to index (or return for none):
     feature_id,name

     Enter the SQL queries for special indexes,
     or a file containing only the query (or return for none):
     create index all_feature_names_lower_name on all_feature_names (lower(name))

     Enter 'y' to confirm, 'n' to re-enter data:
     y

</div>

<div class="printfooter">

Retrieved from
"<http://gmod.org/mediawiki/index.php?title=GBrowse_Tutorial_2010&oldid=21807>"

</div>

<div id="catlinks" class="catlinks">

<div id="mw-normal-catlinks" class="mw-normal-catlinks">

[Categories](Special:Categories "Special:Categories"):

- [GBrowse 2](Category:GBrowse_2 "Category:GBrowse 2")
- [Tutorials](Category:Tutorials "Category:Tutorials")

</div>

</div>

<div class="visualClear">

</div>

</div>

</div>

<div id="mw-navigation">

## Navigation menu

<div id="mw-head">

<div id="p-personal" role="navigation"
aria-labelledby="p-personal-label">

### Personal tools

- <span id="pt-login"><a
  href="http://gmod.org/mediawiki/index.php?title=Special:UserLogin&amp;returnto=GBrowse+Tutorial+2010"
  accesskey="o"
  title="You are encouraged to log in; however, it is not mandatory [o]">Log
  in / create account</a></span>

</div>

<div id="left-navigation">

<div id="p-namespaces" class="vectorTabs" role="navigation"
aria-labelledby="p-namespaces-label">

### Namespaces

- <span id="ca-nstab-main"><a href="GBrowse_Tutorial_2010" accesskey="c"
  title="View the content page [c]">Page</a></span>
- <span id="ca-talk"><a
  href="http://gmod.org/mediawiki/index.php?title=Talk:GBrowse_Tutorial_2010&amp;action=edit&amp;redlink=1"
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

<div id="p-views" class="vectorTabs" role="navigation"
aria-labelledby="p-views-label">

### Views

- <span id="ca-view">[Read](GBrowse_Tutorial_2010)</span>
- <span id="ca-viewsource"><a
  href="http://gmod.org/mediawiki/index.php?title=GBrowse_Tutorial_2010&amp;action=edit"
  accesskey="e" title="This page is protected.
  You can view its source [e]">View source</a></span>
- <span id="ca-history"><a
  href="http://gmod.org/mediawiki/index.php?title=GBrowse_Tutorial_2010&amp;action=history"
  accesskey="h" title="Past revisions of this page [h]">View history</a></span>

</div>

<div id="p-cactions" class="vectorMenu emptyPortlet" role="navigation"
aria-labelledby="p-cactions-label">

### Actions[](#)

<div class="menu">

</div>

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

- <span id="t-whatlinkshere"><a href="Special:WhatLinksHere/GBrowse_Tutorial_2010" accesskey="j"
  title="A list of all wiki pages that link here [j]">What links here</a></span>
- <span id="t-recentchangeslinked"><a href="Special:RecentChangesLinked/GBrowse_Tutorial_2010"
  accesskey="k"
  title="Recent changes in pages linked from this page [k]">Related
  changes</a></span>
- <span id="t-specialpages"><a href="Special:SpecialPages" accesskey="q"
  title="A list of all special pages [q]">Special pages</a></span>
- <span id="t-print"><a
  href="http://gmod.org/mediawiki/index.php?title=GBrowse_Tutorial_2010&amp;printable=yes"
  rel="alternate" accesskey="p"
  title="Printable version of this page [p]">Printable version</a></span>
- <span id="t-permalink">[Permanent
  link](http://gmod.org/mediawiki/index.php?title=GBrowse_Tutorial_2010&oldid=21807 "Permanent link to this revision of the page")</span>
- <span id="t-info">[Page
  information](http://gmod.org/mediawiki/index.php?title=GBrowse_Tutorial_2010&action=info)</span>
- <span id="t-smwbrowselink"><a href="Special:Browse/GBrowse_Tutorial_2010" rel="smw-browse">Browse
  properties</a></span>
- <span id="t-pdf">[Print as
  PDF](http://gmod.org/mediawiki/index.php?title=Special:PdfPrint&page=GBrowse_Tutorial_2010)</span>

</div>

</div>

</div>

</div>

<div id="footer" role="contentinfo">

- <span id="footer-info-lastmod">Last updated at 21:38 on 2 October
  2012.</span>
- <span id="footer-info-viewcount">16,535 page views.</span>
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
