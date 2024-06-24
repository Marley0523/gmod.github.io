<div id="mw-page-base" class="noprint">

</div>

<div id="mw-head-base" class="noprint">

</div>

<div id="content" class="mw-body" role="main">

<span id="top"></span>

<div id="mw-js-message" style="display:none;">

</div>



# <span dir="auto">GMODTools</span>

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
  <span class="toctext">Description</span>](#Description)
- [<span class="tocnumber">2</span>
  <span class="toctext">Outputs</span>](#Outputs)
- [<span class="tocnumber">3</span> <span class="toctext">Why Use
  Bulkfiles?</span>](#Why_Use_Bulkfiles.3F)
- [<span class="tocnumber">4</span>
  <span class="toctext">Downloads</span>](#Downloads)
- [<span class="tocnumber">5</span>
  <span class="toctext">Configuration</span>](#Configuration)
  - [<span class="tocnumber">5.1</span>
    <span class="toctext">GMODTools/conf/bulkfiles/</span>](#GMODTools.2Fconf.2Fbulkfiles.2F)
- [<span class="tocnumber">6</span> <span class="toctext">Sample
  Use</span>](#Sample_Use)
  - [<span class="tocnumber">6.1</span> <span class="toctext">Sample
    Output Data Folder</span>](#Sample_Output_Data_Folder)
  - [<span class="tocnumber">6.2</span> <span class="toctext">Sample Run
    Log</span>](#Sample_Run_Log)
  - [<span class="tocnumber">6.3</span> <span class="toctext">GenBank
    genome round-trip test</span>](#GenBank_genome_round-trip_test)
- [<span class="tocnumber">7</span>
  <span class="toctext">Requirements</span>](#Requirements)
- [<span class="tocnumber">8</span>
  <span class="toctext">Updates</span>](#Updates)
- [<span class="tocnumber">9</span> <span class="toctext">See
  Also</span>](#See_Also)
- [<span class="tocnumber">10</span>
  <span class="toctext">Contact</span>](#Contact)

</div>

# <span id="Description" class="mw-headline">Description</span>

Bulkfiles is a GMOD [Perl](Glossary#Perl "Glossary") package that
generates Fasta, [GFF3](GFF3 "GFF3"), DNA and other bulk genome
annotation files from
<a href="Chado" class="mw-redirect" title="Chado">Chado</a> databases.
It works with several [FlyBase](Category:FlyBase "Category:FlyBase")
Chado releases, with SGDLite, and has been tested with other Chado
databases. Once tuned to your project's needs with its organism and site
configurations, it can generate public data releases on a regular basis.
It produces all the contents needed for a GMOD [Standard
URL](Standard_URL "Standard URL") genome data download folder.

# <span id="Outputs" class="mw-headline">Outputs</span>

These are current primary outputs, which are configurable to suit
project needs.

- DNA files (full chromosomes) in raw and fasta formats
- [GFF3](GFF3 "GFF3") feature files
- Fasta sequence for each selected feature set, with headers from
  feature files
- BLAST Index files (NCBI)
- Gene Ontology association file
- GenBank genome submission files

Additional genome outputs can be added with Perl adaptor packages from a
Bulkfiles base adaptor object.

# <span id="Why_Use_Bulkfiles.3F" class="mw-headline">Why Use Bulkfiles?</span>

Why use this package rather than using other [middleware
layers](Category:Middleware "Category:Middleware") to Chado db - [Chado
XML](Chado_XML "Chado XML"),
[Chado::AutoDBI](Chado::AutoDBI "Chado::AutoDBI"),
[BioPerl](BioPerl "BioPerl"), ? The general logic is

1.  dump all Chado db features using simple (and quick) sql, to common
    intermediate table files, and chromosome dna to raw files. The
    feature info is simple: type, location, name/id, and a few
    attributes (db_xrefs,..)
2.  postprocess these table files to create the various public use
    formats (the time-consuming and configurable part), organized into
    per-chromosome files.

Here are some reasons we take this approach:

- using simple sql to dump all db features to intermediate table allows
  easy checks that all features get to bulk files
- simple sql dump is fast, and reliable in getting all mapped features
  by keeping logic simple
- process table output in stages - better debugging of steps in process,
  and can split processing among computers. These stages are loosely
  coupled - one can go back, tweak configurations and get a new output
  w/o redoing the complete extraction process.
- convert one common feature table + dna to several output formats in
  one step, or repeatedly as needed.
- combine features from several Chado dbs, and add other sources that
  may not be in your Chado database.
- model organism projects need fairly complex and data specific
  configurations - moving that to config files keeps code reusable.
- each genome Chado database has different policy and choices with
  respect to feature, vocabulary and other data. A highly configurable
  tool, with data extraction and correction methods that are separate
  and tunable is needed to adapt to such variation in genome databases.

# <span id="Downloads" class="mw-headline">Downloads</span>

Here is a candidate release package for
<a href="http://eugenes.org/gmod/GMODTools/" class="external text"
rel="nofollow">GMODTools</a>:

     curl -O http://eugenes.org/gmod/GMODTools/GMODTools-1.2.zip
     unzip GMODTools*.zip

If you want to try out GMODTools from
<a href="SVN" class="mw-redirect" title="SVN">SVN</a> check out using
these commands:

     svn co https://gmod.svn.sourceforge.net/svnroot/gmod/schema/trunk/GMODTools

These commands will create a directory named `GMODTools`, with a
directory named `GMODTools` in it. Note that you don't need to supply a
password, and it may be very slow.

# <span id="Configuration" class="mw-headline">Configuration</span>

Bulkfiles has extensive configurations, in a simple
[XML](Glossary#XML "Glossary") format. This is both a strength and
weakness. The strength is that most aspects for genome data publication,
such as feature names, types, aspects of the output format, are under
your project's control. The weakness is these need detailed
documentation to make it easier to tune your site's configuration.

All of the organism and project-specific logic is in these configuration
files, including output documentation, feature controls and naming, file
choices.

Once configured for your organism(s) and project database, it is quick
to generate new bulk data release files, and link into a collection of
public releases. A new release needs only a minor configuration update
(release number and date), and can be generated automatically if
desired.

## <span id="GMODTools.2Fconf.2Fbulkfiles.2F" class="mw-headline">GMODTools/conf/bulkfiles/</span>

These are the main contents of the configuration files

- `sgdbulk.xml` : main release configuration for tested sample

This main release [XML](Glossary#XML "Glossary") controls what other
configurations are used.

A new release configuration with date, release name should be added as
needed.

- `bulkfiles_template.xml` : documented template for creating your
  project/organism configuration
- `site_defaults.xml`  : common database and output settings for your
  site.
- `chadofeatsql.xml`  : primary Chado [SQL](Glossary#SQL "Glossary")
  used to extract data from database.

If you have a complex Chado database, you may well want to add to or
update this.

- `chadofeatconv.xml` : logic to convert Chado view to public view of
  features.

What features are to be published, the structure of features, and much
of the messy genome detail are included here. It is complex but that is
part of the territory with genome databases.

- per-output configurations like
  `fastawriter.xml, blastfiles.xml, genbanksubmit.xml` have some site
  configurations such as path to NCBI tools that will need attention for
  proper use.

# <span id="Sample_Use" class="mw-headline">Sample Use</span>

Load a genome Chado db to [PostgreSQL](PostgreSQL "PostgreSQL")
database:

     curl -O http://sgdlite.princeton.edu/download/sgdlite/sgdlite.sql.gz
     createdb sgdlite
     (gunzip -c sgdlite.sql.gz | psql -d sgdlite -f - ) >& log.load

Extract bulk files from database:

     cd GMODTools
     perl -Ilib bin/bulkfiles.pl -conf sgdbulk -make

If your test fails, pleas re-run with the `-debug` option and send the
result log file to the developer contact below.

     perl -Ilib bin/bulkfiles.pl -conf sgdbulk -make -debug >& gmodtools-debug.log

## <span id="Sample_Output_Data_Folder" class="mw-headline">Sample Output Data Folder</span>

Output data folder looks like this. It is suited to linking to a public
web server for data downloading, e.g. the GMOD
[Standard_URL](Standard_URL "Standard URL").

     data/genomes/Saccharomyces_cerevisiae/sgdlite_2005_08_23/
     Example.txt  README.html  blast/       fasta/       gff/         tmp/
     HEADER.html  Release.txt  dna/         fff/         tables/

See the `tables/` folder for summary tables. The contents including web
HEADER, README and others are configured with the `conf/bulkfiles/`
configurations.

## <span id="Sample_Run_Log" class="mw-headline">Sample Run Log</span>

    microbe%  perl -Ilib bin/bulkfiles.pl -conf sgdbulk -make
    - Setting GMOD_ROOT=/bio/argos/gmod/GMODTools
    Config: title = SGD Lite; date = 20051129;  from conf/bulkfiles/sgdbulk.xml
    Config: title = Site Default settings for GMODTools;  from conf/bulkfiles/site_defaults.xml
    Config: title = Species abbreviations; date = 20051129;  from conf/bulkfiles/organisms.xml
    Config: title = Bulkfiles fileset definitions; date = 20040821;  from conf/bulkfiles/filesets.xml
    Config: title = Chado Feature mapping info; date = 20040821;  from conf/bulkfiles/featuresets.xml
     missing data dir data/genomes/Saccharomyces_cerevisiae
    Config: title = Chado DB SQL; date = 20051129;  from conf/bulkfiles/chadofeatsql.xml
    Automaking feature_table files
    Config: title = Blast index writer; date = 20040821;  from conf/bulkfiles/blastfiles.xml
    Config: title = Summary Tables; date = 20051217;  from conf/bulkfiles/tablewriter.xml
    Config: title = Gbrowse conf generator; date = 20040826;  from conf/bulkfiles/gbrowseconf.xml
    Config: title = Genome Web docs; date = 20051225;  from conf/bulkfiles/genomeweb.xml
    Changed 'current' release symlink to data/genomes/Saccharomyces_cerevisiae/sgdlite_2005_08_23; ok=1
    Bulkfiles done. result=overviews:, fff+gff=146661, fasta=19849, blast=14, tables=ok,
    Bulkfiles are located at data/genomes/Saccharomyces_cerevisiae/sgdlite_2005_08_23

## <span id="GenBank_genome_round-trip_test" class="mw-headline">GenBank genome round-trip test</span>

See also this brief [GMODTools
TestCase](GMODTools_TestCase "GMODTools TestCase") that describes how to
load a GenBank genome to Chado then regurgitate it via Bulkfiles as a
GenBank submission file set.

# <span id="Requirements" class="mw-headline">Requirements</span>

Bulkfiles is mostly a self-contained Perl package. It uses a few
[BioPerl](BioPerl "BioPerl") parts plus
<a href="http://search.cpan.org/perldoc?XML::Simple"
class="external text" rel="nofollow">XML::Simple</a> for configuration
files.

- <a href="http://www.postgresql.org/" class="external text"
  rel="nofollow">Postgres</a> and GMOD Chado database.
- Basic Perl tool set used for other GMOD packages.

# <span id="Updates" class="mw-headline">Updates</span>

Version 1.2 (2008 May) IN PROGRESS

- adding GenbankSubmitWriter, that creates a genome submission (new or
  update) for NCBI.

There now is enough of a GMODTools framework for dumping Chado genome
databases to Genbank Submit format that it likely will save effort for
those who need to do this job. This is open source and collaborators are
welcome to add code here

<a href="http://gmod.cvs.sourceforge.net/gmod/schema/GMODTools/"
class="external free"
rel="nofollow">http://gmod.cvs.sourceforge.net/gmod/schema/GMODTools/</a>

esp. lib/Bio/GMOD/Bulkfiles/GenbankSubmitWriter.pm and
conf/bulkfiles/genbanksubmit.xml

The above code is packaged at
<a href="http://eugenes.org/gmod/GMODTools/" class="external free"
rel="nofollow">http://eugenes.org/gmod/GMODTools/</a> as
GMODTools-1.2.zip

Here are sample Bulkfiles outputs from DrosMel CHR_4 and AnoGam CHR_X

<a
href="http://insects.eugenes.org/genome/Drosophila_melanogaster/dromel_20080512/"
class="external free"
rel="nofollow">http://insects.eugenes.org/genome/Drosophila_melanogaster/dromel_20080512/</a>

<a
href="http://insects.eugenes.org/genome/Anopheles_gambiae_str._PEST/anogam_20080511/"
class="external free"
rel="nofollow">http://insects.eugenes.org/genome/Anopheles_gambiae_str._PEST/anogam_20080511/</a>

Version 1.1 (2007 October) adds these features and corrections:

- No chromosome/scaffold/golden_path files. This change is needed to
  handle partially assembled genomes with many (1000s to 100,000s) of
  scaffolds. Flag no_csomesplit=1 to use this (should become default).
- Gene Ontology association file, see go_association tags in
  configurations
- Validate main variables in Chado database: \${golden_path},
  \${seq_ontology}. This step, on now by default, checks that database
  contains configured values. If failed, db is inspected for real
  values.
- Miscellany bugs cured and configuration updates, e.g., tables/overview
  now again active.

# <span id="See_Also" class="mw-headline">See Also</span>

- [XORT](XORT.1 "XORT") offers an alternative approach to bulk uploads
  and downloads from a Chado database.

<!-- -->

- [Sample Chado SQL](Sample_Chado_SQL "Sample Chado SQL") gives an
  overview of the feature and other Chado table
  [SQL](Glossary#SQL "Glossary") commands used for Bulkfiles output.
  Examples here can help you learn the contents of a database created by
  someone else, and are useful for GMODTools configuration.

# <span id="Contact" class="mw-headline">Contact</span>

[Dongilbert](User:Dongilbert "User:Dongilbert")

</div>

<div class="printfooter">

Retrieved from
"<http://gmod.org/mediawiki/index.php?title=GMODTools&oldid=24354>"

</div>

<div id="catlinks" class="catlinks">

<div id="mw-normal-catlinks" class="mw-normal-catlinks">

[Categories](Special:Categories "Special:Categories"):

- [BLAST](Category:BLAST "Category:BLAST")
- [Chado](Category:Chado "Category:Chado")
- [Database Tools](Category:Database_Tools "Category:Database Tools")
- [GMOD Components](Category:GMOD_Components "Category:GMOD Components")
- [WFleaBase](Category:WFleaBase "Category:WFleaBase")

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
  href="http://gmod.org/mediawiki/index.php?title=Special:UserLogin&amp;returnto=GMODTools"
  accesskey="o"
  title="You are encouraged to log in; however, it is not mandatory [o]">Log
  in / create account</a></span>

</div>

<div id="left-navigation">

<div id="p-namespaces" class="vectorTabs" role="navigation"
aria-labelledby="p-namespaces-label">

### Namespaces

- <span id="ca-nstab-main"><a href="GMODTools" accesskey="c"
  title="View the content page [c]">Page</a></span>
- <span id="ca-talk"><a href="Talk:GMODTools" accesskey="t"
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

- <span id="ca-view">[Read](GMODTools)</span>
- <span id="ca-viewsource"><a
  href="http://gmod.org/mediawiki/index.php?title=GMODTools&amp;action=edit"
  accesskey="e" title="This page is protected.
  You can view its source [e]">View source</a></span>
- <span id="ca-history"><a
  href="http://gmod.org/mediawiki/index.php?title=GMODTools&amp;action=history"
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

- <span id="t-whatlinkshere"><a href="Special:WhatLinksHere/GMODTools" accesskey="j"
  title="A list of all wiki pages that link here [j]">What links here</a></span>
- <span id="t-recentchangeslinked"><a href="Special:RecentChangesLinked/GMODTools" accesskey="k"
  title="Recent changes in pages linked from this page [k]">Related
  changes</a></span>
- <span id="t-specialpages"><a href="Special:SpecialPages" accesskey="q"
  title="A list of all special pages [q]">Special pages</a></span>
- <span id="t-print"><a
  href="http://gmod.org/mediawiki/index.php?title=GMODTools&amp;printable=yes"
  rel="alternate" accesskey="p"
  title="Printable version of this page [p]">Printable version</a></span>
- <span id="t-permalink">[Permanent
  link](http://gmod.org/mediawiki/index.php?title=GMODTools&oldid=24354 "Permanent link to this revision of the page")</span>
- <span id="t-info">[Page
  information](http://gmod.org/mediawiki/index.php?title=GMODTools&action=info)</span>
- <span id="t-smwbrowselink"><a href="Special:Browse/GMODTools" rel="smw-browse">Browse
  properties</a></span>
- <span id="t-pdf">[Print as
  PDF](http://gmod.org/mediawiki/index.php?title=Special:PdfPrint&page=GMODTools)</span>

</div>

</div>

</div>

</div>

<div id="footer" role="contentinfo">

- <span id="footer-info-lastmod">Last updated at 23:00 on 15 August
  2013.</span>
- <span id="footer-info-viewcount">200,455 page views.</span>
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
