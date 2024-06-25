<div id="mw-page-base" class="noprint">

</div>

<div id="mw-head-base" class="noprint">

</div>

<div id="content" class="mw-body" role="main">

<span id="top"></span>

<div id="mw-js-message" style="display:none;">

</div>



# <span dir="auto">News/GMOD Evo Hackathon Report</span>

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

<div class="floatright">

[<img
src="../../mediawiki/images/thumb/7/7f/EvoHackLaptops2010.jpg/170px-EvoHackLaptops2010.jpg"
srcset="../../mediawiki/images/thumb/7/7f/EvoHackLaptops2010.jpg/255px-EvoHackLaptops2010.jpg 1.5x, ../../mediawiki/images/thumb/7/7f/EvoHackLaptops2010.jpg/340px-EvoHackLaptops2010.jpg 2x"
width="170" height="101" alt="GMOD Evo Hackathon" />](../GMOD_Evo_Hackathon "GMOD Evo Hackathon")

</div>

The [GMOD Evo Hackathon](../GMOD_Evo_Hackathon "GMOD Evo Hackathon") was
held November 8-12 at
<a href="http://www.nescent.org" class="external text"
rel="nofollow">NESCent</a>. The
<a href="https://www.nescent.org/wg_gmodevohackathon/Participants"
class="external text" rel="nofollow">30 participants</a> self-organized
into eight groups with at least one group addressing each of the event's
three
[objectives](../GMOD_Evo_Hackathon#Specific_objectives "GMOD Evo Hackathon").
The outcomes for each group are summarized below.

<a href="https://www.nescent.org/wg_gmodevohackathon/GMatchbox"
class="external text" rel="nofollow">GMatchbox</a>  
Worked on establishing a common database backend and
[JSON](../Glossary#JSON "Glossary")-based API for comparative genomics
data, using several visualization tools (including
[JBrowse](../JBrowse.1 "JBrowse") and
[GBrowse_syn](../GBrowse_syn.1 "GBrowse syn")) as targets. Will enable
sharing of comparative data in multiple tools from multiple sources.

<!-- -->

<a href="https://www.nescent.org/wg_gmodevohackathon/GBrowse_syn2"
class="external text" rel="nofollow">GBrowse_syn2</a>  
[GBrowse_syn](../GBrowse_syn.1 "GBrowse syn") is built on and takes
advantage of the [GBrowse](../GBrowse.1 "GBrowse") genome browser code
and config files. However, it did not work well with GBrowse2, due to
significant architectural changes. This group refactored GBrowse2 to
naturally support GBrowse_syn. This work will also enable several other
GBrowse1-only applications ([SynView](../SynView "SynView"), [Primer
Designer](../PrimerDesigner.pm "PrimerDesigner.pm"), ...) to be ported
to GBrowse2 as well. Two participants also became core GBrowse_syn
developers.

<!-- -->

<a href="https://www.nescent.org/wg_gmodevohackathon/JBrowse_syn"
class="external text" rel="nofollow">JBrowse_syn</a>  
This group set out to extend [JBrowse](../JBrowse.1 "JBrowse") to be a
comparative genomics browser. The group removed the existing "single
genome" assumption from the code and successfully displayed several
genomes in parallel. Several participants also became familiar with
JBrowse code and architecture.

<!-- -->

<a href="https://www.nescent.org/wg_gmodevohackathon/PhyloBox"
class="external text" rel="nofollow">PhyloBox</a>  
<a href="http://phylobox.appspot.com/" class="external text"
rel="nofollow">PhyloBox</a> is a flexible and fast web based tree
visualization program. At the hackathon the PhyloBox team extended
PhyloBox in numerous ways to make it a "widget" that can interact with
other widgets. PhyloBox documentation was also created.

<!-- -->

<a
href="https://www.nescent.org/wg_gmodevohackathon/Comparative_Genomics_Visualization:Phylobox_JBrowse"
class="external text" rel="nofollow">Integration PhyloBox JBrowse
Integration</a>  
The group is the perfect example of the interaction that can happen at a
hackathon. They worked with the
<a href="https://www.nescent.org/wg_gmodevohackathon/JBrowse_syn"
class="external text" rel="nofollow">JBrowse_syn</a>,
<a href="https://www.nescent.org/wg_gmodevohackathon/PhyloBox"
class="external text" rel="nofollow">PhyloBox</a> and
<a href="https://www.nescent.org/wg_gmodevohackathon/GMatchBox"
class="external text" rel="nofollow">GMatchbox</a> groups to enable
integration of these three technologies. This group was very helpful at
getting teams to work together.

<!-- -->

<a
href="https://www.nescent.org/wg_gmodevohackathon/Natural_Diversity_and_Phenotypes_Subgroup"
class="external text" rel="nofollow">Natural Diversity and Phenotypes in
Chado</a>  
This group focused on two outcomes, both relating to
<a href="../Chado" class="mw-redirect" title="Chado">Chado</a>. The
first was a prototype Rails application that provided a web interface to
the new [Natural
Diversity](../Chado_Natural_Diversity_Module.1 "Chado Natural Diversity Module")
module in Chado. This was built on top of the emerging [Chado on
Rails](../Chado_on_Rails "Chado on Rails") project. The second was a
better understanding, slight refactoring, and updated documentation for
Chado's phenotype module.

<!-- -->

<a
href="https://www.nescent.org/wg_gmodevohackathon/Galaxy_and_HyPhy_Subgroup"
class="external text" rel="nofollow">Galaxy + HyPhy</a>  
[Galaxy](../Galaxy.1 "Galaxy") is both a workflow system and a means of
persisting computational pipelines and results. This group worked on
improving Galaxy's ability to integrate interactive tools, using
<a href="http://hyphy.org" class="external text"
rel="nofollow">HyPhy</a> as the prototype application. The Galaxy and
HyPhy code bases were modified to support this.

<!-- -->

<a
href="https://www.nescent.org/wg_gmodevohackathon/BioPerl_Enhancements_Subgroup"
class="external text" rel="nofollow">BioPerl</a>  
This subgroup worked on improving tree handling in
[BioPerl](../BioPerl "BioPerl"). Specifically, they addressed the
handling of very large trees or large numbers of small trees. BioPerl
now supports storing such trees in a lightweight database instead of in
memory.

[Dave Clements](../User:Clements "User:Clements")  
[GMOD Help Desk](../GMOD_Help_Desk "GMOD Help Desk")

  

<div class="newsfooter">

*Posted to the [GMOD News](../GMOD_News "GMOD News") on 2010/12/20*

</div>

</div>

<div class="printfooter">

Retrieved from
"<http://gmod.org/mediawiki/index.php?title=News/GMOD_Evo_Hackathon_Report&oldid=22329>"

</div>

<div id="catlinks" class="catlinks">

<div id="mw-normal-catlinks" class="mw-normal-catlinks">

[Category](../Special:Categories "Special:Categories"):

- [News Items](../Category:News_Items "Category:News Items")

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

- <span id="ca-nstab-main"><a href="GMOD_Evo_Hackathon_Report" accesskey="c"
  title="View the content page [c]">Page</a></span>
- <span id="ca-talk"><a
  href="http://gmod.org/mediawiki/index.php?title=Talk:News/GMOD_Evo_Hackathon_Report&amp;action=edit&amp;redlink=1"
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

- <span id="t-whatlinkshere"><a href="../Special:WhatLinksHere/News/GMOD_Evo_Hackathon_Report"
  accesskey="j" title="A list of all wiki pages that link here [j]">What
  links here</a></span>
- <span id="t-recentchangeslinked"><a href="../Special:RecentChangesLinked/News/GMOD_Evo_Hackathon_Report"
  accesskey="k"
  title="Recent changes in pages linked from this page [k]">Related
  changes</a></span>
- <span id="t-specialpages"><a href="../Special:SpecialPages" accesskey="q"
  title="A list of all special pages [q]">Special pages</a></span>
- <span id="t-print"><a
  href="http://gmod.org/mediawiki/index.php?title=News/GMOD_Evo_Hackathon_Report&amp;printable=yes"
  rel="alternate" accesskey="p"
  title="Printable version of this page [p]">Printable version</a></span>
- <span id="t-permalink">[Permanent
  link](http://gmod.org/mediawiki/index.php?title=News/GMOD_Evo_Hackathon_Report&oldid=22329 "Permanent link to this revision of the page")</span>
- <span id="t-info">[Page
  information](http://gmod.org/mediawiki/index.php?title=News/GMOD_Evo_Hackathon_Report&action=info)</span>
- <span id="t-smwbrowselink"><a href="../Special:Browse/News-2FGMOD_Evo_Hackathon_Report"
  rel="smw-browse">Browse properties</a></span>
- <span id="t-pdf">[Print as
  PDF](http://gmod.org/mediawiki/index.php?title=Special:PdfPrint&page=News/GMOD_Evo_Hackathon_Report)</span>

</div>

</div>

</div>

</div>

<div id="footer" role="contentinfo">

- <span id="footer-info-lastmod">Last updated at 23:11 on 9 October
  2012.</span>
- <span id="footer-info-viewcount">8,605 page views.</span>
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
