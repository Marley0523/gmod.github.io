<div id="mw-page-base" class="noprint">

</div>

<div id="mw-head-base" class="noprint">

</div>

<div id="content" class="mw-body" role="main">

<span id="top"></span>

<div id="mw-js-message" style="display:none;">

</div>



# <span dir="auto">MAKER/tool data</span>

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

  
This page stores the data that populates the [MAKER](../MAKER.1 "MAKER")
wiki page.

  
{{ {{{template}}} \| name = MAKER \| full_name = \| status = mature \|
dev = active \| support = active \| type = Genome Annotation \| platform
= linux, os x, unix \| logo = MAKERLogo.png \| home =
<a href="http://www.yandell-lab.org/software/maker.html"
class="external free"
rel="nofollow">http://www.yandell-lab.org/software/maker.html</a> \|
about = MAKER is a portable and easy to configure genome
[annotation](../Category:Annotation "Category:Annotation") pipeline.
MAKER allows smaller *eukaryotic* genome projects and *prokaryotic*
genome projects to annotate their genomes and to create genome
databases. MAKER identifies repeats, aligns ESTs and proteins to a
genome, produces *ab initio* gene predictions and automatically
synthesizes these data into gene annotations with evidence-based quality
values. MAKER is also easily trainable: outputs of preliminary runs can
be used to automatically retrain its gene prediction algorithm,
producing higher quality gene-models on subsequent runs. MAKER's inputs
are minimal. Its outputs are in [GFF3](../GFF3 "GFF3") or
[FASTA](../Glossary#FASTA "Glossary") format, and can be directly loaded
into <a href="../Chado" class="mw-redirect" title="Chado">Chado</a>,
[GBrowse](../GBrowse.1 "GBrowse"), [JBrowse](../JBrowse.1 "JBrowse") or
[Apollo](../Apollo.1 "Apollo").

Additional MAKER options/capabilities include:

- Map old annotation sets on to new assemblies.
- Merge multiple legacy annotation sets into a consensus set of
  annotations.
- Update existing annotations to take new evidence into account.
- Tag pre-existing gene models with evidence alignments and quality
  control metrics to assist in downstream manual curation.
- Use GFF3 pass-through to include both evidence alignments and
  predicted gene models from algorithms not natively supported by MAKER.
- MAKER is MPI capable for rapid parallelization across computer
  clusters.
- You can also easily integrate raw InterProScan results into MAKER,
  which will identify protein domains, add GO functional categories, and
  help assign putative gene functions to genome annotations. This data
  then becomes accessible as part of the GFF3 output and can be loaded
  into a <a href="../Chado" class="mw-redirect" title="Chado">Chado</a>
  database, [GBrowse](../GBrowse.1 "GBrowse"), or
  [Apollo](../Apollo.1 "Apollo").

MAKER comes with sample data for testing purposes. See the `/data`
directory in the download. \| screenshot =

<div class="thumb tnone">

<div class="thumbinner" style="width:502px;">

<a href="../File:MAKER_Apollo_view.jpg" class="image"><img
src="../../mediawiki/images/f/fb/MAKER_Apollo_view.jpg"
class="thumbimage" width="500" height="301" /></a>

<div class="thumbcaption">

<div class="magnify">

<a href="../File:MAKER_Apollo_view.jpg" class="internal"
title="Enlarge"><img
src="../../mediawiki/skins/common/images/magnify-clip.png" width="15"
height="11" /></a>

</div>

View of [MAKER](../MAKER.1 "MAKER") annotations in the
[Apollo](../Apollo.1 "Apollo") genome annotation curation tool.
Supporting evidence is shown in the upper dark panel. Gene annotations
are shown in the blue panel.

</div>

</div>

</div>

\| public_server =
<a href="http://www.yandell-lab.org/software/mwas.html"
class="external free"
rel="nofollow">http://www.yandell-lab.org/software/mwas.html</a> \| dl =
MAKER is available as a compressed TAR file from the
<a href="http://www.yandell-lab.org/software/maker.html"
class="external text" rel="nofollow">MAKER website</a>. \| dl_url = <a
href="http://yandell.topaz.genetics.utah.edu/cgi-bin/maker_license.cgi"
class="external free"
rel="nofollow">http://yandell.topaz.genetics.utah.edu/cgi-bin/maker_license.cgi</a>
\| dl_src = \| dl_dev = \| dl_src_url = <a
href="http://yandell.topaz.genetics.utah.edu/cgi-bin/maker_license.cgi"
class="external free"
rel="nofollow">http://yandell.topaz.genetics.utah.edu/cgi-bin/maker_license.cgi</a>
\| dl_dev_url = \| getting_started_preamble = We recommend that users
read the MAKER paper \[below\] and the README file included with the
download before installing and using MAKER. \| req = \* Perl 5.8.0 or
higher

- [BioPerl](../BioPerl "BioPerl") 1.6 or higher.
- <a href="http://blast.wustl.edu" class="external text"
  rel="nofollow">WU-BLAST</a> 2.0 or higher or
  <a href="http://www.ncbi.nlm.nih.gov/" class="external text"
  rel="nofollow">NCBI-BLAST</a> 2.2.X or higher
- <a href="http://www.repeatmasker.org/" class="external text"
  rel="nofollow">RepeatMasker</a> 3.1.6 or higher
  - RepeatMasker requires a repeat library, available from
    <a href="http://www.girinst.org/repbase/index.html"
    class="external text" rel="nofollow">Repbase</a>.
- <a
  href="http://www.animalgenome.org/bioinfo/resources/manuals/exonerate/"
  class="external text" rel="nofollow">Exonerate</a> 1.4 or higher.

Optional extras:

- <a href="http://korflab.ucdavis.edu/software.html" class="external text"
  rel="nofollow">SNAP</a> version 2009-02-03 or higher (for eukaryotic
  genomes).
- <a href="http://augustus.gobics.de" class="external text"
  rel="nofollow">Augustus</a> 2.0 or higher (for eukaryotic genomes)
- <a href="http://exon.biology.gatech.edu" class="external text"
  rel="nofollow">GeneMark-ES</a> (for eukaryotic genomes)
- <a href="http://www.softberry.com" class="external text"
  rel="nofollow">FGENESH</a> 2.6 or higher - requires licence (for
  eukaryotic genomes)
- <a href="http://exon.biology.gatech.edu" class="external text"
  rel="nofollow">GeneMarkS</a> (for prokaryotic genomes)

\| install =
<a href="http://www.yandell-lab.org/software/maker_install.html"
class="external text" rel="nofollow">An online installation guide</a> is
coming soon; please see the README file in the download for
instructions. \| config = \| doc = By default, MAKER runs on a single
computer. A parallel version, mpi_maker, is also available. To run
mpi_maker you will need a
<a href="http://en.wikipedia.org/wiki/Message_Passing_Interface"
class="external text" rel="nofollow">message passing interface (MPI)</a>
package installed on all participating computers; try
<a href="http://www.mcs.anl.gov/research/projects/mpich2/"
class="external text" rel="nofollow">MPICH2</a>. Remember to install
MPICH2 with the `--enable-sharedlibs` flag set to the appropriate value
.See the <a
href="http://www.mcs.anl.gov/research/projects/mpich2/documentation/index.php?s=docs"
class="external text" rel="nofollow">MPICH2 Installer's Guide</a> for
more information.

### <span id="Annotations" class="mw-headline">Annotations</span>

The MAKER genome annotation pipeline generates several different types
of annotations, including

- *Ab initio* gene predictions from SNAP, Augustus, FGENESH, and
  GeneMark
- Final gene models from MAKER
- EST alignments from both EXONERATE and BLASTN
- Protein alignments from EXONERATE and BLASTX
- Repeats from RepeatMasker and the MAKER internal RepeatRunner

\| papers =

- MAKER2: an annotation pipeline and genome-database management tool for
  second-generation genome projects.
  <sup>[\[1\]](#cite_note-PMID:22192575-1)</sup>
- [MAKER](../MAKER.1 "MAKER"): an easy-to-use annotation pipeline
  designed for emerging model organism genomes. <span class="Z3988"
  title="ctx_ver=Z39.88-2004&amp;rft_val_fmt=info%3Aofi%2Ffmt%3Akev%3Amtx%3Ajournal&amp;rfr_id=info%3Asid%2Focoins.info%3Agenerator&amp;rft.genre=article&amp;rft_id=info%3Apmid%2F18025269">PMID:18025269</span>
  <sup>[\[2\]](#cite_note-PMID:18025269-2)</sup>

\| presentations = \* [MAKER—the easy-to-use genome annotation
pipeline](../File:MAKERSMBE2009.pdf "File:MAKERSMBE2009.pdf"), presented
by Mark Yandell at the <a
href="http://ccg.biology.uiowa.edu/smbe/symposia.php?action=view&amp;sym_ID=27"
class="external text" rel="nofollow">SMBE 2009 GMOD Workshop</a>. \|
tutorials =

<a href="../MAKER_Tutorial" class="mw-redirect"
title="MAKER Tutorial">MAKER Tutorial</a>  
taught as part of the [2013 GMOD Summer
School](../2013_GMOD_Summer_School "2013 GMOD Summer School")

\| wild_urls = \| mail =

|  |  |  |  |
|----|----|----|----|
|  | Mailing List Link | Description | Archive(s) |
| [MAKER](../MAKER.1 "MAKER") | <a
href="http://box290.bluehost.com/mailman/listinfo/maker-devel_yandell-lab.org"
class="external text" rel="nofollow">maker-devel</a> | [MAKER](../MAKER.1 "MAKER") developers and users list. | <a href="http://groups.google.com/group/maker-devel?lnk=srg"
class="external text" rel="nofollow">Google</a>, <a href="http://gmod.827538.n3.nabble.com/MAKER-f815929.html"
class="external text" rel="nofollow">Nabble</a> (2010/05+) |

Support for MAKER is provided on a <a
href="http://box290.bluehost.com/mailman/listinfo/maker-devel_yandell-lab.org"
class="external text" rel="nofollow">mailing list</a>, and through a
Trac-based
<a href="http://malachite.genetics.utah.edu/projects/maker/wiki"
class="external text" rel="nofollow">wiki</a>,
<a href="http://malachite.genetics.utah.edu/projects/maker/report"
class="external text" rel="nofollow">bug tracker</a> and
<a href="http://malachite.genetics.utah.edu/projects/maker/browser"
class="external text" rel="nofollow">code browser</a>. \| logo_info = \|
dev_ppl = Yandell Lab, Utah; Ian Korf (University of California Davis)
\| dev_status = \| contact_email = Carson Holt
\<carson.holt@genetics.utah.edu\>, Barry Moore
\<bmoore@genetics.utah.edu\> \| input = [GFF3](../GFF3 "GFF3"), FASTA \|
output = [GFF3](../GFF3 "GFF3"), FASTA \| see_also =
<a href="http://hymenopteragenome.org/ant_genomes/"
class="external free"
rel="nofollow">http://hymenopteragenome.org/ant_genomes/</a>

Almost all the ant genomes listed were independently annotated with
MAKER.

\| demo_server =
<a href="http://derringer.genetics.utah.edu/cgi-bin/MWAS/maker.cgi"
class="external free"
rel="nofollow">http://derringer.genetics.utah.edu/cgi-bin/MWAS/maker.cgi</a>

but switching soon to:

<a href="http://weatherby.genetics.utah.edu/cgi-bin/mwas/maker.cgi"
class="external free"
rel="nofollow">http://weatherby.genetics.utah.edu/cgi-bin/mwas/maker.cgi</a>
\| survey_link = MAKER \|release date=2008 \| extras = }}  
**Cite error: `<ref>` tags exist, but no `<references/>` tag was found**

</div>

<div class="printfooter">

Retrieved from
"<http://gmod.org/mediawiki/index.php?title=MAKER/tool_data&oldid=24514>"

</div>

<div id="catlinks" class="catlinks">

<div id="mw-normal-catlinks" class="mw-normal-catlinks">

[Categories](../Special:Categories "Special:Categories"):

- [Tool data](../Category:Tool_data "Category:Tool data")
- [GMOD
  Components](../Category:GMOD_Components "Category:GMOD Components")
- [MAKER](../Category:MAKER "Category:MAKER")

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

- <span id="ca-nstab-main"><a href="tool_data" accesskey="c"
  title="View the content page [c]">Page</a></span>
- <span id="ca-talk"><a
  href="http://gmod.org/mediawiki/index.php?title=Talk:MAKER/tool_data&amp;action=edit&amp;redlink=1"
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

<div id="p-views" class="vectorTabs" role="navigation"
aria-labelledby="p-views-label">

### Views

- <span id="ca-view">[Read](tool_data)</span>
- <span id="ca-viewsource"><a
  href="http://gmod.org/mediawiki/index.php?title=MAKER/tool_data&amp;action=edit"
  accesskey="e" title="This page is protected.
  You can view its source [e]">View source</a></span>
- <span id="ca-history"><a
  href="http://gmod.org/mediawiki/index.php?title=MAKER/tool_data&amp;action=history"
  accesskey="h" title="Past revisions of this page [h]">View history</a></span>

</div>

<div id="p-cactions" class="vectorMenu emptyPortlet" role="navigation"
aria-labelledby="p-cactions-label">

### Actions[](#)

<div class="menu">

</div>

</div>

<div id="p-search" role="search">

### Search

<div id="simpleSearch">

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

- <span id="t-whatlinkshere"><a href="../Special:WhatLinksHere/MAKER/tool_data" accesskey="j"
  title="A list of all wiki pages that link here [j]">What links here</a></span>
- <span id="t-recentchangeslinked"><a href="../Special:RecentChangesLinked/MAKER/tool_data" accesskey="k"
  title="Recent changes in pages linked from this page [k]">Related
  changes</a></span>
- <span id="t-specialpages"><a href="../Special:SpecialPages" accesskey="q"
  title="A list of all special pages [q]">Special pages</a></span>
- <span id="t-print"><a
  href="http://gmod.org/mediawiki/index.php?title=MAKER/tool_data&amp;printable=yes"
  rel="alternate" accesskey="p"
  title="Printable version of this page [p]">Printable version</a></span>
- <span id="t-permalink">[Permanent
  link](http://gmod.org/mediawiki/index.php?title=MAKER/tool_data&oldid=24514 "Permanent link to this revision of the page")</span>
- <span id="t-info">[Page
  information](http://gmod.org/mediawiki/index.php?title=MAKER/tool_data&action=info)</span>
- <span id="t-smwbrowselink"><a href="../Special:Browse/MAKER-2Ftool_data" rel="smw-browse">Browse
  properties</a></span>
- <span id="t-pdf">[Print as
  PDF](http://gmod.org/mediawiki/index.php?title=Special:PdfPrint&page=MAKER/tool_data)</span>

</div>

</div>

</div>

</div>

<div id="footer" role="contentinfo">

- <span id="footer-info-lastmod">Last updated at 18:29 on 10 September
  2013.</span>
- <span id="footer-info-viewcount">26,050 page views.</span>
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
