<div id="mw-page-base" class="noprint">

</div>

<div id="mw-head-base" class="noprint">

</div>

<div id="content" class="mw-body" role="main">

<span id="top"></span>

<div id="mw-js-message" style="display:none;">

</div>



# <span dir="auto">XORT</span>

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

- <a href="XORT.1" class="external text" rel="nofollow">Home page</a>
- <a href="http://sourceforge.net/projects/gmod/files/OldFiles/"
  class="external text" rel="nofollow">Download</a>

  

</div>

<div id="toc" class="toc">

<div id="toctitle">

## Contents

</div>

- [<span class="tocnumber">1</span> <span class="toctext">About
  XORT</span>](#About_XORT)
- [<span class="tocnumber">2</span>
  <span class="toctext">Downloads</span>](#Downloads)
- [<span class="tocnumber">3</span> <span class="toctext">Using
  XORT</span>](#Using_XORT)
  - [<span class="tocnumber">3.1</span> <span class="toctext">System
    Requirements</span>](#System_Requirements)
  - [<span class="tocnumber">3.2</span>
    <span class="toctext">Documentation</span>](#Documentation)
- [<span class="tocnumber">4</span> <span class="toctext">Publications,
  Tutorials, and
  Presentations</span>](#Publications.2C_Tutorials.2C_and_Presentations)
  - [<span class="tocnumber">4.1</span>
    <span class="toctext">Presentations</span>](#Presentations)
- [<span class="tocnumber">5</span> <span class="toctext">Contacts and
  Mailing Lists</span>](#Contacts_and_Mailing_Lists)
- [<span class="tocnumber">6</span> <span class="toctext">XORT
  Development</span>](#XORT_Development)
  - [<span class="tocnumber">6.1</span>
    <span class="toctext">Development team</span>](#Development_team)
- [<span class="tocnumber">7</span> <span class="toctext">See
  also</span>](#See_also)
  - [<span class="tocnumber">7.1</span>
    <span class="toctext">DBStag</span>](#DBStag)
  - [<span class="tocnumber">7.2</span>
    <span class="toctext">Chado-XML</span>](#Chado-XML)
  - [<span class="tocnumber">7.3</span> <span class="toctext">Tools that
    read and write
    Chado-XML</span>](#Tools_that_read_and_write_Chado-XML)
    - [<span class="tocnumber">7.3.1</span>
      <span class="toctext">go2chadoxml</span>](#go2chadoxml)
    - [<span class="tocnumber">7.3.2</span>
      <span class="toctext">BioPerl</span>](#BioPerl)
    - [<span class="tocnumber">7.3.3</span>
      <span class="toctext">Bio-Chaos</span>](#Bio-Chaos)
  - [<span class="tocnumber">7.4</span>
    <span class="toctext">Macros</span>](#Macros)
- [<span class="tocnumber">8</span> <span class="toctext">More on
  XORT</span>](#More_on_XORT)

</div>

## <span id="About_XORT" class="mw-headline">About XORT</span>

XORT is a utility written in Perl that can be used to read to and write
from a [relational](Glossary#Relational "Glossary")
[schema](Glossary#Schema "Glossary") using
[XML](Glossary#XML "Glossary") as an interchange format. In GMOD XORT is
frequently used to transfer data to and from
<a href="Chado" class="mw-redirect" title="Chado">Chado</a>.

XORT’s three major elements are an XML-database schema mapping
specification, an XORT language for both data retrieval and data
construction, and a collection of tools that are based on the
specification to facilitate the mapping and data exchange. The mapping
specification specifies the schema requirement, mapping, operation, and
object reference mechanism; the XORT language is used to construct the
dump specification; the tool collections comprise the data validation,
data input, data output and data debug system. Because it originates
from the <a href="Chado" class="mw-redirect" title="Chado">Chado</a>
database, we denote the corresponding XML "Chado XML."  
  
Visit the
<a href="XORT.1" class="external text" rel="nofollow">XORT website</a>.

  

## <span id="Downloads" class="mw-headline">Downloads</span>

- Download XORT:
  <a href="http://sourceforge.net/projects/gmod/files/OldFiles/"
  class="external free"
  rel="nofollow">http://sourceforge.net/projects/gmod/files/OldFiles/</a>

  

  

## <span id="Using_XORT" class="mw-headline">Using XORT</span>

### <span id="System_Requirements" class="mw-headline">System Requirements</span>

- <a href="http://search.cpan.org/perldoc?XML::DOM" class="external text"
  rel="nofollow">XML::DOM</a>
- <a href="http://search.cpan.org/perldoc?XML::Parser::PerlSAX"
  class="external text" rel="nofollow">XML::Parser::PerlSAX</a>

  

### <span id="Documentation" class="mw-headline">Documentation</span>

- <a
  href="http://gmod.svn.sourceforge.net/viewvc/gmod/XML-XORT/trunk/README"
  class="external text" rel="nofollow">README</a>
- <a href="http://iubio.bio.indiana.edu:8081/docs/chadopg-oct03-notes.txt"
  class="external text" rel="nofollow">Loading Chado Using XORT and
  Chado-XML</a>
- [File:XORTSpecification
  0.pdf](File:XORTSpecification_0.pdf "File:XORTSpecification 0.pdf")

## <span id="Publications.2C_Tutorials.2C_and_Presentations" class="mw-headline">Publications, Tutorials, and Presentations</span>

### <span id="Presentations" class="mw-headline">Presentations</span>

- [Presentation on XORT by Pinglei
  Zhou](XORT_Presentation "XORT Presentation")
- [Comparison of XORT and Hibernate for Chado
  reporting](Comparison_of_XORT_and_Hibernate_for_Chado_reporting "Comparison of XORT and Hibernate for Chado reporting")

## <span id="Contacts_and_Mailing_Lists" class="mw-headline">Contacts and Mailing Lists</span>

There is no mailing list for XORT; please direct queries to the
<a href="mailto:help@gmod.org" class="external text" rel="nofollow">GMOD
helpdesk</a> or to the XORT developer
<a href="mailto:zhou@morgan.harvard.edu" class="external text"
rel="nofollow">Pinglei Zhou</a>.

  

## <span id="XORT_Development" class="mw-headline">XORT Development</span>

### <span id="Development_team" class="mw-headline">Development team</span>

<a href="http://flybase.org" class="external text"
rel="nofollow">FlyBase at Harvard</a>

## <span id="See_also" class="mw-headline">See also</span>

Note that [GMODTools](GMODTools "GMODTools") offers an alternative
approach to bulk uploads and downloads from a Chado database.

### <span id="DBStag" class="mw-headline">DBStag</span>

The [DBStag](DBStag "DBStag") XML\<-\>SQL API implements the XORT spec
for bulkloading of data; it does not support the dump spec

### <span id="Chado-XML" class="mw-headline">Chado-XML</span>

[Chado XML](Chado_XML "Chado XML") is a direct mapping of the
<a href="Chado" class="mw-redirect" title="Chado">Chado</a> relational
schema into XML.

### <span id="Tools_that_read_and_write_Chado-XML" class="mw-headline">Tools that read and write Chado-XML</span>

#### <span id="go2chadoxml" class="mw-headline">go2chadoxml</span>

Distributed as part of
<a href="http://search.cpan.org/~cmungall/go-perl/"
class="external text" rel="nofollow">go-perl</a>. Takes any obo file and
exports as Chado-XML. Can be loaded using XML::Xort or
[DBStag](DBStag "DBStag")

Status: Stable

The
<a href="http://www.berkeleybop.org/ontologies/" class="external text"
rel="nofollow">OBO repository</a> is pre-converted to Chado-XML on a
nightly basis.

#### <span id="BioPerl" class="mw-headline">BioPerl</span>

- <a
  href="http://search.cpan.org/~cjfields/BioPerl-1.6.901/Bio/SeqIO/chadoxml.pm"
  class="external text" rel="nofollow">Bio::SeqIO::chadoxml</a>

writes chadoXML

Status: ?

#### <span id="Bio-Chaos" class="mw-headline">Bio-Chaos</span>

The <a href="http://www.fruitfly.org/chaos-xml/" class="external text"
rel="nofollow">bio-chaos</a> library reads and writes chaos-xml, which
can be converted to and from chado

Status: no longer supported

### <span id="Macros" class="mw-headline">Macros</span>

The basic chadoXMLl expansion can be extremely verbose - this is because
chadoXML uses the unique keys from the chado db, yet it does not use
database internal foreign keys. XORT can be configured with macros that
can be used to capture repeated nodes in the XML and give them XML IDs
that are valid within a particular document.

## <span id="More_on_XORT" class="mw-headline">More on XORT</span>

See [Category%3AXORT](Category%3AXORT "Category%3AXORT")

  

  

  
Raw tool data at [XORT/tool data](XORT/tool_data "XORT/tool data")

</div>

<div class="printfooter">

Retrieved from
"<http://gmod.org/mediawiki/index.php?title=XORT&oldid=24724>"

</div>

<div id="catlinks" class="catlinks">

<div id="mw-normal-catlinks" class="mw-normal-catlinks">

[Categories](Special:Categories "Special:Categories"):

- [GMOD Component](Category%3AGMOD_Component "Category%3AGMOD Component")
- [XORT](Category%3AXORT "Category%3AXORT")
- [XML](Category%3AXML "Category%3AXML")
- [GMOD Components](Category%3AGMOD_Components "Category%3AGMOD Components")
- <a
  href="http://gmod.org/mediawiki/index.php?title=Category%3ASemanticLink&amp;action=edit&amp;redlink=1"
  class="new"
  title="Category%3ASemanticLink (page does not exist)">SemanticLink</a>

</div>

</div>

<div id="mw-data-after-content">

<div class="smwfact">

<span class="smwfactboxhead">Facts about
"<span class="swmfactboxheadbrowse">[XORT](Special%3ABrowse/XORT "Special%3ABrowse/XORT")</span>"</span><span class="smwrdflink"><span class="rdflink">[RDF
feed](http://gmod.org/wiki/Special:ExportRDF/XORT "Special:ExportRDF/XORT")</span></span>

|  |  |
|----|----|
| [Available on platform](Property:Available_on_platform "Property:Available on platform") | linux <span class="smwsearch">[+](Special%3ASearchByProperty/Available-20on-20platform/linux "Special%3ASearchByProperty/Available-20on-20platform/linux")</span> and unix <span class="smwsearch">[+](Special%3ASearchByProperty/Available-20on-20platform/unix "Special%3ASearchByProperty/Available-20on-20platform/unix")</span> |
| [Has URL](Property:Has_URL "Property:Has URL") | <a href="http://sourceforge.net/projects/gmod/files/OldFiles/"
class="external free"
rel="nofollow">http://sourceforge.net/projects/gmod/files/OldFiles/</a> <span class="smwsearch">[+](Special%3ASearchByProperty/Has-20URL/http:-2F-2Fsourceforge.net-2Fprojects-2Fgmod-2Ffiles-2FOldFiles-2F "Special%3ASearchByProperty/Has-20URL/http:-2F-2Fsourceforge.net-2Fprojects-2Fgmod-2Ffiles-2FOldFiles-2F")</span> |
| [Has description](Property:Has_description "Property:Has description") | XORT is a utility written in Perl that can<span class="smw-highlighter" data-type="2" state="persistent" data-title="Information"><span class="smwtext"> … </span><span class="smwttcontent">XORT is a utility written in Perl that can be used to read to and write from a [relational](Glossary#Relational "Glossary") [schema](Glossary#Schema "Glossary") using [XML](Glossary#XML "Glossary") as an interchange format. In GMOD XORT is frequently used to transfer data to and from <a href="Chado" class="mw-redirect" title="Chado">Chado</a>. XORT’s three major elements are an XML-database schema mapping specification, an XORT language for both data retrieval and data construction, and a collection of tools that are based on the specification to facilitate the mapping and data exchange. The mapping specification specifies the schema requirement, mapping, operation, and object reference mechanism; the XORT language is used to construct the dump specification; the tool collections comprise the data validation, data input, data output and data debug system. Because it originates from the <a href="Chado" class="mw-redirect" title="Chado">Chado</a> database, we denote the corresponding XML "Chado XML."</span></span> denote the corresponding XML "Chado XML." <span class="smwsearch"><a
href="http://gmod.org/mediawiki/index.php?title=Special%3ASearchByProperty&amp;x=Has-20description%2FXORT-20is-20a-20utility-20written-20in-20Perl-20that-20can-20be-20used-20to-20read-20to-20and-20write-20from-20a-20-5B-5BGlossary-23Relational-7Crelational-5D-5D-20-5B-5BGlossary-23Schema-7Cschema-5D-5D-20using-20-5B-5BGlossary-23XML-7CXML-5D-5D-20as-20an-20interchange-20format.-20In-20GMOD-20XORT-20is-20frequently-20used-20to-20transfer-20data-20to-20and-20from-20-5B-5BChado-5D-5D.-0A-0AXORT%E2%80%99s-20three-20major-20elements-20are-20an-20XML-2Ddatabase-20schema-20mapping-20specification%2C-20an-20XORT-20language-20for-20both-20data-20retrieval-20and-20data-20construction%2C-20and-20a-20collection-20of-20tools-20that-20are-20based-20on-20the-20specification-20to-20facilitate-20the-20mapping-20and-20data-20exchange.-20The-20mapping-20specification-20specifies-20the-20schema-20requirement%2C-20mapping%2C-20operation%2C-20and-20object-20reference-20mechanism%3B-20the-20XORT-20language-20is-20used-20to-20construct-20the-20dump-20specification%3B-20the-20tool-20collections-20comprise-20the-20data-20validation%2C-20data-20input%2C-20data-20output-20and-20data-20debug-20system.-20Because-20it-20originates-20from-20the-20-5B-5BChado-5D-5D-20database%2C-20we-20denote-20the-20corresponding-20XML-20%22Chado-20XML.%22"
class="external text" rel="nofollow">+</a></span> |
| [Has development status](Property:Has_development_status "Property:Has development status") | maintenance <span class="smwsearch">[+](Special%3ASearchByProperty/Has-20development-20status/maintenance "Special%3ASearchByProperty/Has-20development-20status/maintenance")</span> |
| [Has download URL](Property:Has_download_URL "Property:Has download URL") | <a href="http://sourceforge.net/projects/gmod/files/OldFiles/"
class="external free"
rel="nofollow">http://sourceforge.net/projects/gmod/files/OldFiles/</a> <span class="smwsearch">[+](Special%3ASearchByProperty/Has-20download-20URL/http:-2F-2Fsourceforge.net-2Fprojects-2Fgmod-2Ffiles-2FOldFiles-2F "Special%3ASearchByProperty/Has-20download-20URL/http:-2F-2Fsourceforge.net-2Fprojects-2Fgmod-2Ffiles-2FOldFiles-2F")</span> |
| [Has software maturity status](Property:Has_software_maturity_status "Property:Has software maturity status") | mature <span class="smwsearch">[+](Special%3ASearchByProperty/Has-20software-20maturity-20status/mature "Special%3ASearchByProperty/Has-20software-20maturity-20status/mature")</span> |
| [Has support status](Property:Has_support_status "Property:Has support status") | active <span class="smwsearch">[+](Special%3ASearchByProperty/Has-20support-20status/active "Special%3ASearchByProperty/Has-20support-20status/active")</span> |
| [Has topic](Property:Has_topic "Property:Has topic") | **XORT** <span class="smwsearch">[+](Special%3ASearchByProperty/Has-20topic/XORT "Special%3ASearchByProperty/Has-20topic/XORT")</span> |
| [Has website](Property:Has_website "Property:Has website") | <a href="XORT.1" class="external free"
rel="nofollow">http://gmod.org/wiki/XORT</a> <span class="smwsearch">[+](Special%3ASearchByProperty/Has-20website/http:-2F-2Fgmod.org-2Fwiki-2FXORT "Special%3ASearchByProperty/Has-20website/http:-2F-2Fgmod.org-2Fwiki-2FXORT")</span> |
| [Interaction type](Property:Interaction_type "Property:Interaction type") | reads from and writes to <span class="smwsearch">[+](Special%3ASearchByProperty/Interaction-20type/reads-20from-20and-20writes-20to "Special%3ASearchByProperty/Interaction-20type/reads-20from-20and-20writes-20to")</span> |
| <a
href="http://gmod.org/mediawiki/index.php?title=Property:Interactor&amp;action=edit&amp;redlink=1"
class="new"
title="Property:Interactor (page does not exist)">Interactor</a> | XORT <span class="smwsearch">[+](Special%3ASearchByProperty/Interactor/XORT "Special%3ASearchByProperty/Interactor/XORT")</span> |
| [Interacts with](Property:Interacts_with "Property:Interacts with") | <a href="Chado" class="mw-redirect" title="Chado">Chado</a> <span class="smwsearch">[+](Special%3ASearchByProperty/Interacts-20with/Chado "Special%3ASearchByProperty/Interacts-20with/Chado")</span> |
| [Is open source](Property:Is_open_source "Property:Is open source") | Yes <span class="smwsearch">[+](Special%3ASearchByProperty/Is-20open-20source/Yes "Special%3ASearchByProperty/Is-20open-20source/Yes")</span> |
| [Link type](Property:Link_type "Property:Link type") | download <span class="smwsearch">[+](Special%3ASearchByProperty/Link-20type/download "Special%3ASearchByProperty/Link-20type/download")</span> |
| [Tool functionality or classification](Property:Tool_functionality_or_classification "Property:Tool functionality or classification") | Database tools <span class="smwsearch">[+](Special%3ASearchByProperty/Tool-20functionality-20or-20classification/Database-20tools "Special%3ASearchByProperty/Tool-20functionality-20or-20classification/Database-20tools")</span> and Middleware <span class="smwsearch">[+](Special%3ASearchByProperty/Tool-20functionality-20or-20classification/Middleware "Special%3ASearchByProperty/Tool-20functionality-20or-20classification/Middleware")</span> |
| [Written in language](Property:Written_in_language "Property:Written in language") | Perl <span class="smwsearch">[+](Special%3ASearchByProperty/Written-20in-20language/Perl "Special%3ASearchByProperty/Written-20in-20language/Perl")</span> |
| <span class="smw-highlighter" data-type="1" state="inline" data-title="Property"><span class="smwbuiltin">[Has subobject](Property:Has_subobject "Property:Has subobject")</span><span class="smwttcontent">This property is a special property in this wiki.</span></span> | [XORT#http://sourceforge.net/projects/gmod/files/OldFiles/](XORT.1#http:.2F.2Fsourceforge.net.2Fprojects.2Fgmod.2Ffiles.2FOldFiles.2F "XORT") <span class="smwsearch">[+](Special%3ASearchByProperty/Has-20subobject/XORT-23http:-2F-2Fsourceforge.net-2Fprojects-2Fgmod-2Ffiles-2FOldFiles-2F "Special%3ASearchByProperty/Has-20subobject/XORT-23http:-2F-2Fsourceforge.net-2Fprojects-2Fgmod-2Ffiles-2FOldFiles-2F")</span> and [XORT](XORT.1#_9390aed0d94978b3988f1a1568215abb "XORT") <span class="smwsearch">[+](Special%3ASearchByProperty/Has-20subobject/XORT-23_9390aed0d94978b3988f1a1568215abb "Special%3ASearchByProperty/Has-20subobject/XORT-23 9390aed0d94978b3988f1a1568215abb")</span> |

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
  href="http://gmod.org/mediawiki/index.php?title=Talk:XORT&amp;action=edit&amp;redlink=1"
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


- <span id="t-smwbrowselink"><a href="Special%3ABrowse/XORT" rel="smw-browse">Browse properties</a></span>


</div>

</div>

</div>

</div>

<div id="footer" role="contentinfo">

- <span id="footer-info-lastmod">Last updated at 21:22 on 16 October
  2013.</span>
<!-- - <span id="footer-info-viewcount">137,553 page views.</span> -->
- <span id="footer-info-copyright">Content is available under
  <a href="http://www.gnu.org/licenses/fdl-1.3.html" class="external"
  rel="nofollow">a GNU Free Documentation License</a> unless otherwise
  noted.</span>

<!-- -->

- <span id="footer-places-about">[About
  GMOD](GMOD:About "GMOD:About")</span>

<!-- -->






</div>
