<div id="mw-page-base" class="noprint">

</div>

<div id="mw-head-base" class="noprint">

</div>

<div id="content" class="mw-body" role="main">

<span id="top"></span>

<div id="mw-js-message" style="display:none;">

</div>



# <span dir="auto">Gmod load cvterms</span>

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

gmod_load_cvterms.pl is a perl script for loading and more importantly,
updating controlled vocabulary and
[ontology](Category:Ontologies "Category:Ontologies") terms in the
[cvterm table](Chado_CV_Module#Table:_cvterm "Chado CV Module"). This
script was contributed by [Naama
Menda](User:NaamaMenda "User:NaamaMenda") and the developers at the
<a href="http://www.sgn.cornell.edu/" class="external text"
rel="nofollow">Sol Genomics Network (SGN)</a> lead by Lukas Mueller.

<div id="toc" class="toc">

<div id="toctitle">

## Contents

</div>

- [<span class="tocnumber">1</span> <span class="toctext">Where to find
  it</span>](#Where_to_find_it)
  - [<span class="tocnumber">1.1</span> <span class="toctext">gmod
    1.0</span>](#gmod_1.0)
  - [<span class="tocnumber">1.2</span> <span class="toctext">gmod
    1.1</span>](#gmod_1.1)
- [<span class="tocnumber">2</span> <span class="toctext">Command line
  options</span>](#Command_line_options)

</div>

## <span id="Where_to_find_it" class="mw-headline">Where to find it</span>

### <span id="gmod_1.0" class="mw-headline">gmod 1.0</span>

In the 1.0 release of gmod, the script is called load_cvterms.pl and is
not installed. It can be found in the distribution folder in the
bin/cxgn directory.

### <span id="gmod_1.1" class="mw-headline">gmod 1.1</span>

In the 1.1 release, gmod_load_cvterms.pl is installed with other scripts
with the distribution and will typically go in /usr/bin or
/usr/local/bin.

## <span id="Command_line_options" class="mw-headline">Command line options</span>

- -H hostname for database \[required if -p isn't used\]

<!-- -->

- -D database name \[required if -p isn't used\]

<!-- -->

- -p password (if you need to provide a password to connect to your db)

<!-- -->

- -r username (if you need to provide a username to connect to your
  database)

<!-- -->

- -d driver name (e.g. ’Pg’ for postgres). Driver name can be provided
  in gmod_config

<!-- -->

- -g GMOD database profile name (can provide host, DB name, password,
  username, and driver) Default:’default’

<!-- -->

- -s database name for linking (must be in db table)

<!-- -->

- -n controlled vocabulary name (e.g ’biological_process’). optional. If
  not given, terms of all namespaces related with database name will be
  handled.

<!-- -->

- -F File format. Can be obo or go_flat and others supported by
  Bio::OntologyIO. Default: obo

<!-- -->

- -u update all the terms. Without -u, the terms in the database won’t
  be updated to the contents of the file, in terms of definitions, etc.
  New terms will still be added.

<!-- -->

- -v verbose output

<!-- -->

- -o outfile for writing errors and verbose messages (optional)

<!-- -->

- -t trial mode. Don't perform any store operations at all. (trial mode
  cannot test inserting associated data for new terms)

The script parses the ontology in the file and the corresponding
ontology in the database, if present. It compares which terms are new in
the file compared to the database and inserts them, and compares all the
relationships that are new and inserts them. It removes the
relationships that were not specified in the file from the database. It
never removes a term entry from the database.

Terms that are in the database but not in the file are set to
is_obsolete=1. All the terms that are present in the database are
updated (if using -u option) to reflect the term definitions that are in
the file. New terms that are in the file but not in the database are
stored.

</div>

<div class="printfooter">

Retrieved from
"<http://gmod.org/mediawiki/index.php?title=Gmod_load_cvterms&oldid=21769>"

</div>

<div id="catlinks" class="catlinks">

<div id="mw-normal-catlinks" class="mw-normal-catlinks">

[Categories](Special:Categories "Special:Categories"):

- [Chado](Category:Chado "Category:Chado")
- [Ontologies](Category:Ontologies "Category:Ontologies")
- [SGN](Category:SGN "Category:SGN")

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

- <span id="ca-nstab-main"><a href="Gmod_load_cvterms" accesskey="c"
  title="View the content page [c]">Page</a></span>
- <span id="ca-talk"><a
  href="http://gmod.org/mediawiki/index.php?title=Talk:Gmod_load_cvterms&amp;action=edit&amp;redlink=1"
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


- <span id="t-smwbrowselink"><a href="Special:Browse/Gmod_load_cvterms" rel="smw-browse">Browse
  properties</a></span>
- <span id="t-pdf">[Print as
  PDF](http://gmod.org/mediawiki/index.php?title=Special:PdfPrint&page=Gmod_load_cvterms)</span>

</div>

</div>

</div>

</div>

<div id="footer" role="contentinfo">

- <span id="footer-info-lastmod">Last updated at 16:54 on 20 September
  2012.</span>
<!-- - <span id="footer-info-viewcount">19,136 page views.</span> -->
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


<div style="clear:both">

</div>

</div>
