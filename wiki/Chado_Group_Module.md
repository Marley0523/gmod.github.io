<div id="mw-page-base" class="noprint">

</div>

<div id="mw-head-base" class="noprint">

</div>

<div id="content" class="mw-body" role="main">

<span id="top"></span>

<div id="mw-js-message" style="display:none;">

</div>



# <span dir="auto">Chado Group Module</span>

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

This module will facilitate comparative methods and analyses in Chado.
It mainly consists of the *grp* (group) table and supporting tables.

<div id="toc" class="toc">

<div id="toctitle">

## Contents

</div>

- [<span class="tocnumber">1</span>
  <span class="toctext">Discussion</span>](#Discussion)
  - [<span class="tocnumber">1.1</span> <span class="toctext">Use
    cases</span>](#Use_cases)
  - [<span class="tocnumber">1.2</span> <span class="toctext">Potential
    issues</span>](#Potential_issues)
- [<span class="tocnumber">2</span> <span class="toctext">Integration
  with Chado</span>](#Integration_with_Chado)
- [<span class="tocnumber">3</span> <span class="toctext">SQL
  Implementation</span>](#SQL_Implementation)
- [<span class="tocnumber">4</span>
  <span class="toctext">Resources</span>](#Resources)

</div>

## <span id="Discussion" class="mw-headline">Discussion</span>

### <span id="Use_cases" class="mw-headline">Use cases</span>

- Protein families
- Candidate genes (QTL)
- Coexpression analysis
- Ortholog groups
- Organisms used in a study
- Stocks used in a study
- Metabolic pathways
- Functional sets
- Gene sets (a la
  <a href="http://www.broadinstitute.org/gsea/msigdb/index.jsp"
  class="external text" rel="nofollow">MSigDB</a>)
- Collections of genes/organisms (a la Entrez)

### <span id="Potential_issues" class="mw-headline">Potential issues</span>

You could potentially link an organism and a feature (and anything else
with a grpmember linker table) to the same grpmember_id.

Current schema is incompatible with chado-xml.

Should grpmember have a type_id column?

## <span id="Integration_with_Chado" class="mw-headline">Integration with Chado</span>

<a href="File:ChadoComparativeModule.png" class="image"><img
src="../mediawiki/images/thumb/c/c9/ChadoComparativeModule.png/1200px-ChadoComparativeModule.png"
srcset="../mediawiki/images/c/c9/ChadoComparativeModule.png 1.5x, ../mediawiki/images/c/c9/ChadoComparativeModule.png 2x"
width="1200" height="670" alt="ChadoComparativeModule.png" /></a>

Tables in blue would be part of the Comparative module proper, while
tables in red would be part of submodules.

Not shown: grp_cvterm, analysisgrpmember

## <span id="SQL_Implementation" class="mw-headline">SQL Implementation</span>

<a href="../mediawiki/images/4/48/ChadoGroupModule.sql" class="internal"
title="ChadoGroupModule.sql">Source Code</a>

<a href="https://github.com/autochthe/Chado-group-module.git"
class="external text" rel="nofollow">GitHub</a>

## <span id="Resources" class="mw-headline">Resources</span>

Mailing list <a
href="http://generic-model-organism-system-database.450254.n5.nabble.com/Chado-Group-Module-td5712158.html"
class="external text" rel="nofollow">discussion</a>

Original <a
href="http://generic-model-organism-system-database.450254.n5.nabble.com/Chado-Comparative-Module-tp5712078.html"
class="external text" rel="nofollow">discussion</a>

<a href="http://youtu.be/Soam8O3g1jg" class="external text"
rel="nofollow">Video</a> of original talk

</div>

<div class="printfooter">

Retrieved from
"<http://gmod.org/mediawiki/index.php?title=Chado_Group_Module&oldid=26051>"

</div>

<div id="catlinks" class="catlinks">

<div id="mw-normal-catlinks" class="mw-normal-catlinks">

[Categories](Special%3ACategories "Special%3ACategories"):

- [Chado](Category%3AChado "Category%3AChado")
- [Chado Modules](Category%3AChado_Modules "Category%3AChado Modules")
- [Comparative
  Genomics](Category%3AComparative_Genomics "Category%3AComparative Genomics")

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
  href="http://gmod.org/mediawiki/index.php?title=Talk:Chado_Group_Module&amp;action=edit&amp;redlink=1"
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


- <span id="t-smwbrowselink"><a href="Special%3ABrowse/Chado_Group_Module" rel="smw-browse">Browse
  properties</a></span>


</div>

</div>

</div>

</div>

<div id="footer" role="contentinfo">

- <span id="footer-info-lastmod">Last updated at 19:50 on 23 September
  2014.</span>
<!-- - <span id="footer-info-viewcount">60,076 page views.</span> -->
- <span id="footer-info-copyright">Content is available under
  <a href="http://www.gnu.org/licenses/fdl-1.3.html" class="external"
  rel="nofollow">a GNU Free Documentation License</a> unless otherwise
  noted.</span>

<!-- -->

- <span id="footer-places-about">[About
  GMOD](GMOD:About "GMOD:About")</span>

<!-- -->






</div>
