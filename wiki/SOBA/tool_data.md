<div id="mw-page-base" class="noprint">

</div>

<div id="mw-head-base" class="noprint">

</div>

<div id="content" class="mw-body" role="main">

<span id="top"></span>

<div id="mw-js-message" style="display:none;">

</div>



# <span dir="auto">SOBA/tool data</span>

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

{{ {{{template}}} \| name = SOBA \| full_name = Sequence Ontology
Bioinformatics Analysis \| status = mature \| dev = maintenance \|
support = active \| type = \| platform = linux, os x, unix,
win\|platform = linux, os x, unix, win\|platform = linux, os x, unix,
win\|platform = linux, os x, unix, win \| platform = web \| logo =
SOBA_Header.jpg \| home = <a
href="http://www.sequenceontology.org/wiki/index.php/SOBA_-_Sequence_Ontology_Bioinformatics_Analysis"
class="external free"
rel="nofollow">http://www.sequenceontology.org/wiki/index.php/SOBA_-_Sequence_Ontology_Bioinformatics_Analysis</a>
\| about = SOBA, Sequence Ontology Bioinformatics Analysis, is a command
line tool and web application for analyzing [GFF3](../GFF3 "GFF3")
annotations. [GFF3](../GFF3 "GFF3") is a standard file format for
genomic annotation data. SOBA gathers statistics from GFF3 files and
renders them as tables and graphs.

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
[GFF3](../GFF3 "GFF3") file as well as the ability to produce complex
and extensible custom reports via a robust template system.

SOBA is intended as a tool for those dealing with genomic sequence
annotation who want to view genome wide summaries of their annotation
files. For example: SOBA would be a useful tool at an annotation
jamboree for a newly sequenced organism and when preparing the resulting
genome paper; SOBA would help those developing annotation tools to
quickly evaluate updates to their tool; SOBA assists comparative
genomics analyses by providing a high-level overview of the genome of
multiple organisms. SOBA complements genome browsers by providing a
summary of all the features annotated in the genome. \| screenshot = \|
public_server = The SOBA web interface is available at
<a href="http://www.sequenceontology.org/cgi-bin/soba.cgi"
class="external text" rel="nofollow">the Sequence Ontology website</a>.
\| dl = SOBAcl is available (via
<a href="http://subversion.apache.org/" class="external text"
rel="nofollow">Subversion</a>) from:

     svn co svn://topaz.genetics.utah.edu/SOBA/trunk SOBA

\| dl_url = \| dl_src = \| dl_dev = \| dl_src_url = \| dl_dev_url = \|
getting_started_preamble = \| req = SOBA is built with Perl and uses
<a href="http://template-toolkit.org/" class="external text"
rel="nofollow">Template Toolkit (TT)</a> to generate html or text
reports, GraphViz for ontology graphs, and GD for charts. SOBAweb uses
<a href="http://search.cpan.org/perldoc?CGI::Application"
class="external text" rel="nofollow">CGI::Application</a> as a Perl
webapp framework and the JQuery JavaScript library for Web 2.0 effects
and [AJAX](../Glossary#AJAX "Glossary").

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

\| install = Install documentation is included in the SOBAcl download.
\| config = \| doc = Documentation for the web interface to SOBA is
available on the <a
href="http://www.sequenceontology.org/wiki/index.php/SOBA_-_Sequence_Ontology_Bioinformatics_Analysis"
class="external text" rel="nofollow">Sequence Ontology Wiki</a> as well
as via tool-tips on the site itself.

Documentation for the command line version - SOBAcl - is available as a
usage statement with the script itself:

    SOBAcl --help

A README and INSTALL document are also included with SOBAcl. \| papers =
\| presentations = \| tutorials =

<a href="../SOBA_Tutorial" class="mw-redirect"
title="SOBA Tutorial">SOBA Tutorial</a>  
taught as part of the [2013 GMOD Summer
School](../2013_GMOD_Summer_School "2013 GMOD Summer School")

\| wild_urls = \| mail = SOBA is supported by the
<a href="https://lists.sourceforge.net/lists/listinfo/song-devel"
class="external text" rel="nofollow">Sequence Ontology Developers
Mailing list</a>. \| logo_info = \| dev_ppl = \| dev_status = \|
contact_email = \| input = [GFF3](../GFF3 "GFF3") \| output = \|
see_also = \| demo_server = \|release date=2009 \| survey_link = }}

</div>

<div class="printfooter">

Retrieved from
"<http://gmod.org/mediawiki/index.php?title=SOBA/tool_data&oldid=25978>"

</div>

<div id="catlinks" class="catlinks">

<div id="mw-normal-catlinks" class="mw-normal-catlinks">

[Categories](../Special:Categories "Special:Categories"):

- [GMOD
  Components](../Category:GMOD_Components "Category:GMOD Components")
- [SOBA](../Category:SOBA "Category:SOBA")
- [Tool data](../Category:Tool_data "Category:Tool data")

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
  href="http://gmod.org/mediawiki/index.php?title=Talk:SOBA/tool_data&amp;action=edit&amp;redlink=1"
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


- <span id="t-smwbrowselink"><a href="../Special:Browse/SOBA-2Ftool_data" rel="smw-browse">Browse
  properties</a></span>


</div>

</div>

</div>

</div>

<div id="footer" role="contentinfo">

- <span id="footer-info-lastmod">Last updated at 03:35 on 24 June
  2014.</span>
<!-- - <span id="footer-info-viewcount">25,797 page views.</span> -->
- <span id="footer-info-copyright">Content is available under
  <a href="http://www.gnu.org/licenses/fdl-1.3.html" class="external"
  rel="nofollow">a GNU Free Documentation License</a> unless otherwise
  noted.</span>

<!-- -->

- <span id="footer-places-about">[About
  GMOD](../GMOD:About "GMOD:About")</span>

<!-- -->






</div>
