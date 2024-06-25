<div id="mw-page-base" class="noprint">

</div>

<div id="mw-head-base" class="noprint">

</div>

<div id="content" class="mw-body" role="main">

<span id="top"></span>

<div id="mw-js-message" style="display:none;">

</div>



# <span dir="auto">JBrowse</span>

<div id="bodyContent">

<div id="siteSub">

From GMOD

</div>

<div id="contentSub">

(Redirected from
[JBrowseDev/Main](http://gmod.org/mediawiki/index.php?title=JBrowseDev/Main&redirect=no "JBrowseDev/Main"))

</div>

<div id="jump-to-nav" class="mw-jump">

Jump to: [navigation](#mw-navigation), [search](#p-search)

</div>

<div id="mw-content-text" class="mw-content-ltr" lang="en" dir="ltr">

<div class="center">

<div class="floatnone">

<a href="../File:JBrowseLogo.png" class="image"><img
src="../../mediawiki/images/thumb/a/ac/JBrowseLogo.png/400px-JBrowseLogo.png"
srcset="../../mediawiki/images/thumb/a/ac/JBrowseLogo.png/600px-JBrowseLogo.png 1.5x, ../../mediawiki/images/a/ac/JBrowseLogo.png 2x"
width="400" height="88" alt="JBrowse logo" /></a>

</div>

</div>

<div class="componentBox">

<div class="compBoxHdr">

Status

</div>

- Mature release
- Development: active
- Support: active

<div class="compBoxHdr">

Licence

</div>

<div class="floatleft">

<a href="http://opensource.org/" rel="nofollow"><img
src="../../mediawiki/images/thumb/6/66/Osi_symbol.png/40px-Osi_symbol.png"
srcset="../../mediawiki/images/thumb/6/66/Osi_symbol.png/60px-Osi_symbol.png 1.5x, ../../mediawiki/images/thumb/6/66/Osi_symbol.png/80px-Osi_symbol.png 2x"
width="40" height="39" alt="{{{PAGENAME}}} is open source" /></a>

</div>

<a href="http://opensource.org/licenses/LGPL-3.0" class="external text"
rel="nofollow">LGPL</a>,
<a href="http://opensource.org/licenses/Artistic-2.0"
class="external text" rel="nofollow">Artistic License 2.0</a>

<div class="compBoxHdr">

Resources

</div>

- <a href="http://jbrowse.org" class="external text" rel="nofollow">Home
  page</a>

<!-- -->

- <a href="http://jbrowse.org/install/" class="external text"
  rel="nofollow">Download</a>

<!-- -->

- <a href="http://github.com/GMOD/jbrowse" class="external text"
  rel="nofollow">Source code</a>

<!-- -->

- <a href="http://jbrowse.org/demos" class="external text"
  rel="nofollow">Demo server</a>

  

</div>

<div id="toc" class="toc">

<div id="toctitle">

## Contents

</div>

- [<span class="tocnumber">1</span> <span class="toctext">About
  JBrowse</span>](#About_JBrowse)
  - [<span class="tocnumber">1.1</span>
    <span class="toctext">Features</span>](#Features)
  - [<span class="tocnumber">1.2</span>
    <span class="toctext">Screenshots</span>](#Screenshots)
- [<span class="tocnumber">2</span>
  <span class="toctext">Downloads</span>](#Downloads)
- [<span class="tocnumber">3</span> <span class="toctext">Using
  JBrowse</span>](#Using_JBrowse)
  - [<span class="tocnumber">3.1</span> <span class="toctext">System
    Requirements</span>](#System_Requirements)
  - [<span class="tocnumber">3.2</span>
    <span class="toctext">Installation</span>](#Installation)
  - [<span class="tocnumber">3.3</span>
    <span class="toctext">Configuration</span>](#Configuration)
- [<span class="tocnumber">4</span> <span class="toctext">Upgrading
  JBrowse</span>](#Upgrading_JBrowse)
- [<span class="tocnumber">5</span>
  <span class="toctext">Documentation</span>](#Documentation)
- [<span class="tocnumber">6</span> <span class="toctext">Publications,
  Tutorials, and
  Presentations</span>](#Publications.2C_Tutorials.2C_and_Presentations)
  - [<span class="tocnumber">6.1</span>
    <span class="toctext">Publications on or mentioning
    JBrowse</span>](#Publications_on_or_mentioning_JBrowse)
  - [<span class="tocnumber">6.2</span>
    <span class="toctext">Tutorials</span>](#Tutorials)
  - [<span class="tocnumber">6.3</span>
    <span class="toctext">Presentations</span>](#Presentations)
- [<span class="tocnumber">7</span> <span class="toctext">Contacts and
  Mailing Lists</span>](#Contacts_and_Mailing_Lists)
- [<span class="tocnumber">8</span> <span class="toctext">JBrowse in the
  wild</span>](#JBrowse_in_the_wild)
- [<span class="tocnumber">9</span> <span class="toctext">JBrowse
  Development</span>](#JBrowse_Development)
  - [<span class="tocnumber">9.1</span> <span class="toctext">Current
    status</span>](#Current_status)
- [<span class="tocnumber">10</span> <span class="toctext">More on
  JBrowse</span>](#More_on_JBrowse)

</div>

## <span id="About_JBrowse" class="mw-headline">About JBrowse</span>

JBrowse is a genome browser with a fully dynamic AJAX interface, being
developed as the eventual successor to GBrowse. It is very fast and
scales well to large datasets. JBrowse is javascript-based and does
almost all of its work directly in the user's web browser, with minimal
requirements for the server.

### <span id="Features" class="mw-headline">Features</span>

- Fast, smooth scrolling and zooming. Explore your genome with
  unparalleled speed.
- Scales easily to multi-gigabase genomes and deep-coverage sequencing.
- Supports GFF3, BED, FASTA, Wiggle, BigWig, BAM, VCF (with tabix),
  REST, and more. BAM, BigWig, and VCF data are displayed directly from
  the compressed binary file with no conversion needed.
- Very light server resource requirements. In fact, JBrowse has no
  back-end server code, just tools for formatting data files to be read
  directly over HTTP. Serve huge datasets from a single low-cost cloud
  instance.

  
Visit the <a href="http://jbrowse.org" class="external text"
rel="nofollow">JBrowse website</a>.

### <span id="Screenshots" class="mw-headline">Screenshots</span>

<div class="center">

<div class="floatnone">

<a href="../File:JBrowse_alignment_and_coverage.png" class="image"><img
src="../../mediawiki/images/thumb/7/7e/JBrowse_alignment_and_coverage.png/600px-JBrowse_alignment_and_coverage.png"
srcset="../../mediawiki/images/thumb/7/7e/JBrowse_alignment_and_coverage.png/900px-JBrowse_alignment_and_coverage.png 1.5x, ../../mediawiki/images/7/7e/JBrowse_alignment_and_coverage.png 2x"
width="600" height="373" alt="JBrowse alignment and coverage.png" /></a>

</div>

</div>

## <span id="Downloads" class="mw-headline">Downloads</span>

- <a href="http://jbrowse.org/install/" class="external text"
  rel="nofollow">Download JBrowse</a>.

<!-- -->

- <a href="http://github.com/GMOD/jbrowse" class="external text"
  rel="nofollow">Download the source code for JBrowse</a>.

## <span id="Using_JBrowse" class="mw-headline">Using JBrowse</span>

The <a href="http://jbrowse.org/code/latest-release/docs/tutorial/"
class="external text" rel="nofollow">JBrowse Quick-Start Tutorial</a>
provides a basic step-by-step recipe for quickly getting up and running
with JBrowse.

### <span id="System_Requirements" class="mw-headline">System Requirements</span>

JBrowse requires libpng, Zlib, and GD development libraries, plus make
and a C compiler. On Ubuntu, you can install these prerequisites using
the command:

     sudo apt-get install libpng-dev libgd2-noxpm-dev build-essential

For tips on installing these baseline libraries, see [JBrowse
Troubleshooting](../JBrowse_Troubleshooting "JBrowse Troubleshooting").

### <span id="Installation" class="mw-headline">Installation</span>

The <a href="http://jbrowse.org/code/latest-release/docs/tutorial/"
class="external text" rel="nofollow">JBrowse Quick-Start Tutorial</a>
provides a basic step-by-step recipe for quickly getting up and running
with JBrowse.

  
1. <a href="http://jbrowse.org/install/" class="external text"
rel="nofollow">Download JBrowse</a> onto your web server.

2\. Unpack JBrowse into a directory that is served by your web browser.
On many systems, this defaults to `/var/www`.

       cd /var/www
       unzip JBrowse-*.zip

**Make sure you have permissions to write to the contents of the
`jbrowse/` directory you have just created.**

3\. Run the automated-setup script, `./setup.sh`, which will attempt to
install all of JBrowse's (modest) prerequisites for you in the
`jbrowse/` directory itself. Note that `setup.sh` does not need to be
run as root or with `sudo`. For help troubleshooting failures of
setup.sh, see [JBrowse
Troubleshooting](../JBrowse_Troubleshooting "JBrowse Troubleshooting").

4\. Visit JBrowse on your machine, substituting the
http://(your_machine/path_to_jbrowse)/index.html?data=sample_data/json/volvox.
If you can see the included Volvox example data, you are ready to
configure JBrowse to show your own data!

### <span id="Configuration" class="mw-headline">Configuration</span>

See the [JBrowse Configuration
Guide](../JBrowse_Configuration_Guide "JBrowse Configuration Guide") for
information on:

- [Formatting reference
  sequences](../JBrowse_Configuration_Guide#Reference_Sequences "JBrowse Configuration Guide")
  (e.g. from FASTA files, or a Chado database)
- [Feature
  Tracks](../JBrowse_Configuration_Guide#Feature_Tracks "JBrowse Configuration Guide")
  (e.g. from BED or GFF files, a Chado database, or the UCSC genome
  browser)
- [Image
  Tracks](../JBrowse_Configuration_Guide#Image_Tracks "JBrowse Configuration Guide")
  (e.g. from WIG files)
- [Wiggle/BigWig
  Tracks](../JBrowse_Configuration_Guide#Wiggle_Tracks "JBrowse Configuration Guide")
- [Name Search and
  Autocompletion](../JBrowse_Configuration_Guide#Name_Searching_and_Autocompletion "JBrowse Configuration Guide")
- [Removing
  tracks](../JBrowse_Configuration_Guide#Removing_Tracks "JBrowse Configuration Guide")
- [Compressing data stored on the
  server](../JBrowse_Configuration_Guide#Compressing_data_on_the_server "JBrowse Configuration Guide")
- [URL
  control](../JBrowse_Configuration_Guide#URL_Control "JBrowse Configuration Guide")
- [Faceted track
  selection](../JBrowse_Configuration_Guide#Faceted_Track_Selection "JBrowse Configuration Guide")
- [Anonymous usage
  statistics](../JBrowse_Configuration_Guide#Anonymous_Usage_Statistics "JBrowse Configuration Guide")

Additional topics:

- <a href="Using_a_Database_With_JBrowse" class="mw-redirect"
  title="JBrowseDev/Using a Database With JBrowse">Using an Existing
  Database with JBrowse</a>

## <span id="Upgrading_JBrowse" class="mw-headline">Upgrading JBrowse</span>

To upgrade an existing JBrowse (1.3.0 or later) to the latest version,
simply move its data directory (and `jbrowse_conf.json` if you are using
it) into the directory of a newer JBrowse, and the new JBrowse will
display that data.

To upgrade a 1.2.x JBrowse, copy its data directory into the new JBrowse
directory, and point your browser at compat_121.html in the new JBrowse
directory, instead of index.html.

If you are upgrading from a version of JBrowse older than 1.2.0, a fresh
installation is required.

## <span id="Documentation" class="mw-headline">Documentation</span>

- <a href="../JBrowse_Configuration_Guide" class="external text"
  rel="nofollow">JBrowse configuration reference</a>
- <a href="http://jbrowse.org/code/latest-release/docs/tutorial"
  class="external text" rel="nofollow">JBrowse quick start</a>
- <a href="../JBrowse_FAQ" class="external text" rel="nofollow">JBrowse
  setup FAQ</a>

## <span id="Publications.2C_Tutorials.2C_and_Presentations" class="mw-headline">Publications, Tutorials, and Presentations</span>

### <span id="Publications_on_or_mentioning_JBrowse" class="mw-headline">Publications on or mentioning JBrowse</span>

- JBrowse: a next-generation genome browser
  (2009)<sup>[\[1\]](#cite_note-PMID:19570905-1)</sup>
- Setting up the JBrowse genome browser
  (2010)<sup>[\[2\]](#cite_note-PMID:21154710-2)</sup>
- Visualizing next-generation sequencing data with JBrowse
  (2013)<sup>[\[3\]](#cite_note-PMID:22411711-3)</sup>
- JBrowse: a dynamic web platform for genome visualization and analysis
  (2016)<sup>[\[4\]](#cite_note-PMID:_27072794-4)</sup>

### <span id="Tutorials" class="mw-headline">Tutorials</span>

<a href="../JBrowse_Tutorial" class="mw-redirect"
title="JBrowse Tutorial">JBrowse Tutorial</a> covering installation and configuration  
part of the [2013 GMOD Summer
School](../2013_GMOD_Summer_School "2013 GMOD Summer School")

<a href="http://jbrowse.org/code/latest-release/docs/tutorial/"
class="external text" rel="nofollow">Getting Started with JBrowse
Tutorial</a>  
part of the JBrowse documentation

<a
href="../../mediawiki/images/4/44/Exploring_structural_variation_in_the_tomato_clade_using_JBrowse.pdf"
class="internal"
title="Exploring structural variation in the tomato clade using JBrowse.pdf">Exploration
of structural variation in the tomato clade using JBrowse</a>  
Tutorial explaining how to browse structural variants from the
<a href="http://www.tomatogenome.net" class="external text"
rel="nofollow">150+ tomato genome resequencing project</a> using JBrowse

### <span id="Presentations" class="mw-headline">Presentations</span>

- April 2013 - Bio-IT World, Robert Buels:
  <a href="../../mediawiki/images/0/0c/JBrowse_bioit_world_apr2013.pdf"
  class="internal" title="JBrowse bioit world apr2013.pdf">PDF</a>
- August 2012 - presentation given as part of the [2012 GMOD Summer
  School](../2012_GMOD_Summer_School "2012 GMOD Summer School"):
  <a href="../../mediawiki/images/f/fa/JBrowse_gmod_aug2012.pdf"
  class="internal" title="JBrowse gmod aug2012.pdf">PDF</a>
- April 2012 - GMOD 2012 Community Meeting, Robert Buels:
  <a href="../../mediawiki/images/b/ba/RBuels_JBrowse_apr2012.pdf"
  class="internal" title="RBuels JBrowse apr2012.pdf">PDF</a>
- January 2012 - Plant and Animal Genome (PAG) XX:
  <a href="../../mediawiki/images/e/ed/Rbuels_jbrowse_pag2012.pdf"
  class="internal" title="Rbuels jbrowse pag2012.pdf">PDF</a>
- April 2010 - UCSC genome browser group ("genecats") meeting:
  <a href="../../mediawiki/images/6/67/JBrowse-UCSC-4-21-10.pdf"
  class="internal" title="JBrowse-UCSC-4-21-10.pdf">PDF</a>
- August 2009 - [GMOD Community
  Meeting](../August_2009_GMOD_Meeting "August 2009 GMOD Meeting"):
  [Talk
  summary](../August_2009_GMOD_Meeting#JBrowse "August 2009 GMOD Meeting")

## <span id="Contacts_and_Mailing_Lists" class="mw-headline">Contacts and Mailing Lists</span>

Please direct questions and inquiries regarding JBrowse to the mailing
lists below.*Requests for help should be directed to
<a href="mailto:gmod-ajax@lists.sourceforge.net" class="external text"
rel="nofollow">gmod-ajax@lists.sourceforge.net</a>.*

|  |  |  |  |
|----|----|----|----|
|  | Mailing List Link | Description | Archive(s) |
| **JBrowse** | <a href="https://lists.sourceforge.net/lists/listinfo/gmod-ajax"
class="external text" rel="nofollow">gmod-ajax</a> | **JBrowse** help and general questions. | <a href="http://gmod.827538.n3.nabble.com/JBrowse-Support-f815920.html"
class="external text" rel="nofollow">Nabble</a> (2010/05+), <a href="https://lists.sourceforge.net/lists/listinfo/gmod-ajax"
class="external text" rel="nofollow">Sourceforge</a> |
|  | <a
href="https://calmail.berkeley.edu/manage/list/listinfo/jbrowse-dev@lists.berkeley.edu"
class="external text" rel="nofollow">jbrowse-dev</a> | **JBrowse** development discussions. | <a
href="http://gmod.827538.n3.nabble.com/JBrowse-Development-f3296666.html"
class="external text" rel="nofollow">Nabble</a> (2011/08+) |

gmod-ajax@lists.sourceforge.net

## <span id="JBrowse_in_the_wild" class="mw-headline">JBrowse in the wild</span>

Public installations of JBrowse:

- <a href="http://genomesunzipped.org/jbrowse" class="external text"
  rel="nofollow">Genomes Unzipped: Public Personal Genomics</a>
- <a href="http://beetlebase.org" class="external text"
  rel="nofollow">BeetleBase</a>
- <a href="http://www.medicinalgenomics.com/the-jane-ome/"
  class="external text" rel="nofollow">The Jane-Ome, medicinal marijuana
  project</a>
- <a href="http://icemangenome.net/‎" class="external text"
  rel="nofollow">Ice Man Genome</a>
  Browse the genome of Ötzi the ice man

## <span id="JBrowse_Development" class="mw-headline">JBrowse Development</span>

### <span id="Current_status" class="mw-headline">Current status</span>

The <a href="http://github.com/GMOD/jbrowse" class="external text"
rel="nofollow">JBrowse source code repository</a> is kept on GitHub.
Please feel very free to fork the code on GitHub and make modifications
and improvements, submitting pull requests. GitHub has a very nice
<a href="http://help.github.com/fork-a-repo/" class="external text"
rel="nofollow">tutorial</a> on how to get started with this style of
development.

## <span id="More_on_JBrowse" class="mw-headline">More on JBrowse</span>

See [Category:JBrowse](../Category:JBrowse "Category:JBrowse")

  

1.  <span id="cite_note-PMID:19570905-1"><span class="mw-cite-backlink">[↑](#cite_ref-PMID:19570905_1-0)</span>
    <span class="reference-text">\*JBrowse: a next-generation genome
    browser </span></span>
2.  <span id="cite_note-PMID:21154710-2"><span class="mw-cite-backlink">[↑](#cite_ref-PMID:21154710_2-0)</span>
    <span class="reference-text">\*Setting up the JBrowse genome browser
    </span></span>
3.  <span id="cite_note-PMID:22411711-3"><span class="mw-cite-backlink">[↑](#cite_ref-PMID:22411711_3-0)</span>
    <span class="reference-text">\* Visualizing next-generation
    sequencing data with JBrowse</span></span>
4.  <span id="cite_note-PMID:_27072794-4"><span class="mw-cite-backlink">[↑](#cite_ref-PMID:_27072794_4-0)</span>
    <span class="reference-text">\* JBrowse: a dynamic web platform for
    genome visualization and analysis</span></span>

</div>

<div class="printfooter">

Retrieved from
"<http://gmod.org/mediawiki/index.php?title=JBrowse&oldid=27090>"

</div>

<div id="catlinks" class="catlinks">

<div id="mw-normal-catlinks" class="mw-normal-catlinks">

[Categories](../Special:Categories "Special:Categories"):

- [GMOD Component](../Category:GMOD_Component "Category:GMOD Component")
- <a
  href="http://gmod.org/mediawiki/index.php?title=Category:SemanticLink&amp;action=edit&amp;redlink=1"
  class="new"
  title="Category:SemanticLink (page does not exist)">SemanticLink</a>
- [GMOD
  Components](../Category:GMOD_Components "Category:GMOD Components")
- [AJAX](../Category:AJAX "Category:AJAX")
- [JBrowse](../Category:JBrowse "Category:JBrowse")

</div>

</div>

<div id="mw-data-after-content">

<div class="smwfact">

<span class="smwfactboxhead">Facts about
"<span class="swmfactboxheadbrowse">[JBrowse](../Special:Browse/JBrowse "Special:Browse/JBrowse")</span>"</span><span class="smwrdflink"><span class="rdflink">[RDF
feed](http://gmod.org/wiki/Special:ExportRDF/JBrowse "Special:ExportRDF/JBrowse")</span></span>

[Available on platform](../Property:Available_on_platform "Property:Available on platform")

</div>

</div>

</div>

</div>

web
<span class="smwsearch">[+](../Special:SearchByProperty/Available-20on-20platform/web "Special:SearchByProperty/Available-20on-20platform/web")</span>

[Has URL](../Property:Has_URL "Property:Has URL")

<a href="http://jbrowse.org/install/" class="external free"
rel="nofollow">http://jbrowse.org/install/</a>
<span class="smwsearch">[+](../Special:SearchByProperty/Has-20URL/http:-2F-2Fjbrowse.org-2Finstall-2F "Special:SearchByProperty/Has-20URL/http:-2F-2Fjbrowse.org-2Finstall-2F")</span>,
<a href="http://jbrowse.org" class="external free"
rel="nofollow">http://jbrowse.org</a>
<span class="smwsearch">[+](../Special:SearchByProperty/Has-20URL/http:-2F-2Fjbrowse.org "Special:SearchByProperty/Has-20URL/http:-2F-2Fjbrowse.org")</span>,
<a href="http://twitter.com/usejbrowse" class="external free"
rel="nofollow">http://twitter.com/usejbrowse</a>
<span class="smwsearch">[+](../Special:SearchByProperty/Has-20URL/http:-2F-2Ftwitter.com-2Fusejbrowse "Special:SearchByProperty/Has-20URL/http:-2F-2Ftwitter.com-2Fusejbrowse")</span>,
<a href="http://github.com/GMOD/jbrowse" class="external free"
rel="nofollow">http://github.com/GMOD/jbrowse</a>
<span class="smwsearch">[+](../Special:SearchByProperty/Has-20URL/http:-2F-2Fgithub.com-2FGMOD-2Fjbrowse "Special:SearchByProperty/Has-20URL/http:-2F-2Fgithub.com-2FGMOD-2Fjbrowse")</span>,
<a href="http://jbrowse.org/demos" class="external free"
rel="nofollow">http://jbrowse.org/demos</a>
<span class="smwsearch">[+](../Special:SearchByProperty/Has-20URL/http:-2F-2Fjbrowse.org-2Fdemos "Special:SearchByProperty/Has-20URL/http:-2F-2Fjbrowse.org-2Fdemos")</span>,
<a href="http://icemangenome.net/%E2%80%8E" class="external free"
rel="nofollow">http://icemangenome.net/%E2%80%8E</a>
<span class="smwsearch">[+](../Special:SearchByProperty/Has-20URL/http:-2F-2Ficemangenome.net-2F-25E2-2580-258E "Special:SearchByProperty/Has-20URL/http:-2F-2Ficemangenome.net-2F-25E2-2580-258E")</span>,
<a href="http://genomesunzipped.org/jbrowse" class="external free"
rel="nofollow">http://genomesunzipped.org/jbrowse</a>
<span class="smwsearch">[+](../Special:SearchByProperty/Has-20URL/http:-2F-2Fgenomesunzipped.org-2Fjbrowse "Special:SearchByProperty/Has-20URL/http:-2F-2Fgenomesunzipped.org-2Fjbrowse")</span>,
<a href="http://beetlebase.org" class="external free"
rel="nofollow">http://beetlebase.org</a>
<span class="smwsearch">[+](../Special:SearchByProperty/Has-20URL/http:-2F-2Fbeetlebase.org "Special:SearchByProperty/Has-20URL/http:-2F-2Fbeetlebase.org")</span>
and <a href="http://www.medicinalgenomics.com/the-jane-ome/"
class="external free"
rel="nofollow">http://www.medicinalgenomics.com/the-jane-ome/</a>
<span class="smwsearch">[+](../Special:SearchByProperty/Has-20URL/http:-2F-2Fwww.medicinalgenomics.com-2Fthe-2Djane-2Dome-2F "Special:SearchByProperty/Has-20URL/http:-2F-2Fwww.medicinalgenomics.com-2Fthe-2Djane-2Dome-2F")</span>

[Has description](../Property:Has_description "Property:Has description")

JBrowse is a genome browser with a fully d<span class="smw-highlighter"
data-type="2" state="persistent"
data-title="Information"><span class="smwtext"> …
</span><span class="smwttcontent">JBrowse is a genome browser with a
fully dynamic AJAX interface, being developed as the eventual successor
to GBrowse. It is very fast and scales well to large datasets. JBrowse
is javascript-based and does almost all of its work directly in the
user's web browser, with minimal requirements for the server.
</span></span>

### <span id="Features" class="mw-headline">Features</span><span class="mw-editsection"><span class="mw-editsection-bracket">\[</span>[edit](http://gmod.org/mediawiki/index.php?title=JBrowse&action=edit&section=1 "Edit section: Features")<span class="mw-editsection-bracket">\]</span></span>

- Fast, smooth scrolling and zooming. Explore your genome with
  unparalleled speed.
- Scales easily to multi-gigabase genomes and deep-coverage sequencing.
- Supports GFF3, BED, FASTA, Wiggle, BigWig, BAM, VCF (with tabix),
  REST, and more. BAM, BigWig, and VCF data are displayed directly from
  the compressed binary file with no conversion needed.
- Very light server resource requirements. In fact, JBrowse has no
  back-end server code, just tools for formatting data files to be read
  directly over HTTP. Serve huge datasets from a single low-cost cloud
  instance.ets from a single low-cost cloud instance.
  <span class="smwsearch"><a
  href="http://gmod.org/mediawiki/index.php?title=Special:SearchByProperty&amp;x=Has-20description%2FJBrowse-20is-20a-20genome-20browser-20with-20a-20fully-20dynamic-20AJAX-20interface%2C-20being-20developed-20as-20the-20eventual-20successor-20to-20GBrowse.-20It-20is-20very-20fast-20and-20scales-20well-20to-20large-20datasets.-20JBrowse-20is-20javascript-2Dbased-20and-20does-20almost-20all-20of-20its-20work-20directly-20in-20the-20user%27s-20web-20browser%2C-20with-20minimal-20requirements-20for-20the-20server.-0A-0A%3D%3D%3DFeatures%3D%3D%3D-0A-0A%2AFast%2C-20smooth-20scrolling-20and-20zooming.-20Explore-20your-20genome-20with-20unparalleled-20speed.-0A%2AScales-20easily-20to-20multi-2Dgigabase-20genomes-20and-20deep-2Dcoverage-20sequencing.-0A%2ASupports-20GFF3%2C-20BED%2C-20FASTA%2C-20Wiggle%2C-20BigWig%2C-20BAM%2C-20VCF-20%28with-20tabix%29%2C-20REST%2C-20and-20more.-20-20BAM%2C-20BigWig%2C-20and-20VCF-20data-20are-20displayed-20directly-20from-20the-20compressed-20binary-20file-20with-20no-20conversion-20needed.-0A%2AVery-20light-20server-20resource-20requirements.-20In-20fact%2C-20JBrowse-20has-20no-20back-2Dend-20server-20code%2C-20just-20tools-20for-20formatting-20data-20files-20to-20be-20read-20directly-20over-20HTTP.-20Serve-20huge-20datasets-20from-20a-20single-20low-2Dcost-20cloud-20instance."
  class="external text" rel="nofollow">+</a></span> and Browse the
  genome of Ötzi the ice man
  <span class="smwsearch">[+](../Special:SearchByProperty/Has-20description/Browse-20the-20genome-20of-20%C3%96tzi-20the-20ice-20man "Special:SearchByProperty/Has-20description/Browse-20the-20genome-20of-20Ötzi-20the-20ice-20man")</span>

<div class="visualClear">

</div>

<div id="mw-navigation">

## Navigation menu

<div id="mw-head">



<div id="left-navigation">

<div id="p-namespaces" class="vectorTabs" role="navigation"
aria-labelledby="p-namespaces-label">

### Namespaces

- <span id="ca-nstab-main"><a href="../JBrowse.1" accesskey="c"
  title="View the content page [c]">Page</a></span>
- <span id="ca-talk"><a
  href="http://gmod.org/mediawiki/index.php?title=Talk:JBrowse&amp;action=edit&amp;redlink=1"
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


- <span id="t-smwbrowselink"><a href="../Special:Browse/JBrowse" rel="smw-browse">Browse
  properties</a></span>
- <span id="t-pdf">[Print as
  PDF](http://gmod.org/mediawiki/index.php?title=Special:PdfPrint&page=JBrowse)</span>

</div>

</div>

</div>

</div>

<div id="footer" role="contentinfo">

- <span id="footer-info-lastmod">Last updated at 19:18 on 15 April
  2016.</span>
<!-- - <span id="footer-info-viewcount">734,540 page views.</span> -->
- <span id="footer-info-copyright">Content is available under
  <a href="http://www.gnu.org/licenses/fdl-1.3.html" class="external"
  rel="nofollow">a GNU Free Documentation License</a> unless otherwise
  noted.</span>

<!-- -->

- <span id="footer-places-about">[About
  GMOD](../GMOD:About "GMOD:About")</span>

<!-- -->

- <span id="footer-copyrightico">[<img src="http://www.gnu.org/graphics/gfdl-logo-small.png" width="88"
  height="31" alt="a GNU Free Documentation License" />](http://www.gnu.org/licenses/fdl-1.3.html)</span>
- <span id="footer-poweredbyico">[<img
  src="../../mediawiki/skins/common/images/poweredby_mediawiki_88x31.png"
  width="88" height="31" alt="Powered by MediaWiki" />](http://www.mediawiki.org/)
  [<img
  src="../../mediawiki/extensions/SemanticMediaWiki/resources/images/smw_button.png"
  width="88" height="31" alt="Powered by Semantic MediaWiki" />](https://www.semantic-mediawiki.org/wiki/Semantic_MediaWiki)</span>

<div style="clear:both">

</div>

</div>
