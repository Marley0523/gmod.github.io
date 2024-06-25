<div id="mw-page-base" class="noprint">

</div>

<div id="mw-head-base" class="noprint">

</div>

<div id="content" class="mw-body" role="main">

<span id="top"></span>

<div id="mw-js-message" style="display:none;">

</div>



# <span dir="auto">MAKER</span>

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

<a href="File:MAKERLogo.png" class="image"><img
src="../mediawiki/images/thumb/3/37/MAKERLogo.png/400px-MAKERLogo.png"
srcset="../mediawiki/images/thumb/3/37/MAKERLogo.png/600px-MAKERLogo.png 1.5x, ../mediawiki/images/thumb/3/37/MAKERLogo.png/800px-MAKERLogo.png 2x"
width="400" height="136" alt="MAKER logo" /></a>

</div>

</div>

<div class="componentBox">

<div class="compBoxHdr">

Status

</div>

- Mature release
- Development: active
- Support: active

<div class="compBoxHdr">

Licence

</div>

  
<a href="http://opensource.org/licenses/gpl-license"
class="external text" rel="nofollow">GNU GPL (for academics)</a>,
<a href="http://opensource.org/licenses/artistic-license-2.0"
class="external text" rel="nofollow">Artistic License 2.0 (for
academics)</a>, custom license for commercial usage

<div class="compBoxHdr">

Resources

</div>

- <a href="http://www.yandell-lab.org/software/maker.html"
  class="external text" rel="nofollow">Home page</a>

<!-- -->

- <a href="http://www.yandell-lab.org/software/maker.html"
  class="external text" rel="nofollow">Download</a>

<!-- -->

- <a
  href="http://yandell.topaz.genetics.utah.edu/cgi-bin/maker_license.cgi"
  class="external text" rel="nofollow">Source code</a>

<!-- -->

- <a href="http://derringer.genetics.utah.edu/cgi-bin/MWAS/maker.cgi"
  class="external text" rel="nofollow">Public server</a>

  

</div>

<div id="toc" class="toc">

<div id="toctitle">

## Contents

</div>

- [<span class="tocnumber">1</span> <span class="toctext">About
  MAKER</span>](#About_MAKER)
  - [<span class="tocnumber">1.1</span>
    <span class="toctext">Screenshots</span>](#Screenshots)
- [<span class="tocnumber">2</span>
  <span class="toctext">Downloads</span>](#Downloads)
- [<span class="tocnumber">3</span> <span class="toctext">Using
  MAKER</span>](#Using_MAKER)
  - [<span class="tocnumber">3.1</span> <span class="toctext">System
    Requirements</span>](#System_Requirements)
  - [<span class="tocnumber">3.2</span>
    <span class="toctext">Installation</span>](#Installation)
- [<span class="tocnumber">4</span>
  <span class="toctext">Documentation</span>](#Documentation)
  - [<span class="tocnumber">4.1</span>
    <span class="toctext">Annotations</span>](#Annotations)
- [<span class="tocnumber">5</span> <span class="toctext">Publications,
  Tutorials, and
  Presentations</span>](#Publications.2C_Tutorials.2C_and_Presentations)
  - [<span class="tocnumber">5.1</span>
    <span class="toctext">Publications on or mentioning
    MAKER</span>](#Publications_on_or_mentioning_MAKER)
  - [<span class="tocnumber">5.2</span>
    <span class="toctext">Tutorials</span>](#Tutorials)
  - [<span class="tocnumber">5.3</span>
    <span class="toctext">Presentations</span>](#Presentations)
- [<span class="tocnumber">6</span> <span class="toctext">Contacts and
  Mailing Lists</span>](#Contacts_and_Mailing_Lists)
- [<span class="tocnumber">7</span> <span class="toctext">MAKER
  Development</span>](#MAKER_Development)
  - [<span class="tocnumber">7.1</span>
    <span class="toctext">Development team</span>](#Development_team)
- [<span class="tocnumber">8</span> <span class="toctext">See
  also</span>](#See_also)
- [<span class="tocnumber">9</span> <span class="toctext">More on
  MAKER</span>](#More_on_MAKER)

</div>

## <span id="About_MAKER" class="mw-headline">About MAKER</span>

MAKER is an easy-to-configure, portable genome
[annotation](Category:Annotation "Category:Annotation") pipeline. MAKER
allows smaller *eukaryotic* genome projects and *prokaryotic* genome
projects to annotate their genomes and to create genome databases. MAKER
identifies repeats, aligns ESTs and proteins to a genome, produces *ab
initio* gene predictions and automatically synthesizes these data into
gene annotations with evidence-based quality values. MAKER is also
easily trainable: outputs of preliminary runs can be used to
automatically retrain its gene prediction algorithm, producing higher
quality gene-models on subsequent runs. MAKER's inputs are minimal. Its
outputs are in [GFF3](GFF3 "GFF3") or [FASTA](Glossary#FASTA "Glossary")
format, and can be directly loaded into
<a href="Chado" class="mw-redirect" title="Chado">Chado</a>,
[GBrowse](GBrowse.1 "GBrowse"), [JBrowse](JBrowse.1 "JBrowse"),
[WebApollo](WebApollo.1 "WebApollo") or [Apollo](Apollo.1 "Apollo").

For those annotating novel plant genomes, the
<a href="http://www.yandell-lab.org/software/maker-p.html"
class="external text" rel="nofollow">MAKER-P pipeline</a> is designed to
make the annotation tractable for small groups with limited
bioinformatics experience and resources, and faster and more transparent
for large groups with more experience and resources. The MAKER-P
pipeline generates species-specific repeat libraries, as well as
structural annotations of protein coding genes, non-coding RNAs, and
pseudogenes. The
<a href="http://www.yandell-lab.org/software/maker-p.html"
class="external text" rel="nofollow">MAKER-P website</a> has more
information on the additional protocols for plant genome annotation.

Additional MAKER options and capabilities include:

- Map old annotation sets on to new assemblies.
- Merge multiple legacy annotation sets into a consensus set of
  annotations.
- Update existing annotations to take new evidence into account.
- Tag pre-existing gene models with evidence alignments and quality
  control metrics to assist in downstream manual curation.
- Use GFF3 pass-through to include both evidence alignments and
  predicted gene models from algorithms not natively supported by MAKER.
- MAKER is MPI-capable for rapid parallelization across computer
  clusters.
- You can also easily integrate raw InterProScan results into MAKER,
  which will identify protein domains; add GO functional categories; and
  help assign putative gene functions to genome annotations. This data
  then becomes accessible as part of the GFF3 output and can be loaded
  into a <a href="Chado" class="mw-redirect" title="Chado">Chado</a>
  database, [JBrowse](JBrowse.1 "JBrowse"),
  [GBrowse](GBrowse.1 "GBrowse"), [WebApollo](WebApollo.1 "WebApollo")
  or [Apollo](Apollo.1 "Apollo").

MAKER comes with sample data for testing purposes. See the `/data`
directory in the download.

  
Visit the <a href="http://www.yandell-lab.org/software/maker.html"
class="external text" rel="nofollow">MAKER website</a>.

### <span id="Screenshots" class="mw-headline">Screenshots</span>

<div class="thumb tnone">

<div class="thumbinner" style="width:502px;">

<a href="File:MAKER_Apollo_view.jpg" class="image"><img
src="../mediawiki/images/f/fb/MAKER_Apollo_view.jpg" class="thumbimage"
width="500" height="301" /></a>

<div class="thumbcaption">

<div class="magnify">

<a href="File:MAKER_Apollo_view.jpg" class="internal"
title="Enlarge"><img
src="../mediawiki/skins/common/images/magnify-clip.png" width="15"
height="11" /></a>

</div>

View of **MAKER** annotations in the [Apollo](Apollo.1 "Apollo") genome
annotation curation tool. Supporting evidence is shown in the upper dark
panel. Gene annotations are shown in the blue panel.

</div>

</div>

</div>

## <span id="Downloads" class="mw-headline">Downloads</span>

- <a href="http://www.yandell-lab.org/software/maker.html"
  class="external text" rel="nofollow">Download MAKER</a>.

<!-- -->

- <a
  href="http://yandell.topaz.genetics.utah.edu/cgi-bin/maker_license.cgi"
  class="external text" rel="nofollow">Download the source code for
  MAKER</a>.

## <span id="Using_MAKER" class="mw-headline">Using MAKER</span>

We recommend that users read the MAKER paper \[below\] and the README
file included with the download before installing and using MAKER.

### <span id="System_Requirements" class="mw-headline">System Requirements</span>

- Perl 5.8.0 or higher
- [BioPerl](BioPerl "BioPerl") 1.6 or higher.
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

### <span id="Installation" class="mw-headline">Installation</span>

Please see the
<a href="http://www.yandell-lab.org/software/maker_install.html"
class="external text" rel="nofollow">installation guide</a> or the
README file in the download for instructions.

## <span id="Documentation" class="mw-headline">Documentation</span>

By default, MAKER runs on a single computer. A parallel version,
mpi_maker, is also available. To run mpi_maker you will need a
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

See also the <a href="http://www.yandell-lab.org/software/maker-p.html"
class="external text" rel="nofollow">MAKER-P website</a> for
documentation on the additional pipeline steps for annotating plant
genomes.

  

### <span id="Annotations" class="mw-headline">Annotations</span>

The MAKER genome annotation pipeline generates several different types
of annotations, including

- *Ab initio* gene predictions from SNAP, Augustus, FGENESH, and
  GeneMark
- Final gene models from MAKER
- EST alignments from both EXONERATE and BLASTN
- Protein alignments from EXONERATE and BLASTX
- Repeats from RepeatMasker and the MAKER internal RepeatRunner

## <span id="Publications.2C_Tutorials.2C_and_Presentations" class="mw-headline">Publications, Tutorials, and Presentations</span>

### <span id="Publications_on_or_mentioning_MAKER" class="mw-headline">Publications on or mentioning MAKER</span>

- MAKER-P: a tool-kit for the rapid creation, management, and quality
  control of plant genome annotations.
  <sup>[\[1\]](#cite_note-PMID:24306534-1)</sup>
- MAKER2: an annotation pipeline and genome-database management tool for
  second-generation genome projects.
  <sup>[\[2\]](#cite_note-PMID:22192575-2)</sup>
- MAKER: an easy-to-use annotation pipeline designed for emerging model
  organism genomes. <span class="Z3988"
  title="ctx_ver=Z39.88-2004&amp;rft_val_fmt=info%3Aofi%2Ffmt%3Akev%3Amtx%3Ajournal&amp;rfr_id=info%3Asid%2Focoins.info%3Agenerator&amp;rft.genre=article&amp;rft_id=info%3Apmid%2F18025269">PMID:18025269</span>
  <sup>[\[3\]](#cite_note-PMID:18025269-3)</sup>

### <span id="Tutorials" class="mw-headline">Tutorials</span>

<a href="MAKER_Tutorial" class="mw-redirect"
title="MAKER Tutorial">MAKER Tutorial</a>  
taught as part of the [2013 GMOD Summer
School](2013_GMOD_Summer_School "2013 GMOD Summer School")

<a
href="https://pods.iplantcollaborative.org/wiki/display/sciplant/MAKER-P+at+iPlant"
class="external text" rel="nofollow">MAKER at iPlant</a>

how to access MAKER using Atmosphere cloud image and TACC Lonestar

### <span id="Presentations" class="mw-headline">Presentations</span>

- [MAKER—the easy-to-use genome annotation
  pipeline](File:MAKERSMBE2009.pdf "File:MAKERSMBE2009.pdf"), presented
  by Mark Yandell at the <a
  href="http://ccg.biology.uiowa.edu/smbe/symposia.php?action=view&amp;sym_ID=27"
  class="external text" rel="nofollow">SMBE 2009 GMOD Workshop</a>.

## <span id="Contacts_and_Mailing_Lists" class="mw-headline">Contacts and Mailing Lists</span>

|  |  |  |  |
|----|----|----|----|
|  | Mailing List Link | Description | Archive(s) |
| **MAKER** | <a
href="http://box290.bluehost.com/mailman/listinfo/maker-devel_yandell-lab.org"
class="external text" rel="nofollow">maker-devel</a> | **MAKER** developers and users list. | <a href="http://groups.google.com/group/maker-devel?lnk=srg"
class="external text" rel="nofollow">Google</a>, <a href="http://gmod.827538.n3.nabble.com/MAKER-f815929.html"
class="external text" rel="nofollow">Nabble</a> (2010/05+) |

Support for MAKER is provided on a <a
href="http://yandell-lab.org/mailman/listinfo/maker-devel_yandell-lab.org"
class="external text" rel="nofollow">mailing list</a>, and through a
Trac-based
<a href="http://malachite.genetics.utah.edu/projects/maker/wiki"
class="external text" rel="nofollow">wiki</a>,
<a href="http://malachite.genetics.utah.edu/projects/maker/report"
class="external text" rel="nofollow">bug tracker</a> and
<a href="http://malachite.genetics.utah.edu/projects/maker/browser"
class="external text" rel="nofollow">code browser</a>.

  

## <span id="MAKER_Development" class="mw-headline">MAKER Development</span>

### <span id="Development_team" class="mw-headline">Development team</span>

Yandell Lab, Utah; Ian Korf (University of California Davis)

## <span id="See_also" class="mw-headline">See also</span>

Almost all the ant genomes at the
<a href="http://hymenopteragenome.org/ant_genomes/"
class="external text" rel="nofollow">Ant Genomes Portal</a> were
independently annotated with MAKER.

## <span id="More_on_MAKER" class="mw-headline">More on MAKER</span>

See [Category:MAKER](Category:MAKER "Category:MAKER")

  

1.  <span id="cite_note-PMID:24306534"><span class="mw-cite-backlink">[↑](#cite_ref-PMID:24306534_0)</span>
    **Cite error: Invalid `<ref>` tag; no text was provided for refs
    named `PMID:24306534`**</span>
2.  <span id="cite_note-PMID:22192575"><span class="mw-cite-backlink">[↑](#cite_ref-PMID:22192575_0)</span>
    **Cite error: Invalid `<ref>` tag; no text was provided for refs
    named `PMID:22192575`**</span>
3.  <span id="cite_note-PMID:18025269"><span class="mw-cite-backlink">[↑](#cite_ref-PMID:18025269_0)</span>
    **Cite error: Invalid `<ref>` tag; no text was provided for refs
    named `PMID:18025269`**</span>

<span class="smw-highlighter" data-type="4" state="inline"
data-title="Error"><span class="smwtticon warning"></span><span class="smwttcontent">"wild
urls" is not in the list of possible values (website, download, source
code, public server, demo server, wild URL, documentation, publication,
social media, other) for this property.</span></span>

</div>

<div class="printfooter">

Retrieved from
"<http://gmod.org/mediawiki/index.php?title=MAKER&oldid=25258>"

</div>

<div id="catlinks" class="catlinks">

<div id="mw-normal-catlinks" class="mw-normal-catlinks">

[Categories](Special:Categories "Special:Categories"):

- [GMOD Component](Category:GMOD_Component "Category:GMOD Component")
- <a
  href="http://gmod.org/mediawiki/index.php?title=Category:SemanticLink&amp;action=edit&amp;redlink=1"
  class="new"
  title="Category:SemanticLink (page does not exist)">SemanticLink</a>
- [GMOD Components](Category:GMOD_Components "Category:GMOD Components")
- [Annotation](Category:Annotation "Category:Annotation")
- [MAKER](Category:MAKER "Category:MAKER")

</div>

</div>

<div id="mw-data-after-content">

<div class="smwfact">

<span class="smwfactboxhead">Facts about
"<span class="swmfactboxheadbrowse">[MAKER](Special:Browse/MAKER "Special:Browse/MAKER")</span>"</span><span class="smwrdflink"><span class="rdflink">[RDF
feed](http://gmod.org/wiki/Special:ExportRDF/MAKER "Special:ExportRDF/MAKER")</span></span>

<table class="smwfacttable">
<colgroup>
<col style="width: 50%" />
<col style="width: 50%" />
</colgroup>
<tbody>
<tr class="odd row-odd">
<td class="smwpropname"><a href="Property:Available_on_platform"
title="Property:Available on platform">Available on platform</a></td>
<td class="smwprops">linux <span class="smwsearch"><a
href="Special:SearchByProperty/Available-20on-20platform/linux"
title="Special:SearchByProperty/Available-20on-20platform/linux">+</a></span>,
os x <span class="smwsearch"><a
href="Special:SearchByProperty/Available-20on-20platform/os-20x"
title="Special:SearchByProperty/Available-20on-20platform/os-20x">+</a></span>
and unix <span class="smwsearch"><a
href="Special:SearchByProperty/Available-20on-20platform/unix"
title="Special:SearchByProperty/Available-20on-20platform/unix">+</a></span></td>
</tr>
<tr class="even row-even">
<td class="smwpropname"><a href="Property:Has_URL"
title="Property:Has URL">Has URL</a></td>
<td class="smwprops"><a
href="http://www.yandell-lab.org/software/maker.html"
class="external free"
rel="nofollow">http://www.yandell-lab.org/software/maker.html</a> <span
class="smwsearch"><a
href="Special:SearchByProperty/Has-20URL/http:-2F-2Fwww.yandell-2Dlab.org-2Fsoftware-2Fmaker.html"
title="Special:SearchByProperty/Has-20URL/http:-2F-2Fwww.yandell-2Dlab.org-2Fsoftware-2Fmaker.html">+</a></span>,
<a
href="http://yandell.topaz.genetics.utah.edu/cgi-bin/maker_license.cgi"
class="external free"
rel="nofollow">http://yandell.topaz.genetics.utah.edu/cgi-bin/maker_license.cgi</a>
<span class="smwsearch"><a
href="Special:SearchByProperty/Has-20URL/http:-2F-2Fyandell.topaz.genetics.utah.edu-2Fcgi-2Dbin-2Fmaker_license.cgi"
title="Special:SearchByProperty/Has-20URL/http:-2F-2Fyandell.topaz.genetics.utah.edu-2Fcgi-2Dbin-2Fmaker license.cgi">+</a></span>,
<a href="https://www.e-biogenouest.org/resources/48"
class="external free"
rel="nofollow">https://www.e-biogenouest.org/resources/48</a> <span
class="smwsearch"><a
href="Special:SearchByProperty/Has-20URL/https:-2F-2Fwww.e-2Dbiogenouest.org-2Fresources-2F48"
title="Special:SearchByProperty/Has-20URL/https:-2F-2Fwww.e-2Dbiogenouest.org-2Fresources-2F48">+</a></span>,
<a href="http://www.yandell-lab.org/software/maker-p.html"
class="external free"
rel="nofollow">http://www.yandell-lab.org/software/maker-p.html</a>
<span class="smwsearch"><a
href="Special:SearchByProperty/Has-20URL/http:-2F-2Fwww.yandell-2Dlab.org-2Fsoftware-2Fmaker-2Dp.html"
title="Special:SearchByProperty/Has-20URL/http:-2F-2Fwww.yandell-2Dlab.org-2Fsoftware-2Fmaker-2Dp.html">+</a></span>,
<a href="http://derringer.genetics.utah.edu/cgi-bin/MWAS/maker.cgi"
class="external free"
rel="nofollow">http://derringer.genetics.utah.edu/cgi-bin/MWAS/maker.cgi</a>
<span class="smwsearch"><a
href="Special:SearchByProperty/Has-20URL/http:-2F-2Fderringer.genetics.utah.edu-2Fcgi-2Dbin-2FMWAS-2Fmaker.cgi"
title="Special:SearchByProperty/Has-20URL/http:-2F-2Fderringer.genetics.utah.edu-2Fcgi-2Dbin-2FMWAS-2Fmaker.cgi">+</a></span>
and <a href="http://hymenopteragenome.org/ant_genomes/"
class="external free"
rel="nofollow">http://hymenopteragenome.org/ant_genomes/</a> <span
class="smwsearch"><a
href="Special:SearchByProperty/Has-20URL/http:-2F-2Fhymenopteragenome.org-2Fant_genomes-2F"
title="Special:SearchByProperty/Has-20URL/http:-2F-2Fhymenopteragenome.org-2Fant genomes-2F">+</a></span></td>
</tr>
<tr class="odd row-odd">
<td class="smwpropname"><a href="Property:Has_description"
title="Property:Has description">Has description</a></td>
<td class="smwprops">MAKER is an easy-to-configure, portable ge<span
class="smw-highlighter" data-type="2" data-state="persistent"
data-title="Information"><span class="smwtext"> … </span><span
class="smwttcontent">MAKER is an easy-to-configure, portable genome <a
href="Category:Annotation" title="Category:Annotation">annotation</a>
pipeline. MAKER allows smaller <em>eukaryotic</em> genome projects and
<em>prokaryotic</em> genome projects to annotate their genomes and to
create genome databases. MAKER identifies repeats, aligns ESTs and
proteins to a genome, produces <em>ab initio</em> gene predictions and
automatically synthesizes these data into gene annotations with
evidence-based quality values. MAKER is also easily trainable: outputs
of preliminary runs can be used to automatically retrain its gene
prediction algorithm, producing higher quality gene-models on subsequent
runs. MAKER's inputs are minimal. Its outputs are in <a href="GFF3"
title="GFF3">GFF3</a> or <a href="Glossary#FASTA"
title="Glossary">FASTA</a> format, and can be directly loaded into <a
href="Chado" class="mw-redirect" title="Chado">Chado</a>, <a
href="GBrowse.1" title="GBrowse">GBrowse</a>, <a href="JBrowse.1"
title="JBrowse">JBrowse</a>, <a href="WebApollo.1"
title="WebApollo">WebApollo</a> or <a href="Apollo.1"
title="Apollo">Apollo</a>. </span></span>
<p>For those annotating novel plant genomes, the <a
href="http://www.yandell-lab.org/software/maker-p.html"
class="external text" rel="nofollow">MAKER-P pipeline</a> is designed to
make the annotation tractable for small groups with limited
bioinformatics experience and resources, and faster and more transparent
for large groups with more experience and resources. The MAKER-P
pipeline generates species-specific repeat libraries, as well as
structural annotations of protein coding genes, non-coding RNAs, and
pseudogenes. The <a
href="http://www.yandell-lab.org/software/maker-p.html"
class="external text" rel="nofollow">MAKER-P website</a> has more
information on the additional protocols for plant genome annotation.</p>
<p>Additional MAKER options and capabilities include:</p>
<ul>
<li>Map old annotation sets on to new assemblies.</li>
<li>Merge multiple legacy annotation sets into a consensus set of
annotations.</li>
<li>Update existing annotations to take new evidence into account.</li>
<li>Tag pre-existing gene models with evidence alignments and quality
control metrics to assist in downstream manual curation.</li>
<li>Use GFF3 pass-through to include both evidence alignments and
predicted gene models from algorithms not natively supported by
MAKER.</li>
<li>MAKER is MPI-capable for rapid parallelization across computer
clusters.</li>
<li>You can also easily integrate raw InterProScan results into MAKER,
which will identify protein domains; add GO functional categories; and
help assign putative gene functions to genome annotations. This data
then becomes accessible as part of the GFF3 output and can be loaded
into a <a href="Chado" class="mw-redirect" title="Chado">Chado</a>
database, <a href="JBrowse.1" title="JBrowse">JBrowse</a>, <a
href="GBrowse.1" title="GBrowse">GBrowse</a>, <a href="WebApollo.1"
title="WebApollo">WebApollo</a> or <a href="Apollo.1"
title="Apollo">Apollo</a>.</li>
</ul>
MAKER comes with sample data for testing purposes. See the
<code>/data</code> directory in the download. <code>/data</code>
directory in the download. <span class="smwsearch"><a
href="http://gmod.org/mediawiki/index.php?title=Special:SearchByProperty&amp;x=Has-20description%2FMAKER-20is-20an-20easy-2Dto-2Dconfigure%2C-20portable-20genome-20-5B-5B%3ACategory%3AAnnotation-7Cannotation-5D-5D-20pipeline.-20MAKER-20allows-20smaller-20-27-27eukaryotic-27-27-20genome-20projects-20and-20-27-27prokaryotic-27-27-20genome-20projects-20to-20annotate-20their-20genomes-20and-20to-20create-20genome-20databases.-20MAKER-20identifies-20repeats%2C-20aligns-20ESTs-20and-20proteins-20to-20a-20genome%2C-20produces-20-27-27ab-20initio-27-27-20gene-20predictions-20and-20automatically-20synthesizes-20these-20data-20into-20gene-20annotations-20with-20evidence-2Dbased-20quality-20values.-20MAKER-20is-20also-20easily-20trainable%3A-20outputs-20of-20preliminary-20runs-20can-20be-20used-20to-20automatically-20retrain-20its-20gene-20prediction-20algorithm%2C-20producing-20higher-20quality-20gene-2Dmodels-20on-20subsequent-20runs.-20MAKER%27s-20inputs-20are-20minimal.-20-20Its-20outputs-20are-20in-20-5B-5BGFF3-5D-5D-20or-20-5B-5BGlossary-23FASTA-7CFASTA-5D-5D-20format%2C-20and-20can-20be-20directly-20loaded-20into-20-5B-5BChado-5D-5D%2C-20-5B-5BGBrowse-5D-5D%2C-20-5B-5BJBrowse-5D-5D%2C-20-5B-5BWebApollo-5D-5D-20or-20-5B-5BApollo-5D-5D.-0A-0AFor-20those-20annotating-20novel-20plant-20genomes%2C-20the-20-5Bhttp%3A-2F-2Fwww.yandell-2Dlab.org-2Fsoftware-2Fmaker-2Dp.html-20MAKER-2DP-20pipeline-5D-20is-20designed-20to-20make-20the-20annotation-20tractable-20for-20small-20groups-20with-20limited-20bioinformatics-20experience-20and-20resources%2C-20and-20faster-20and-20more-20transparent-20for-20large-20groups-20with-20more-20experience-20and-20resources.-20The-20MAKER-2DP-20pipeline-20generates-20species-2Dspecific-20repeat-20libraries%2C-20as-20well-20as-20structural-20annotations-20of-20protein-20coding-20genes%2C-20non-2Dcoding-20RNAs%2C-20and-20pseudogenes.-20The-20-5Bhttp%3A-2F-2Fwww.yandell-2Dlab.org-2Fsoftware-2Fmaker-2Dp.html-20MAKER-2DP-20website-5D-20has-20more-20information-20on-20the-20additional-20protocols-20for-20plant-20genome-20annotation.-0A-0AAdditional-20MAKER-20options-20and-20capabilities-20include%3A-0A%2A-20Map-20old-20annotation-20sets-20on-20to-20new-20assemblies.-0A%2A-20Merge-20multiple-20legacy-20annotation-20sets-20into-20a-20consensus-20set-20of-20annotations.-0A%2A-20Update-20existing-20annotations-20to-20take-20new-20evidence-20into-20account.-0A%2A-20Tag-20pre-2Dexisting-20gene-20models-20with-20evidence-20alignments-20and-20quality-20control-20metrics-20to-20assist-20in-20downstream-20manual-20curation.-0A%2A-20Use-20GFF3-20pass-2Dthrough-20to-20include-20both-20evidence-20alignments-20and-20predicted-20gene-20models-20from-20algorithms-20not-20natively-20supported-20by-20MAKER.-0A%2A-20MAKER-20is-20-3Cabbr-20title%3D%22message-2Dpassing-20interface%22-3EMPI-3C-2Fabbr-3E-2Dcapable-20for-20rapid-20parallelization-20across-20computer-20clusters.-0A%2A-20You-20can-20also-20easily-20integrate-20raw-20InterProScan-20results-20into-20MAKER%2C-20which-20will-20identify-20protein-20domains%3B-20add-20GO-20functional-20categories%3B-20and-20help-20assign-20putative-20gene-20functions-20to-20genome-20annotations.-20This-20data-20then-20becomes-20accessible-20as-20part-20of-20the-20GFF3-20output-20and-20can-20be-20loaded-20into-20a-20-5B-5BChado-5D-5D-20database%2C-20-5B-5BJBrowse-5D-5D%2C-20-5B-5BGBrowse-5D-5D%2C-20-5B-5BWebApollo-5D-5D-20or-20-5B-5BApollo-5D-5D.-0A-0AMAKER-20comes-20with-20sample-20data-20for-20testing-20purposes.-20-20See-20the-20-3Ctt-3E-2Fdata-3C-2Ftt-3E-20directory-20in-20the-20download."
class="external text" rel="nofollow">+</a></span>, Review article on
eukaryotic genome annotation from the MAKER team. <span
class="smwsearch"><a
href="Special:SearchByProperty/Has-20description/Review-20article-20on-20eukaryotic-20genome-20annotation-20from-20the-20MAKER-20team."
title="Special:SearchByProperty/Has-20description/Review-20article-20on-20eukaryotic-20genome-20annotation-20from-20the-20MAKER-20team.">+</a></span>,
MAKER with additional software for plant genome annotation <span
class="smwsearch"><a
href="Special:SearchByProperty/Has-20description/MAKER-20with-20additional-20software-20for-20plant-20genome-20annotation"
title="Special:SearchByProperty/Has-20description/MAKER-20with-20additional-20software-20for-20plant-20genome-20annotation">+</a></span>,
online version of the MAKER tool <span class="smwsearch"><a
href="Special:SearchByProperty/Has-20description/online-20version-20of-20the-20MAKER-20tool"
title="Special:SearchByProperty/Has-20description/online-20version-20of-20the-20MAKER-20tool">+</a></span>
and The ant genomes were annotated using MAKER. <span
class="smwsearch"><a
href="Special:SearchByProperty/Has-20description/The-20ant-20genomes-20were-20annotated-20using-20MAKER."
title="Special:SearchByProperty/Has-20description/The-20ant-20genomes-20were-20annotated-20using-20MAKER.">+</a></span></td>
</tr>
<tr class="even row-even">
<td class="smwpropname"><a href="Property:Has_development_status"
title="Property:Has development status">Has development status</a></td>
<td class="smwprops">active <span class="smwsearch"><a
href="Special:SearchByProperty/Has-20development-20status/active"
title="Special:SearchByProperty/Has-20development-20status/active">+</a></span></td>
</tr>
<tr class="odd row-odd">
<td class="smwpropname"><a href="Property:Has_input_format"
title="Property:Has input format">Has input format</a></td>
<td class="smwprops"><a href="GFF3" title="GFF3">GFF3</a> <span
class="smwsearch"><a
href="Special:SearchByProperty/Has-20input-20format/-5B-5BGFF3-5D-5D"
title="Special:SearchByProperty/Has-20input-20format/-5B-5BGFF3-5D-5D">+</a></span>
and <a href="Glossary#FASTA" title="Glossary">FASTA</a> <span
class="smwsearch"><a
href="Special:SearchByProperty/Has-20input-20format/-5B-5BGlossary-23FASTA-7CFASTA-5D-5D"
title="Special:SearchByProperty/Has-20input-20format/-5B-5BGlossary-23FASTA-7CFASTA-5D-5D">+</a></span></td>
</tr>
<tr class="even row-even">
<td class="smwpropname"><a href="Property:Has_licence"
title="Property:Has licence">Has licence</a></td>
<td class="smwprops"><a
href="http://opensource.org/licenses/gpl-license" class="external text"
rel="nofollow">GNU GPL (for academics)</a> <span class="smwsearch"><a
href="Special:SearchByProperty/Has-20licence/-5Bhttp:-2F-2Fopensource.org-2Flicenses-2Fgpl-2Dlicense-20GNU-20GPL-20(for-20academics)-5D"
title="Special:SearchByProperty/Has-20licence/-5Bhttp:-2F-2Fopensource.org-2Flicenses-2Fgpl-2Dlicense-20GNU-20GPL-20(for-20academics)-5D">+</a></span>,
<a href="http://opensource.org/licenses/artistic-license-2.0"
class="external text" rel="nofollow">Artistic License 2.0 (for
academics)</a> <span class="smwsearch"><a
href="Special:SearchByProperty/Has-20licence/-5Bhttp:-2F-2Fopensource.org-2Flicenses-2Fartistic-2Dlicense-2D2.0-20Artistic-20License-202.0-20(for-20academics)-5D"
title="Special:SearchByProperty/Has-20licence/-5Bhttp:-2F-2Fopensource.org-2Flicenses-2Fartistic-2Dlicense-2D2.0-20Artistic-20License-202.0-20(for-20academics)-5D">+</a></span>
and custom license for commercial usage <span class="smwsearch"><a
href="Special:SearchByProperty/Has-20licence/custom-20license-20for-20commercial-20usage"
title="Special:SearchByProperty/Has-20licence/custom-20license-20for-20commercial-20usage">+</a></span></td>
</tr>
<tr class="odd row-odd">
<td class="smwpropname"><a href="Property:Has_logo"
title="Property:Has logo">Has logo</a></td>
<td class="smwprops">MAKERLogo.png <span class="smwsearch"><a
href="Special:SearchByProperty/Has-20logo/MAKERLogo.png"
title="Special:SearchByProperty/Has-20logo/MAKERLogo.png">+</a></span></td>
</tr>
<tr class="even row-even">
<td class="smwpropname"><a href="Property:Has_output_format"
title="Property:Has output format">Has output format</a></td>
<td class="smwprops"><a href="GFF3" title="GFF3">GFF3</a> <span
class="smwsearch"><a
href="Special:SearchByProperty/Has-20output-20format/-5B-5BGFF3-5D-5D"
title="Special:SearchByProperty/Has-20output-20format/-5B-5BGFF3-5D-5D">+</a></span>
and <a href="Glossary#FASTA" title="Glossary">FASTA</a> <span
class="smwsearch"><a
href="Special:SearchByProperty/Has-20output-20format/-5B-5BGlossary-23FASTA-7CFASTA-5D-5D"
title="Special:SearchByProperty/Has-20output-20format/-5B-5BGlossary-23FASTA-7CFASTA-5D-5D">+</a></span></td>
</tr>
<tr class="odd row-odd">
<td class="smwpropname"><a href="Property:Has_software_maturity_status"
title="Property:Has software maturity status">Has software maturity
status</a></td>
<td class="smwprops">mature <span class="smwsearch"><a
href="Special:SearchByProperty/Has-20software-20maturity-20status/mature"
title="Special:SearchByProperty/Has-20software-20maturity-20status/mature">+</a></span></td>
</tr>
<tr class="even row-even">
<td class="smwpropname"><a href="Property:Has_support_status"
title="Property:Has support status">Has support status</a></td>
<td class="smwprops">active <span class="smwsearch"><a
href="Special:SearchByProperty/Has-20support-20status/active"
title="Special:SearchByProperty/Has-20support-20status/active">+</a></span></td>
</tr>
<tr class="odd row-odd">
<td class="smwpropname"><a href="Property:Has_title"
title="Property:Has title">Has title</a></td>
<td class="smwprops">A beginner's guide to eukaryotic genome annotation
<span class="smwsearch"><a
href="Special:SearchByProperty/Has-20title/A-20beginner&#39;s-20guide-20to-20eukaryotic-20genome-20annotation"
title="Special:SearchByProperty/Has-20title/A-20beginner&#39;s-20guide-20to-20eukaryotic-20genome-20annotation">+</a></span>,
MAKER-P <span class="smwsearch"><a
href="Special:SearchByProperty/Has-20title/MAKER-2DP"
title="Special:SearchByProperty/Has-20title/MAKER-2DP">+</a></span>,
MAKER Web Annotation Server <span class="smwsearch"><a
href="Special:SearchByProperty/Has-20title/MAKER-20Web-20Annotation-20Server"
title="Special:SearchByProperty/Has-20title/MAKER-20Web-20Annotation-20Server">+</a></span>
and Ant Genomes Portal <span class="smwsearch"><a
href="Special:SearchByProperty/Has-20title/Ant-20Genomes-20Portal"
title="Special:SearchByProperty/Has-20title/Ant-20Genomes-20Portal">+</a></span></td>
</tr>
<tr class="even row-even">
<td class="smwpropname"><a href="Property:Has_topic"
title="Property:Has topic">Has topic</a></td>
<td class="smwprops"><strong>MAKER</strong> <span class="smwsearch"><a
href="Special:SearchByProperty/Has-20topic/MAKER"
title="Special:SearchByProperty/Has-20topic/MAKER">+</a></span></td>
</tr>
<tr class="odd row-odd">
<td class="smwpropname"><a href="Property:Is_open_source"
title="Property:Is open source">Is open source</a></td>
<td class="smwprops">Caveats apply <span class="smwsearch"><a
href="Special:SearchByProperty/Is-20open-20source/Caveats-20apply"
title="Special:SearchByProperty/Is-20open-20source/Caveats-20apply">+</a></span></td>
</tr>
<tr class="even row-even">
<td class="smwpropname"><a href="Property:Link_type"
title="Property:Link type">Link type</a></td>
<td class="smwprops">download <span class="smwsearch"><a
href="Special:SearchByProperty/Link-20type/download"
title="Special:SearchByProperty/Link-20type/download">+</a></span>,
source code <span class="smwsearch"><a
href="Special:SearchByProperty/Link-20type/source-20code"
title="Special:SearchByProperty/Link-20type/source-20code">+</a></span>,
website <span class="smwsearch"><a
href="Special:SearchByProperty/Link-20type/website"
title="Special:SearchByProperty/Link-20type/website">+</a></span>,
publication <span class="smwsearch"><a
href="Special:SearchByProperty/Link-20type/publication"
title="Special:SearchByProperty/Link-20type/publication">+</a></span>,
other <span class="smwsearch"><a
href="Special:SearchByProperty/Link-20type/other"
title="Special:SearchByProperty/Link-20type/other">+</a></span> and
public server <span class="smwsearch"><a
href="Special:SearchByProperty/Link-20type/public-20server"
title="Special:SearchByProperty/Link-20type/public-20server">+</a></span></td>
</tr>
<tr class="odd row-odd">
<td class="smwpropname"><a href="Property:Release_date"
title="Property:Release date">Release date</a></td>
<td class="smwprops">2008 <span class="smwsearch"><a
href="Special:SearchByProperty/Release-20date/2008"
title="Special:SearchByProperty/Release-20date/2008">+</a></span></td>
</tr>
<tr class="even row-even">
<td class="smwpropname"><a
href="Property:Tool_functionality_or_classification"
title="Property:Tool functionality or classification">Tool functionality or
classification</a></td>
<td class="smwprops">Genome Annotation <span class="smwsearch"><a
href="Special:SearchByProperty/Tool-20functionality-20or-20classification/Genome-20Annotation"
title="Special:SearchByProperty/Tool-20functionality-20or-20classification/Genome-20Annotation">+</a></span></td>
</tr>
<tr class="odd row-odd">
<td class="smwpropname"><a href="Property:Written_in_language"
title="Property:Written in language">Written in language</a></td>
<td class="smwprops">Perl <span class="smwsearch"><a
href="Special:SearchByProperty/Written-20in-20language/Perl"
title="Special:SearchByProperty/Written-20in-20language/Perl">+</a></span></td>
</tr>
<tr class="even row-even">
<td class="smwspecname"><span class="smw-highlighter" data-type="1"
data-state="inline" data-title="Property"><span class="smwbuiltin"><a
href="Property:Has_subobject" title="Property:Has subobject">Has
subobject</a></span><span class="smwttcontent">This property is a
special property in this wiki.</span></span></td>
<td class="smwspecs"><a
href="MAKER.1#http:.2F.2Fwww.yandell-lab.org.2Fsoftware.2Fmaker.html"
title="MAKER">MAKER#http://www.yandell-lab.org/software/maker.html</a>
<span class="smwsearch"><a
href="Special:SearchByProperty/Has-20subobject/MAKER-23http:-2F-2Fwww.yandell-2Dlab.org-2Fsoftware-2Fmaker.html"
title="Special:SearchByProperty/Has-20subobject/MAKER-23http:-2F-2Fwww.yandell-2Dlab.org-2Fsoftware-2Fmaker.html">+</a></span>,
<a
href="MAKER.1#http:.2F.2Fyandell.topaz.genetics.utah.edu.2Fcgi-bin.2Fmaker_license.cgi"
title="MAKER">MAKER#http://yandell.topaz.genetics.utah.edu/cgi-bin/maker_license.cgi</a>
<span class="smwsearch"><a
href="Special:SearchByProperty/Has-20subobject/MAKER-23http:-2F-2Fyandell.topaz.genetics.utah.edu-2Fcgi-2Dbin-2Fmaker_license.cgi"
title="Special:SearchByProperty/Has-20subobject/MAKER-23http:-2F-2Fyandell.topaz.genetics.utah.edu-2Fcgi-2Dbin-2Fmaker license.cgi">+</a></span>,
<a href="MAKER.1#https:.2F.2Fwww.e-biogenouest.org.2Fresources.2F48"
title="MAKER">MAKER#https://www.e-biogenouest.org/resources/48</a> <span
class="smwsearch"><a
href="Special:SearchByProperty/Has-20subobject/MAKER-23https:-2F-2Fwww.e-2Dbiogenouest.org-2Fresources-2F48"
title="Special:SearchByProperty/Has-20subobject/MAKER-23https:-2F-2Fwww.e-2Dbiogenouest.org-2Fresources-2F48">+</a></span>,
<a
href="MAKER.1#http:.2F.2Fwww.yandell-lab.org.2Fsoftware.2Fmaker-p.html"
title="MAKER">MAKER#http://www.yandell-lab.org/software/maker-p.html</a>
<span class="smwsearch"><a
href="Special:SearchByProperty/Has-20subobject/MAKER-23http:-2F-2Fwww.yandell-2Dlab.org-2Fsoftware-2Fmaker-2Dp.html"
title="Special:SearchByProperty/Has-20subobject/MAKER-23http:-2F-2Fwww.yandell-2Dlab.org-2Fsoftware-2Fmaker-2Dp.html">+</a></span>,
<a
href="MAKER.1#http:.2F.2Fderringer.genetics.utah.edu.2Fcgi-bin.2FMWAS.2Fmaker.cgi"
title="MAKER">MAKER#http://derringer.genetics.utah.edu/cgi-bin/MWAS/maker.cgi</a>
<span class="smwsearch"><a
href="Special:SearchByProperty/Has-20subobject/MAKER-23http:-2F-2Fderringer.genetics.utah.edu-2Fcgi-2Dbin-2FMWAS-2Fmaker.cgi"
title="Special:SearchByProperty/Has-20subobject/MAKER-23http:-2F-2Fderringer.genetics.utah.edu-2Fcgi-2Dbin-2FMWAS-2Fmaker.cgi">+</a></span>
and <a href="MAKER.1#http:.2F.2Fhymenopteragenome.org.2Fant_genomes.2F"
title="MAKER">MAKER#http://hymenopteragenome.org/ant_genomes/</a> <span
class="smwsearch"><a
href="Special:SearchByProperty/Has-20subobject/MAKER-23http:-2F-2Fhymenopteragenome.org-2Fant_genomes-2F"
title="Special:SearchByProperty/Has-20subobject/MAKER-23http:-2F-2Fhymenopteragenome.org-2Fant genomes-2F">+</a></span></td>
</tr>
</tbody>
</table>

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

- <span id="ca-nstab-main"><a href="MAKER.1" accesskey="c"
  title="View the content page [c]">Page</a></span>
- <span id="ca-talk"><a
  href="http://gmod.org/mediawiki/index.php?title=Talk:MAKER&amp;action=edit&amp;redlink=1"
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

- <span id="t-whatlinkshere"><a href="Special:WhatLinksHere/MAKER" accesskey="j"
  title="A list of all wiki pages that link here [j]">What links here</a></span>
- <span id="t-recentchangeslinked"><a href="Special:RecentChangesLinked/MAKER" accesskey="k"
  title="Recent changes in pages linked from this page [k]">Related
  changes</a></span>
- <span id="t-specialpages"><a href="Special:SpecialPages" accesskey="q"
  title="A list of all special pages [q]">Special pages</a></span>
- <span id="t-print"><a
  href="http://gmod.org/mediawiki/index.php?title=MAKER&amp;printable=yes"
  rel="alternate" accesskey="p"
  title="Printable version of this page [p]">Printable version</a></span>
- <span id="t-permalink">[Permanent
  link](http://gmod.org/mediawiki/index.php?title=MAKER&oldid=25258 "Permanent link to this revision of the page")</span>
- <span id="t-info">[Page
  information](http://gmod.org/mediawiki/index.php?title=MAKER&action=info)</span>
- <span id="t-smwbrowselink"><a href="Special:Browse/MAKER" rel="smw-browse">Browse properties</a></span>
- <span id="t-pdf">[Print as
  PDF](http://gmod.org/mediawiki/index.php?title=Special:PdfPrint&page=MAKER)</span>

</div>

</div>

</div>

</div>

<div id="footer" role="contentinfo">

- <span id="footer-info-lastmod">Last updated at 21:53 on 2 February
  2014.</span>
- <span id="footer-info-viewcount">538,444 page views.</span>
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
- <span id="footer-poweredbyico">[<img
  src="../mediawiki/skins/common/images/poweredby_mediawiki_88x31.png"
  width="88" height="31" alt="Powered by MediaWiki" />](http://www.mediawiki.org/)
  [<img
  src="../mediawiki/extensions/SemanticMediaWiki/resources/images/smw_button.png"
  width="88" height="31" alt="Powered by Semantic MediaWiki" />](https://www.semantic-mediawiki.org/wiki/Semantic_MediaWiki)</span>

<div style="clear:both">

</div>

</div>
