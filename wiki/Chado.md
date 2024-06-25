<div id="mw-page-base" class="noprint">

</div>

<div id="mw-head-base" class="noprint">

</div>

<div id="content" class="mw-body" role="main">

<span id="top"></span>

<div id="mw-js-message" style="display:none;">

</div>



# <span dir="auto">Chado - Getting Started</span>

<div id="bodyContent">

<div id="siteSub">

From GMOD

</div>

<div id="contentSub">

(Redirected from
[Chado](http://gmod.org/mediawiki/index.php?title=Chado&redirect=no "Chado"))

</div>

<div id="jump-to-nav" class="mw-jump">

Jump to: [navigation](#mw-navigation), [search](#p-search)

</div>

<div id="mw-content-text" class="mw-content-ltr" lang="en" dir="ltr">

<div class="componentBox">

<div class="compBoxHdr">

Status

</div>

- **Mature** release
- **Active** development
- **Active** support

<div class="compBoxHdr">

Resources

</div>

- [Introduction](Introduction_to_Chado "Introduction to Chado")
- [Manual](Chado_Manual "Chado Manual")
- <a href="Chado_Tutorial" class="mw-redirect"
  title="Chado Tutorial">Tutorial</a>
- [Modules](Chado_Modules "Chado Modules")
- <a href="https://lists.sourceforge.net/lists/listinfo/gmod-schema"
  class="external text" rel="nofollow">Mailing List</a>
- [Tagged](Category:Chado "Category:Chado")
- <a href="../extras/2008GMODCommunitySurvey.html#Chado"
  class="external text" rel="nofollow">2008 Survey</a>

</div>

Chado is a [relational database
schema](Glossary#Database_Schema "Glossary") that underlies [many GMOD
installations](GMOD_Users "GMOD Users"). It is capable of representing
many of the general classes of data frequently encountered in modern
biology such as sequence, sequence comparisons, phenotypes, genotypes,
ontologies, publications, and phylogeny. It has been designed to handle
complex representations of biological knowledge and should be considered
one of the most sophisticated relational schemas currently available in
molecular biology. The price of this capability is that the new user
must spend some time becoming familiar with its fundamentals.

<div id="toc" class="toc">

<div id="toctitle">

## Contents

</div>

- [<span class="tocnumber">1</span>
  <span class="toctext">Documentation</span>](#Documentation)
- [<span class="tocnumber">2</span>
  <span class="toctext">Modules</span>](#Modules)
- [<span class="tocnumber">3</span>
  <span class="toctext">Installation</span>](#Installation)
  - [<span class="tocnumber">3.1</span> <span class="toctext">Download a
    Stable Release of Chado</span>](#Download_a_Stable_Release_of_Chado)
  - [<span class="tocnumber">3.2</span> <span class="toctext">Chado From
    SVN</span>](#Chado_From_SVN)
- [<span class="tocnumber">4</span> <span class="toctext">Loading
  Data</span>](#Loading_Data)
- [<span class="tocnumber">5</span> <span class="toctext">Mailing
  Lists</span>](#Mailing_Lists)
- [<span class="tocnumber">6</span>
  <span class="toctext">Pronunciation</span>](#Pronunciation)

</div>

## <span id="Documentation" class="mw-headline">Documentation</span>

- [Introduction to Chado](Introduction_to_Chado "Introduction to Chado")
- <a
  href="http://bioinformatics.oxfordjournals.org/cgi/content/abstract/23/13/i337?ijkey=QYeUct9uLSzefgk&amp;keytype=ref"
  class="external text" rel="nofollow">Chado paper in Bioinformatics</a>
- <a href="Chado_Tutorial" class="mw-redirect"
  title="Chado Tutorial">Chado Tutorial</a>
- [Chado Manual](Chado_Manual "Chado Manual")
- [FAQ for Chado](Chado_FAQ "Chado FAQ")
- [Chado Tables](Chado_Tables "Chado Tables")
- [Chado Best Practices](Chado_Best_Practices "Chado Best Practices")
- [Sample Chado SQL](Sample_Chado_SQL "Sample Chado SQL")
- [PostgreSQL Performance
  Tips](PostgreSQL_Performance_Tips "PostgreSQL Performance Tips")

## <span id="Modules" class="mw-headline">Modules</span>

Chado is a modular schema, designed in such a way as to allow the
addition of new modules for new data types. The existing modules are:

- [Audit](Chado_Audit_Module "Chado Audit Module") - for database audit
  trails
- [Companalysis](Chado_Companalysis_Module "Chado Companalysis Module") -
  for data from computational analysis
- [Contact](Chado_Contact_Module "Chado Contact Module") - for people,
  groups, and organizations
- [Controlled Vocabulary (cv)](Chado_CV_Module "Chado CV Module") - for
  controlled vocabularies and ontologies
- [Expression](Chado_Expression_Module "Chado Expression Module") - for
  summaries of RNA and protein expresssion
- [General](Chado_General_Module "Chado General Module") - for
  identifiers
- [Genetic](Chado_Genetic_Module "Chado Genetic Module") - for genetic
  data and genotypes
- [Library](Chado_Library_Module "Chado Library Module") - for
  descriptions of molecular libraries
- [Mage](Chado_Mage_Module "Chado Mage Module") - for microarray data
- [Map](Chado_Map_Module "Chado Map Module") - for maps without sequence
- [Natural Diversity
  (ND)](Chado_Natural_Diversity_Module.1 "Chado Natural Diversity Module") -
  for multiple experiments, such as phenotyping and genotyping
- [Organism](Chado_Organism_Module "Chado Organism Module") - for
  taxonomic data
- [Phenotype](Chado_Phenotype_Module "Chado Phenotype Module") - for
  phenotypic data
- [Phylogeny](Chado_Phylogeny_Module "Chado Phylogeny Module") - for
  organisms and phylogenetic trees
- [Publication
  (pub)](Chado_Publication_Module "Chado Publication Module") - for
  publications and references
- [Sequence](Chado_Sequence_Module "Chado Sequence Module") - for
  sequences and sequence features
- [Stock](Chado_Stock_Module "Chado Stock Module") - for specimens and
  biological collections
- [WWW](Chado_WWW_Module "Chado WWW Module") -

  

## <span id="Installation" class="mw-headline">Installation</span>

First you will need database software, or Relational Database Management
System (RDBMS). The recommended RDBMS for Chado currently is
<a href="http://www.postgresql.org/" class="external text"
rel="nofollow">Postgres</a>. Postgres is free software, usually used on
a Unix operating system such as Linux or Mac OS X. You can also install
Postgres, and Chado, on Windows but most Chado installations are found
on some version of Unix - you'll probably get the best support by
choosing Unix. (See [Databases and
GMOD](Databases_and_GMOD "Databases and GMOD") for more discussion.)
Once you've installed your RDBMS you can install Chado.

  

### <span id="Download_a_Stable_Release_of_Chado" class="mw-headline">Download a Stable Release of Chado</span>

See [Downloads](Downloads "Downloads")

  

### <span id="Chado_From_SVN" class="mw-headline">Chado From SVN</span>

You can get the most up-to-date, not even released yet, version of Chado
from <a href="Subversion" class="mw-redirect"
title="Subversion">Subversion</a>. To get a copy of the latest Chado
source, enter this at the command line:

    svn co https://svn.code.sf.net/p/gmod/svn/schema/trunk

Once the package has been downloaded `cd` to the `trunk/chado`
directory.

Follow the instructions in the `INSTALL.Chado` file, including the
installation of the prerequisites. Or read <a
href="http://gmod.svn.sourceforge.net/viewvc/gmod/schema/trunk/chado/INSTALL.Chado"
class="external text" rel="nofollow"><code>INSTALL.Chado</code></a>
online.

## <span id="Loading_Data" class="mw-headline">Loading Data</span>

After completing these steps, you can load your chado schema with data
in a number of ways:

- [Load RefSeq into Chado
  HOWTO](Load_RefSeq_Into_Chado "Load RefSeq Into Chado")
- [Load GFF into Chado HOWTO](Load_GFF_Into_Chado "Load GFF Into Chado")
- Using [XORT](XORT.1 "XORT")

You can also use the application [Apollo](Apollo.1 "Apollo") to curate
data in Chado.

## <span id="Mailing_Lists" class="mw-headline">Mailing Lists</span>

|  |  |  |  |
|----|----|----|----|
|  | Mailing List Link | Description | Archive(s) |
| <a href="Chado" class="mw-redirect" title="Chado">Chado</a> | <a href="https://lists.sourceforge.net/lists/listinfo/gmod-schema"
class="external text" rel="nofollow">gmod-schema</a> | All issues regarding <a href="Chado" class="mw-redirect" title="Chado">Chado</a>, [Chado::AutoDBI](Chado::AutoDBI "Chado::AutoDBI"), and [Bio::Chado::Schema](Bio::Chado::Schema "Bio::Chado::Schema") | <a href="http://dir.gmane.org/gmane.science.biology.gmod.schema"
class="external text" rel="nofollow">Gmane</a>, <a href="http://gmod.827538.n3.nabble.com/Chado-f815597.html"
class="external text" rel="nofollow">Nabble (2010/05+)</a>, <a
href="http://sourceforge.net/mailarchive/forum.php?forum_name=gmod-schema"
class="external text" rel="nofollow">Sourceforge</a> |
|  | <a href="https://lists.sourceforge.net/lists/listinfo/gmod-schema-cmts"
class="external text" rel="nofollow">gmod-schema-cmts</a> | <a href="Chado" class="mw-redirect" title="Chado">Chado</a> code updates. | <a
href="http://sourceforge.net/mailarchive/forum.php?forum_name=gmod-schema-cmts"
class="external text" rel="nofollow">Sourceforge</a> |

## <span id="Pronunciation" class="mw-headline">Pronunciation</span>

*Chado* is usually pronounced
<a href="../mediawiki/images/e/e4/Chado.mp3" class="internal"
title="Chado.mp3">like this</a>.

</div>

<div class="printfooter">

Retrieved from
"<http://gmod.org/mediawiki/index.php?title=Chado_-_Getting_Started&oldid=25323>"

</div>

<div id="catlinks" class="catlinks">

<div id="mw-normal-catlinks" class="mw-normal-catlinks">

[Categories](Special:Categories "Special:Categories"):

- [Chado Modules](Category:Chado_Modules "Category:Chado Modules")
- [Chado](Category:Chado "Category:Chado")
- [Database Tools](Category:Database_Tools "Category:Database Tools")
- [GMOD Components](Category:GMOD_Components "Category:GMOD Components")

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

- <span id="ca-nstab-main"><a href="Chado_-_Getting_Started" accesskey="c"
  title="View the content page [c]">Page</a></span>
- <span id="ca-talk"><a
  href="http://gmod.org/mediawiki/index.php?title=Talk:Chado_-_Getting_Started&amp;action=edit&amp;redlink=1"
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


- <span id="t-smwbrowselink"><a href="Special:Browse/Chado_-2D_Getting_Started"
  rel="smw-browse">Browse properties</a></span>
- <span id="t-pdf">[Print as
  PDF](http://gmod.org/mediawiki/index.php?title=Special:PdfPrint&page=Chado_-_Getting_Started)</span>

</div>

</div>

</div>

</div>

<div id="footer" role="contentinfo">

- <span id="footer-info-lastmod">Last updated at 18:08 on 13 February
  2014.</span>
<!-- - <span id="footer-info-viewcount">945,092 page views.</span> -->
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
