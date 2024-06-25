<div id="mw-page-base" class="noprint">

</div>

<div id="mw-head-base" class="noprint">

</div>

<div id="content" class="mw-body" role="main">

<span id="top"></span>

<div id="mw-js-message" style="display:none;">

</div>



# <span dir="auto">Chado for Prokaryotes</span>

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

This page was started as a stub for producing a set of best practices
for using Chado for prokaryotes.

<div id="toc" class="toc">

<div id="toctitle">

## Contents

</div>

- [<span class="tocnumber">1</span> <span class="toctext">Problems in
  adapting Chado for
  prokaryotes</span>](#Problems_in_adapting_Chado_for_prokaryotes)
  - [<span class="tocnumber">1.1</span>
    <span class="toctext">Representation of
    features</span>](#Representation_of_features)
  - [<span class="tocnumber">1.2</span> <span class="toctext">Circular
    genomes</span>](#Circular_genomes)
  - [<span class="tocnumber">1.3</span> <span class="toctext">Pan
    genomes</span>](#Pan_genomes)
- [<span class="tocnumber">2</span> <span class="toctext">Bacterial MODs
  using or planning to use
  Chado</span>](#Bacterial_MODs_using_or_planning_to_use_Chado)
- [<span class="tocnumber">3</span> <span class="toctext">See
  also</span>](#See_also)

</div>

## <span id="Problems_in_adapting_Chado_for_prokaryotes" class="mw-headline">Problems in adapting Chado for prokaryotes</span>

The major challenges in adapting chado for prokaryotes are:

- Representation of features as Sequence Ontology types
- Circular genomes
- "Pan genomes"

### <span id="Representation_of_features" class="mw-headline">Representation of features</span>

Chado features are instances of ontology nodes. Genome features should
be instances of types in the Sequence Ontology (SO). However

- SO uses a eukaryotic definition of gene that is not well suited to
  bacterial genomes
- Feature relationships in SO are based on eukaryotic models
- Feature types not in SO

The ideal solution is to work with SO to modify the ontology to work
with both prokaryotes and eukaryotes. This is an ongoing activity that
prokaryotic groups can participate in, and where SO has requested help
from experts in bacterial genetics and genomics. In the meantime, MODs
need to decide how to deploy Chado.

One solution has been to ignore "gene" as a feature type.

### <span id="Circular_genomes" class="mw-headline">Circular genomes</span>

### <span id="Pan_genomes" class="mw-headline">Pan genomes</span>

Sequencing multiple isolates of the same bacterial species leads to the
identification of new genes in each isolate, with the rate of new gene
discovery declining as a power law. The "pan genome" is a phrase used by
<a href="http://dx.doi.org/10.1073/pnas.0506758102"
class="external text" rel="nofollow">Tettelin et al. 2005</a> to
describe the set of genes present in the union of all genomes of a
bacterial species. How should this be represented this in Chado?

## <span id="Bacterial_MODs_using_or_planning_to_use_Chado" class="mw-headline">Bacterial MODs using or planning to use Chado</span>

## <span id="See_also" class="mw-headline">See also</span>

- [IGS Data
  Representation](IGS_Data_Representation "IGS Data Representation")

</div>

<div class="printfooter">

Retrieved from
"<http://gmod.org/mediawiki/index.php?title=Chado_for_Prokaryotes&oldid=7185>"

</div>

<div id="catlinks" class="catlinks">

<div id="mw-normal-catlinks" class="mw-normal-catlinks">

[Categories](Special:Categories "Special:Categories"):

- [Chado](Category:Chado "Category:Chado")
- [Needs Editing](Category:Needs_Editing "Category:Needs Editing")

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
  href="http://gmod.org/mediawiki/index.php?title=Talk:Chado_for_Prokaryotes&amp;action=edit&amp;redlink=1"
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


- <span id="t-smwbrowselink"><a href="Special:Browse/Chado_for_Prokaryotes" rel="smw-browse">Browse
  properties</a></span>


</div>

</div>

</div>

</div>

<div id="footer" role="contentinfo">

- <span id="footer-info-lastmod">Last updated at 12:54 on 16 January
  2009.</span>
<!-- - <span id="footer-info-viewcount">16,084 page views.</span> -->
- <span id="footer-info-copyright">Content is available under
  <a href="http://www.gnu.org/licenses/fdl-1.3.html" class="external"
  rel="nofollow">a GNU Free Documentation License</a> unless otherwise
  noted.</span>

<!-- -->

- <span id="footer-places-about">[About
  GMOD](GMOD:About "GMOD:About")</span>

<!-- -->






</div>
