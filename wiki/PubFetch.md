<div id="mw-page-base" class="noprint">

</div>

<div id="mw-head-base" class="noprint">

</div>

<div id="content" class="mw-body" role="main">

<span id="top"></span>

<div id="mw-js-message" style="display:none;">

</div>



# <span dir="auto">PubFetch</span>

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

> The item described in this page is not (or is no longer) supported by
> the GMOD project.  
> This page is included only for reference purposes.

PubFetch is part of the
<a href="http://tesuque.stanford.edu/pubsearch.org/index.html"
class="external text" rel="nofollow">PubSearch</a> web-based literature
curation toolset and functions as the interface between the literature
curation tools and the online literature databases, such as PubMed. The
aim of PubFetch is to provide a generic way of searching and retrieving
literature data from online literature datasources so that the
downstream applications dont have to deal with the idiosyncracies of the
individual literature databases.

Initially PubFetch will act as the interface between PubSearch and the
<a href="http://www.ncbi.nlm.nih.gov/entrez/query.fcgi?db=PubMed"
class="external text" rel="nofollow">PubMed</a>\] and
<a href="http://www.nal.usda.gov/ag98/" class="external text"
rel="nofollow">Agricola</a> databases used by
<a href="http://rgd.mcw.edu/" class="external text"
rel="nofollow">RGD</a> and
<a href="http://www.arabidopsis.org/" class="external text"
rel="nofollow">TAIR</a>. A standard API and data format will be created
to provide database queries and return results, popular existing formats
and protocols will be used/supported wherever possible.

## <span id="Documentation" class="mw-headline">Documentation</span>

<a href="File:Pubfetch_overview.jpg" class="image"><img
src="../mediawiki/images/4/4f/Pubfetch_overview.jpg" width="496"
height="370" alt="Pubfetch overview.jpg" /></a>

  
**Figure 1 - Overview diagram of PubFetch showing how the PubFetch
module will provide a generic literature access interface to PubMed and
Agricola which could be expanded to other literature sources as
desired.**

  
The codebase will be developed initially in perl by adapting existing
RGD perl modules designed to retrieve data from PubMed in a standard XML
format. This code will be reviewed and adapted to create the main
PubFetch module and appropriate database interace modules. Figure 2
below is a schematic diagram of the exising RGD literature download
modules.

  
<a href="File:Existing_PubMed_flow.jpg" class="image"><img
src="../mediawiki/images/6/6a/Existing_PubMed_flow.jpg" width="400"
height="197" alt="Existing PubMed flow.jpg" /></a>

  
**Figure 2- Current RGD literature download process showing perl modules
used to interact with PubMed, create XML data and load into RGD.**

  
The fundamental actions required of PubFetch are:

- Search LitDb for articles matching certain query criteria (eg.
  keywords, date, author, etc).
  - This will most likely entail passing the search critieria to
    PubFetch and retrieving a set of accession numbers (eg. PubMed IDs,
    PMIDs) for matching references.
- Retrieve the text information from the LitDb corresponding to a
  supplied accession number (e.g. *bring me the PubMed entry for
  <a href="http://www.ncbi.nlm.nih.gov/pubmed/12345?dopt=Abstract"
  class="external mw-magiclink-pmid" rel="nofollow">PMID 12345</a>*)

  

### <span id="PubFetch_as_a_BioMOBY_webservice" class="mw-headline">PubFetch as a BioMOBY webservice</span>

To provide generic access to PubFetch we intend to make the core
functionality available as a webservice, following the
<a href="http://www.biomoby.org/" class="external text"
rel="nofollow">BioMOBY</a> service model. The two actions described
above will be implemented as two classes of Web services, the first
taking keywords and returning PubMed IDs (or other LitDb accession) ,
the second taking LitDb accessions and returning the text information in
a simple, standardized XML format. We will endeavour to provide the data
in existing formats (raw data from the LitDb, a BioPerl-compatible
format, etc) in addition to a simple XML format that is not dependent on
other codebases

  

## <span id="Downloads" class="mw-headline">Downloads</span>

The source code can be downloaded from <a
href="http://sourceforge.net/project/showfiles.php?group_id=27707&amp;package_id=126656"
class="external text" rel="nofollow">SourceForge</a>.

</div>

<div class="printfooter">

Retrieved from
"<http://gmod.org/mediawiki/index.php?title=PubFetch&oldid=6187>"

</div>

<div id="catlinks" class="catlinks">

<div id="mw-normal-catlinks" class="mw-normal-catlinks">

[Categories](Special%3ACategories "Special%3ACategories"):

- [Unsupported](Category%3AUnsupported "Category%3AUnsupported")
- [RGD](Category%3ARGD "Category%3ARGD")
- [TAIR](Category%3ATAIR "Category%3ATAIR")
- [PubSearch](Category%3APubSearch "Category%3APubSearch")

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
  href="http://gmod.org/mediawiki/index.php?title=Talk:PubFetch&amp;action=edit&amp;redlink=1"
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


- <span id="t-smwbrowselink"><a href="Special%3ABrowse/PubFetch" rel="smw-browse">Browse properties</a></span>


</div>

</div>

</div>

</div>

<div id="footer" role="contentinfo">

- <span id="footer-info-lastmod">Last updated at 16:31 on 15 October
  2008.</span>
<!-- - <span id="footer-info-viewcount">24,824 page views.</span> -->
- <span id="footer-info-copyright">Content is available under
  <a href="http://www.gnu.org/licenses/fdl-1.3.html" class="external"
  rel="nofollow">a GNU Free Documentation License</a> unless otherwise
  noted.</span>

<!-- -->

- <span id="footer-places-about">[About
  GMOD](GMOD:About "GMOD:About")</span>

<!-- -->






</div>
