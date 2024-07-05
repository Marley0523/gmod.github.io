<div id="mw-page-base" class="noprint">

</div>

<div id="mw-head-base" class="noprint">

</div>

<div id="content" class="mw-body" role="main">

<span id="top"></span>

<div id="mw-js-message" style="display:none;">

</div>



# <span dir="auto">SOBA</span>

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

  

<div class="center">

<div class="floatnone">

<a href="File:SOBA_Header.jpg" class="image"><img
src="https://raw.githubusercontent.com/GMOD/gmod.github.io/main/mediawiki/images/thumb/b/b6/SOBA_Header.jpg/400px-SOBA_Header.jpg"
srcset="https://raw.githubusercontent.com/GMOD/gmod.github.io/main/mediawiki/images/thumb/b/b6/SOBA_Header.jpg/600px-SOBA_Header.jpg 1.5x, https://raw.githubusercontent.com/GMOD/gmod.github.io/main/mediawiki/images/thumb/b/b6/SOBA_Header.jpg/800px-SOBA_Header.jpg 2x"
width="400" height="81" alt="SOBA logo" /></a>

</div>

</div>

<div class="componentBox">

<div class="compBoxHdr">

Status

</div>

- Mature release
- Development: maintenance
- Support: active

<div class="compBoxHdr">

Resources

</div>

- <a
  href="http://www.sequenceontology.org/wiki/index.php/SOBA_-_Sequence_Ontology_Bioinformatics_Analysis"
  class="external text" rel="nofollow">Home page</a>

  

  

</div>

<div id="toc" class="toc">

<div id="toctitle">

## Contents

</div>

- [<span class="tocnumber">1</span> <span class="toctext">About Sequence
  Ontology Bioinformatics Analysis
  (SOBA)</span>](#About_Sequence_Ontology_Bioinformatics_Analysis_.28SOBA.29)
- [<span class="tocnumber">2</span>
  <span class="toctext">Downloads</span>](#Downloads)
- [<span class="tocnumber">3</span> <span class="toctext">Using
  SOBA</span>](#Using_SOBA)
  - [<span class="tocnumber">3.1</span> <span class="toctext">System
    Requirements</span>](#System_Requirements)
    - [<span class="tocnumber">3.1.1</span> <span class="toctext">SOBA
      web</span>](#SOBA_web)
    - [<span class="tocnumber">3.1.2</span>
      <span class="toctext">SOBAcl</span>](#SOBAcl)
  - [<span class="tocnumber">3.2</span>
    <span class="toctext">Installation</span>](#Installation)
  - [<span class="tocnumber">3.3</span>
    <span class="toctext">Documentation</span>](#Documentation)
- [<span class="tocnumber">4</span> <span class="toctext">Publications,
  Tutorials, and
  Presentations</span>](#Publications.2C_Tutorials.2C_and_Presentations)
  - [<span class="tocnumber">4.1</span>
    <span class="toctext">Tutorials</span>](#Tutorials)
- [<span class="tocnumber">5</span> <span class="toctext">Contacts and
  Mailing Lists</span>](#Contacts_and_Mailing_Lists)
- [<span class="tocnumber">6</span> <span class="toctext">More on
  SOBA</span>](#More_on_SOBA)

</div>

## <span id="About_Sequence_Ontology_Bioinformatics_Analysis_.28SOBA.29" class="mw-headline">About Sequence Ontology Bioinformatics Analysis (SOBA)</span>

SOBA, Sequence Ontology Bioinformatics Analysis, is a command line tool
and web application for analyzing [GFF3](GFF3 "GFF3") annotations.
[GFF3](GFF3 "GFF3") is a standard file format for genomic annotation
data. SOBA gathers statistics from GFF3 files and renders them as tables
and graphs.

The web version of SOBA will produce the following:

- Summary statistics of feature types and attributes used
- Histograms of feature lengths
- Graphs of
  <a href="http://www.sequenceontology.org" class="external text"
  rel="nofollow">Sequence Ontology</a> terms used
- Histograms of intron density
- Suggestions to improve SO compliance for invalid terms

In addition, the command line tool (SOBAcl) flexibly produces a much
wider variety of tables, figures and graphs based on the data in a
[GFF3](GFF3 "GFF3") file as well as the ability to produce complex and
extensible custom reports via a robust template system.

SOBA is intended as a tool for those dealing with genomic sequence
annotation who want to view genome wide summaries of their annotation
files. For example: SOBA would be a useful tool at an annotation
jamboree for a newly sequenced organism and when preparing the resulting
genome paper; SOBA would help those developing annotation tools to
quickly evaluate updates to their tool; SOBA assists comparative
genomics analyses by providing a high-level overview of the genome of
multiple organisms. SOBA complements genome browsers by providing a
summary of all the features annotated in the genome.  
  
Visit the <a
href="http://www.sequenceontology.org/wiki/index.php/SOBA_-_Sequence_Ontology_Bioinformatics_Analysis"
class="external text" rel="nofollow">SOBA website</a>.

  

## <span id="Downloads" class="mw-headline">Downloads</span>

- SOBAcl is available (via
  <a href="http://subversion.apache.org/" class="external text"
  rel="nofollow">Subversion</a>) from:

<!-- -->

     svn co svn://topaz.genetics.utah.edu/SOBA/trunk SOBA

  

  

## <span id="Using_SOBA" class="mw-headline">Using SOBA</span>

### <span id="System_Requirements" class="mw-headline">System Requirements</span>

SOBA is built with Perl and uses
<a href="http://template-toolkit.org/" class="external text"
rel="nofollow">Template Toolkit (TT)</a> to generate html or text
reports, GraphViz for ontology graphs, and GD for charts. SOBAweb uses
<a href="http://search.cpan.org/perldoc?CGI::Application"
class="external text" rel="nofollow">CGI::Application</a> as a Perl
webapp framework and the JQuery JavaScript library for Web 2.0 effects
and [AJAX](Glossary#AJAX "Glossary").

#### <span id="SOBA_web" class="mw-headline">SOBA web</span>

The web interface to SOBA should work on any modern browser that has
Javascript enabled.

#### <span id="SOBAcl" class="mw-headline">SOBAcl</span>

SOBAcl requires a number of Perl libraries, as well as the Graphviz and
libgd graphics library:

- <a href="http://www.graphviz.org/" class="external text"
  rel="nofollow">The Graphviz library</a>
- <a href="http://www.libgd.org/Main_Page" class="external text"
  rel="nofollow">The libgd graphics library</a>
- <a href="http://www.perl.org/" class="external text"
  rel="nofollow">Perl</a>
- <a href="http://search.cpan.org/dist/GraphViz/" class="external text"
  rel="nofollow">GraphViz</a>
- <a href="http://search.cpan.org/dist/Template-Toolkit/"
  class="external text" rel="nofollow">Template Toolkit</a>
- <a href="http://search.cpan.org/dist/DBI/" class="external text"
  rel="nofollow">DBI</a>
- <a href="http://search.cpan.org/dist/Statistics-Descriptive/"
  class="external text" rel="nofollow">Statistics::Descriptive</a>
- <a href="http://search.cpan.org/dist/Set-IntSpan-Fast-XS/"
  class="external text" rel="nofollow">Set::IntSpan::Fast</a>
- <a href="http://search.cpan.org/dist/Text-Table/" class="external text"
  rel="nofollow">Text::Table</a>
- <a href="http://search.cpan.org/dist/Number-Format/"
  class="external text" rel="nofollow">Number::Format</a>
- <a href="http://search.cpan.org/dist/SQL-Abstract/"
  class="external text" rel="nofollow">SQL::Abstract</a>
- <a href="http://search.cpan.org/dist/go-perl/" class="external text"
  rel="nofollow">GO::Parser from go-perl</a>
- <a href="http://search.cpan.org/dist/GDGraph/" class="external text"
  rel="nofollow">GD::Graph</a>

### <span id="Installation" class="mw-headline">Installation</span>

Install documentation is included in the SOBAcl download.

### <span id="Documentation" class="mw-headline">Documentation</span>

Documentation for the web interface to SOBA is available on the <a
href="http://www.sequenceontology.org/wiki/index.php/SOBA_-_Sequence_Ontology_Bioinformatics_Analysis"
class="external text" rel="nofollow">Sequence Ontology Wiki</a> as well
as via tool-tips on the site itself.

Documentation for the command line version - SOBAcl - is available as a
usage statement with the script itself:

    SOBAcl --help

A README and INSTALL document are also included with SOBAcl.

## <span id="Publications.2C_Tutorials.2C_and_Presentations" class="mw-headline">Publications, Tutorials, and Presentations</span>

### <span id="Tutorials" class="mw-headline">Tutorials</span>

<a href="SOBA_Tutorial" class="mw-redirect" title="SOBA Tutorial">SOBA
Tutorial</a>  
taught as part of the [2013 GMOD Summer
School](2013_GMOD_Summer_School "2013 GMOD Summer School")

  

## <span id="Contacts_and_Mailing_Lists" class="mw-headline">Contacts and Mailing Lists</span>

SOBA is supported by the
<a href="https://lists.sourceforge.net/lists/listinfo/song-devel"
class="external text" rel="nofollow">Sequence Ontology Developers
Mailing list</a>.

  

  

  

## <span id="More_on_SOBA" class="mw-headline">More on SOBA</span>

See [Category%3ASOBA](Category%3ASOBA "Category%3ASOBA")

  

  

  
Raw tool data at [SOBA/tool data](SOBA/tool_data "SOBA/tool data")

</div>

<div class="printfooter">

Retrieved from
"<http://gmod.org/mediawiki/index.php?title=SOBA&oldid=23019>"

</div>

<div id="catlinks" class="catlinks">

<div id="mw-normal-catlinks" class="mw-normal-catlinks">

[Categories](Special%3ACategories "Special%3ACategories"):

- [GMOD Component](Category%3AGMOD_Component "Category%3AGMOD Component")
- [GMOD Components](Category%3AGMOD_Components "Category%3AGMOD Components")
- [SOBA](Category%3ASOBA "Category%3ASOBA")
- [Tool data](Category%3ATool_data "Category%3ATool data")

</div>

</div>

<div id="mw-data-after-content">

<div class="smwfact">

<span class="smwfactboxhead">Facts about
"<span class="swmfactboxheadbrowse">[SOBA](Special%3ABrowse/SOBA "Special%3ABrowse/SOBA")</span>"</span><span class="smwrdflink"><span class="rdflink">[RDF
feed](http://gmod.org/wiki/Special:ExportRDF/SOBA "Special:ExportRDF/SOBA")</span></span>

|  |  |
|----|----|
| [Has website](Property%3AHas_website "Property:Has website") | <a
href="http://www.sequenceontology.org/wiki/index.php/SOBA_-_Sequence_Ontology_Bioinformatics_Analysis"
class="external free"
rel="nofollow">http://www.sequenceontology.org/wiki/index.php/SOBA_-_Sequence_Ontology_Bioinformatics_Analysis</a> <span class="smwsearch">[+](Special%3ASearchByProperty/Has-20website/http%3A-2F-2Fwww.sequenceontology.org-2Fwiki-2Findex.php-2FSOBA_-2D_Sequence_Ontology_Bioinformatics_Analysis "Special%3ASearchByProperty/Has-20website/http:-2F-2Fwww.sequenceontology.org-2Fwiki-2Findex.php-2FSOBA -2D Sequence Ontology Bioinformatics Analysis")</span> |

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
  href="http://gmod.org/mediawiki/index.php?title=Talk:SOBA&amp;action=edit&amp;redlink=1"
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


- <span id="t-smwbrowselink"><a href="Special%3ABrowse/SOBA" rel="smw-browse">Browse properties</a></span>


</div>

</div>

</div>

</div>

<div id="footer" role="contentinfo">

- <span id="footer-info-lastmod">Last updated at 21:43 on 13 February
  2013.</span>
<!-- - <span id="footer-info-viewcount">93,231 page views.</span> -->
- <span id="footer-info-copyright">Content is available under
  <a href="http://www.gnu.org/licenses/fdl-1.3.html" class="external"
  rel="nofollow">a GNU Free Documentation License</a> unless otherwise
  noted.</span>

<!-- -->

- <span id="footer-places-about">[About
  GMOD](GMOD%3AAbout "GMOD%3AAbout")</span>

<!-- -->






</div>
