<div id="mw-page-base" class="noprint">

</div>

<div id="mw-head-base" class="noprint">

</div>

<div id="content" class="mw-body" role="main">

<span id="top"></span>

<div id="mw-js-message" style="display:none;">

</div>



# <span dir="auto">CMap Version 2 Design</span>

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

The hopes and dreams for a new generation....

Up to [CMap](CMap.1 "CMap").

<div id="toc" class="toc">

<div id="toctitle">

## Contents

</div>

- [<span class="tocnumber">1</span> <span class="toctext">User
  Interface</span>](#User_Interface)
- [<span class="tocnumber">2</span>
  <span class="toctext">Schema</span>](#Schema)
- [<span class="tocnumber">3</span>
  <span class="toctext">Visualizations</span>](#Visualizations)
- [<span class="tocnumber">4</span> <span class="toctext">Data
  Loading</span>](#Data_Loading)
- [<span class="tocnumber">5</span>
  <span class="toctext">DAS</span>](#DAS)

</div>

# <span id="User_Interface" class="mw-headline">User Interface</span>

- The new interface will be all Web 2.0 goodness, using tons of
  JavaScript/AJAX/CSS (which I so studiously avoided in early versions)

# <span id="Schema" class="mw-headline">Schema</span>

<a href="File:Cmap_2.0_schema.png" class="image"><img
src="../mediawiki/images/thumb/b/b8/Cmap_2.0_schema.png/100px-Cmap_2.0_schema.png"
srcset="../mediawiki/images/thumb/b/b8/Cmap_2.0_schema.png/150px-Cmap_2.0_schema.png 1.5x, ../mediawiki/images/thumb/b/b8/Cmap_2.0_schema.png/200px-Cmap_2.0_schema.png 2x"
width="100" height="234" alt="Cmap 2.0 schema.png" /></a>

- No more "cmap\_" table prefix
- Move to support only [MySQL](MySQL "MySQL") InnoDB tables to get
  proper foreign keys, not worry about implementing common db functions
  in Perl
- New, slimmer schema
- Eschew evidence table
- In the past, there was a canonical "feature_correspondence" table and
  the "f1-\>f2" correspondence was duplicated into a
  "correspondence_lookup" table where "f1-\>f2" and "f2-\>f1" in order
  to write simple [SQL](Glossary#SQL "Glossary"). The new version will
  remove the lookup table and simply have correspondences be repeated in
  the one table (making them essentially one-way).
- Map and feature types originally existed in the database but were
  moved into configuration files in past versions. They will be restored
  to there previous tables because any mismatch in configuration files
  and incoming data can easily cause data to be quietly ignored,
  creating many headaches for the author. Back in the db, code will be
  able to instantiate the needed types, and SQL will make cleanup of
  types easy.
- Steal the binning idea from
  <a href="http://genome.cshlp.org/content/12/10/1599.full"
  class="external text" rel="nofollow">Gbrowse</a> to speed up feature
  retrieval, group features into chunks for display as
  <a href="http://en.wikipedia.org/wiki/Sparkline" class="external text"
  rel="nofollow">sparklines</a>

# <span id="Visualizations" class="mw-headline">Visualizations</span>

<a href="File:CMap_circos.png" class="image"><img
src="../mediawiki/images/thumb/d/da/CMap_circos.png/100px-CMap_circos.png"
srcset="../mediawiki/images/thumb/d/da/CMap_circos.png/150px-CMap_circos.png 1.5x, ../mediawiki/images/thumb/d/da/CMap_circos.png/200px-CMap_circos.png 2x"
width="100" height="100" alt="CMap circos.png" /></a>

- All output to SVG, convert to other formats as needed
- Each "slot" holding maps in a comparative view will be generated and
  cached individually on server side; they will be assembled into a
  larger SVG container with an additional SVG to show the correspondence
  lines; changes to one slot will necessitate only changes to that image
- It will be possible to pregenerate all initial map views (e.g., whole
  chromosomes) for immediate viewing; other images can be labeled and
  cached as users create views, enabling re-use of images
- <a href="http://mkweb.bcgsc.ca/circos" class="external text"
  rel="nofollow">Circos</a> to be used to generate circular views
- I've written to Dave Edwards and Chris Duran at the Univ. of
  Queensland (Australia) about including their 3-D Java desktop app as a
  server-side tool; no word back
- Investigate
  <a href="http://code.google.com/apis/o3d/" class="external text"
  rel="nofollow">Google's O3D</a>
- Also can investigate using GraphViz, gnuplot and
  <a href="http://pdl.perl.org/" class="external text"
  rel="nofollow">PDL</a> for other presentations

# <span id="Data_Loading" class="mw-headline">Data Loading</span>

Write loaders for:

- Tab-delimited
- [GFF](GFF "GFF")
- Ensembl
- Compara
- <a href="Chado" class="mw-redirect" title="Chado">Chado</a>

# <span id="DAS" class="mw-headline">DAS</span>

- Will write a module to plug into
  <a href="http://www.sanger.ac.uk/Software/analysis/proserver/"
  class="external text" rel="nofollow">Proserver</a> to create
  <a href="DAS" class="mw-redirect" title="DAS">DAS</a> server to share
  directly from [CMap](CMap.1 "CMap"); docs to explain to users how to
  do this
- As a DAS client to show additional features

</div>

<div class="printfooter">

Retrieved from
"<http://gmod.org/mediawiki/index.php?title=CMap_Version_2_Design&oldid=8302>"

</div>

<div id="catlinks" class="catlinks">

<div id="mw-normal-catlinks" class="mw-normal-catlinks">

[Categories](Special:Categories "Special:Categories"):

- [DAS](Category:DAS "Category:DAS")
- [CMap](Category:CMap "Category:CMap")
- [Proposals](Category:Proposals "Category:Proposals")

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

- <span id="ca-nstab-main"><a href="CMap_Version_2_Design" accesskey="c"
  title="View the content page [c]">Page</a></span>
- <span id="ca-talk"><a
  href="http://gmod.org/mediawiki/index.php?title=Talk:CMap_Version_2_Design&amp;action=edit&amp;redlink=1"
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


- <span id="t-smwbrowselink"><a href="Special:Browse/CMap_Version_2_Design" rel="smw-browse">Browse
  properties</a></span>
- <span id="t-pdf">[Print as
  PDF](http://gmod.org/mediawiki/index.php?title=Special:PdfPrint&page=CMap_Version_2_Design)</span>

</div>

</div>

</div>

</div>

<div id="footer" role="contentinfo">

- <span id="footer-info-lastmod">Last updated at 20:22 on 12 May
  2009.</span>
<!-- - <span id="footer-info-viewcount">57,329 page views.</span> -->
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
