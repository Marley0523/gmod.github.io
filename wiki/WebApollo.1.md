<div id="mw-page-base" class="noprint">

</div>

<div id="mw-head-base" class="noprint">

</div>

<div id="content" class="mw-body" role="main">

<span id="top"></span>

<div id="mw-js-message" style="display:none;">

</div>



# <span dir="auto">WebApollo</span>

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

  

------------------------------------------------------------------------

```
NOTE:  This document is provided for versions of Web Apollo 2014-04-03 and older. 
```

Newer documentation can be found at the
<a href="http://genomearchitect.org" class="external text"
rel="nofollow">Apollo Website</a> and on the
<a href="https://github.com/GMOD/Apollo/blob/master/README.md"
class="external text" rel="nofollow">README file on GitHub</a>. All
source and documentation is still found on
<a href="https://github.com/GMOD/Apollo" class="external text"
rel="nofollow">Github</a>.

------------------------------------------------------------------------

  

<div class="center">

<div class="floatnone">

<a href="File:WebApolloLogo.png" class="image"><img
src="../mediawiki/images/thumb/4/4a/WebApolloLogo.png/400px-WebApolloLogo.png"
srcset="../mediawiki/images/thumb/4/4a/WebApolloLogo.png/600px-WebApolloLogo.png 1.5x, ../mediawiki/images/thumb/4/4a/WebApolloLogo.png/800px-WebApolloLogo.png 2x"
width="400" height="111" alt="WebApollo logo" /></a>

</div>

</div>

<div class="componentBox">

<div class="compBoxHdr">

Status

</div>

- Mature release
- Development: active
- Support: active

  

<div class="floatleft">

<a href="http://opensource.org/" rel="nofollow"><img
src="../mediawiki/images/thumb/6/66/Osi_symbol.png/40px-Osi_symbol.png"
srcset="../mediawiki/images/thumb/6/66/Osi_symbol.png/60px-Osi_symbol.png 1.5x, ../mediawiki/images/thumb/6/66/Osi_symbol.png/80px-Osi_symbol.png 2x"
width="40" height="39" alt="{{{PAGENAME}}} is open source" /></a>

</div>

<div class="compBoxHdr">

Resources

</div>

- <a href="http://genomearchitect.org" class="external text"
  rel="nofollow">Home page</a>

<!-- -->

- <a href="http://genomearchitect.org/webapollo/releases/"
  class="external text" rel="nofollow">Download</a>

<!-- -->

- <a href="http://code.google.com/p/genomancer" class="external text"
  rel="nofollow">Source code</a>
- <a href="https://github.com/gmod/apollo" class="external text"
  rel="nofollow">Source code</a>

<!-- -->

- <a href="http://genomearchitect.org:8080/WebApolloDemo/"
  class="external text" rel="nofollow">Demo server</a>

<div class="compBoxHdr">

Interoperable Components

</div>

- - [JBrowse](JBrowse.1 "JBrowse")
- - [MAKER](MAKER.1 "MAKER")

  

</div>

<div id="toc" class="toc">

<div id="toctitle">

## Contents

</div>

- [<span class="tocnumber">1</span> <span class="toctext">About
  WebApollo</span>](#About_WebApollo)
- [<span class="tocnumber">2</span>
  <span class="toctext">Downloads</span>](#Downloads)
- [<span class="tocnumber">3</span> <span class="toctext">Using
  WebApollo</span>](#Using_WebApollo)
  - [<span class="tocnumber">3.1</span>
    <span class="toctext">Installation</span>](#Installation)
- [<span class="tocnumber">4</span>
  <span class="toctext">Documentation</span>](#Documentation)
- [<span class="tocnumber">5</span> <span class="toctext">Publications,
  Tutorials, and
  Presentations</span>](#Publications.2C_Tutorials.2C_and_Presentations)
  - [<span class="tocnumber">5.1</span>
    <span class="toctext">Publications on or mentioning
    WebApollo</span>](#Publications_on_or_mentioning_WebApollo)
  - [<span class="tocnumber">5.2</span>
    <span class="toctext">Tutorials</span>](#Tutorials)
  - [<span class="tocnumber">5.3</span>
    <span class="toctext">Presentations</span>](#Presentations)
- [<span class="tocnumber">6</span> <span class="toctext">Contacts and
  Mailing Lists</span>](#Contacts_and_Mailing_Lists)
- [<span class="tocnumber">7</span> <span class="toctext">More on
  WebApollo</span>](#More_on_WebApollo)

</div>

## <span id="About_WebApollo" class="mw-headline">About WebApollo</span>

WebApollo is a browser-based tool for visualization and editing of
sequence annotations. It is designed for distributed community
annotation efforts, where numerous people may be working on the same
sequences in geographically different locations; real-time updating
keeps all users in sync during the editing process.

The features of WebApollo include:

- History tracking, including browsing of an annotation's edit history
  and full undo/redo functions
- Real time updating: edits in one client are instantly pushed to all
  other clients
- Convenient management of user login, authentication, and edit
  permissions
- Two-stage curation process: edit within a temporary workspace, then
  publish to a curated database
- Ability to add comments, either chosen from a pre-defined set of
  comments or as freeform text.
- Ability to add dbxrefs \[database crossreferences\] -- e.g. for GO
  functional annotation
- Can set start of translation for a transcript or let server determine
  automatically
- Flagging of non-canonical splice sites in curated annotations
- Edge matching to selected feature: matching edges across annotations
  and evidence tracks are highlighted
- Option to color transcript CDS by reading frame
- Loading of data directly from GFF3, BigWig, and BAM files, both
  remotely and from user's local machine.
- Configurable heat map rendering of BigWig data
- Per-session track configuration to set annotation colors, height, and
  other properties
- Export of annotation tracks as GFF3 and optionally other formats
- Search by sequence residues using server-side interface to BLAT or
  other sequence search programs

The public demo can be accessed at:
<a href="http://genomearchitect.org/WebApolloDemo" class="external free"
rel="nofollow">http://genomearchitect.org/WebApolloDemo</a> (*Apis
mellifera* genome).

  
Visit the <a href="http://genomearchitect.org" class="external text"
rel="nofollow">WebApollo website</a>.

  

## <span id="Downloads" class="mw-headline">Downloads</span>

- <a href="http://genomearchitect.org/webapollo/releases/"
  class="external text" rel="nofollow">Download WebApollo</a>.

<!-- -->

- <a href="http://code.google.com/p/genomancer" class="external text"
  rel="nofollow">Trellis server source code</a>
- <a href="https://github.com/gmod/apollo" class="external text"
  rel="nofollow">Client and server source code</a>

## <span id="Using_WebApollo" class="mw-headline">Using WebApollo</span>

### <span id="Installation" class="mw-headline">Installation</span>

- [Server installation
  guide](WebApollo_Installation "WebApollo Installation")

## <span id="Documentation" class="mw-headline">Documentation</span>

- <a
  href="http://genomearchitect.org/webapollo/docs/webapollo_user_guide.pdf"
  class="external text" rel="nofollow">WebApollo User Guide (PDF)</a>
- <a href="http://apollo.berkeleybop.org/apollo_web/web_service_api.html"
  class="external text" rel="nofollow">Apollo Web service API</a>

## <span id="Publications.2C_Tutorials.2C_and_Presentations" class="mw-headline">Publications, Tutorials, and Presentations</span>

### <span id="Publications_on_or_mentioning_WebApollo" class="mw-headline">Publications on or mentioning WebApollo</span>

- Web Apollo: a web-based genomic annotation editing platform.
  <sup>[\[1\]](#cite_note-PMID:24000942-1)</sup>

### <span id="Tutorials" class="mw-headline">Tutorials</span>

<a href="WebApollo_Tutorial" class="mw-redirect"
title="WebApollo Tutorial">WebApollo Tutorial</a>  
taught as part of the [2013 GMOD Summer
School](2013_GMOD_Summer_School "2013 GMOD Summer School")

### <span id="Presentations" class="mw-headline">Presentations</span>

<table class="wikitable">
<colgroup>
<col style="width: 20%" />
<col style="width: 20%" />
<col style="width: 20%" />
<col style="width: 20%" />
<col style="width: 20%" />
</colgroup>
<thead>
<tr class="header">
<th>Date (YYYY-MM-DD)</th>
<th>Event</th>
<th>Title</th>
<th>Speaker/Authors</th>
<th>Abstract/Slides</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td>2013-01-12 - 2013-01-16</td>
<td><a href="http://www.intlpag.org/2013/" class="external text"
rel="nofollow">PAG 2013 (International Plant &amp; Animal Genome
XXI)</a></td>
<td>WebApollo: A Web-based Sequence Annotation Editor for Distributed
Community Annotation</td>
<td>Gregg Helt, Ed Lee, Robert Buels, Christopher Childers, Justin
Reese, Mónica Muñoz-Torres, Christine Elsik, Ian Holmes, and Suzanna
Lewis</td>
<td><a href="../mediawiki/images/e/ec/WebApollo_PAG_2013_Poster.pdf"
class="internal" title="WebApollo PAG 2013 Poster.pdf">Poster</a></td>
</tr>
<tr class="even">
<td>2012-08-25 - 2012-08-29</td>
<td><a href="WebApollo_Tutorial_2012"
title="WebApollo Tutorial 2012">WebApollo Tutorial for the 2012 GMOD
Summer School</a></td>
<td>WebApollo Tutorial</td>
<td>Ed Lee</td>
<td></td>
</tr>
<tr class="odd">
<td>2012-05-30 - 2012-06-02</td>
<td><a href="http://www.k-state.edu/agc/symp2012/" class="external text"
rel="nofollow">i5K Community Workshop &amp; Arthropod Genomics
Symposium</a></td>
<td>WebApollo Demo</td>
<td>Gregg Helt, Ed Lee, Monica Muñoz-Torres</td>
<td><a href="../mediawiki/images/7/72/WebApollo_Demo_i5K-AGS_2012.pdf"
class="internal"
title="WebApollo Demo i5K-AGS 2012.pdf">Tutorial</a><br />
<a
href="../mediawiki/images/e/ea/WebApollo_Arthropod_Genomics_2012_poster.pdf"
class="internal"
title="WebApollo Arthropod Genomics 2012 poster.pdf">Poster</a></td>
</tr>
<tr class="even">
<td>2012-04-02 - 2012-04-04</td>
<td><a href="http://pir.georgetown.edu/biocuration2012/"
class="external text" rel="nofollow">Biocuration 2012</a></td>
<td><em>WebApollo: A Web-Based Sequence Annotation Editor for
Distributed Community Annotation</em></td>
<td>Gregg Helt</td>
<td><a
href="../mediawiki/images/0/03/Biocuration-abstract-v1-shortened.pdf"
class="internal"
title="Biocuration-abstract-v1-shortened.pdf">Biocuration
abstract</a></td>
</tr>
<tr class="odd">
<td>2012-01-14 - 2012-01-18</td>
<td><a href="http://www.intl-pag.org/" class="external text"
rel="nofollow">PAG (Plant and Animal Genome) conference</a></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td>2011-11-13 - 2011-11-16</td>
<td><a href="http://www.entsoc.org/entomology2011" class="external text"
rel="nofollow">Entomological Society of America</a></td>
<td>WebApollo demo/tutorial</td>
<td>Gregg Helt, Ed Lee, Monica Muñoz-Torres</td>
<td><a href="../mediawiki/images/6/6b/WebApollo_at_ESA_Flyer.pdf"
class="internal" title="WebApollo at ESA Flyer.pdf">Flyer for
tutorial</a></td>
</tr>
<tr class="odd">
<td>2011-08-26</td>
<td>Workshop on Manual Annotation, Purdue University</td>
<td><em>Manual Curation of Automated Gene Models</em></td>
<td>Mónica Muñoz-Torres</td>
<td><a
href="../mediawiki/images/5/53/NGS_workshop_annotation_AP-&amp;-MMT.pdf"
class="internal"
title="NGS workshop annotation AP-&amp;-MMT.pdf">Slides</a></td>
</tr>
<tr class="even">
<td>2011-08-16 - 2011-08-20</td>
<td><a href="http://academy.nescent.org/wiki/Next-gen_sequencing"
class="external text" rel="nofollow">Next-gen sequencing: Data
acquisition, comparative genomics, design and analysis for population
genetics, systematics and development (Course, National Evolutionary
Synthesis Center (NESCent))</a></td>
<td>Talk: <em>Biocuration, Best Practices.</em><br />
Workshop: <em>Manual Curation of Automated Gene Models.</em></td>
<td>Mónica Muñoz-Torres</td>
<td><a href="../mediawiki/images/a/ab/NESCent-NGS-Biocuration-MMT.pdf"
class="internal" title="NESCent-NGS-Biocuration-MMT.pdf">T: Slides</a>
<a href="http://academy.nescent.org/wg/academy/images/7/76/Moni1.mp3"
class="external text" rel="nofollow">T: Audio</a><br />
<a
href="../mediawiki/images/5/53/NGS_workshop_annotation_AP-&amp;-MMT.pdf"
class="internal" title="NGS workshop annotation AP-&amp;-MMT.pdf">W:
Slides</a> <a
href="http://academy.nescent.org/wg/academy/images/e/e5/Moni2.mp3"
class="external text" rel="nofollow">W: Audio</a></td>
</tr>
<tr class="odd">
<td>2011-07-15</td>
<td><a href="http://www.open-bio.org/wiki/BOSC_2011"
class="external text" rel="nofollow">Bioinformatics Open Source
Conference (BOSC) 2011</a></td>
<td>'WebApollo: A web-based sequence annotation editor for community
annotation'</td>
<td>Nomi Harris</td>
<td><a href="../mediawiki/images/7/70/BOSC2011-abstract.pdf"
class="internal" title="BOSC2011-abstract.pdf">Abstract</a><br />
<a href="http://www.slideshare.net/bosc2011/webapollo-bosc2011"
class="external text" rel="nofollow">Slides</a></td>
</tr>
</tbody>
</table>

## <span id="Contacts_and_Mailing_Lists" class="mw-headline">Contacts and Mailing Lists</span>

|  |  |  |  |
|----|----|----|----|
|  | Mailing List Link | Description | Archive(s) |
| [Apollo](Apollo.1 "Apollo") and **WebApollo** | <a href="https://lists.lbl.gov/sympa/info/apollo" class="external text"
rel="nofollow">apollo</a> | [Apollo](Apollo.1 "Apollo") and **WebApollo** mailing list | <a href="http://dir.gmane.org/gmane.science.biology.gmod.apollo"
class="external text" rel="nofollow">Gmane</a> (2008/04-2010/10), <a href="http://gmod.827538.n3.nabble.com/Apollo-f815553.html"
class="external text" rel="nofollow">Nabble</a> (2010/05+) |
|  | <a href="https://lists.sourceforge.net/lists/listinfo/gmod-apollo-cmts"
class="external text" rel="nofollow">gmod-apollo-cmts</a> | [Apollo](Apollo.1 "Apollo") and **WebApollo** code updates. |  |

  

  

  

## <span id="More_on_WebApollo" class="mw-headline">More on WebApollo</span>

1.  <span id="cite_note-PMID:24000942"><span class="mw-cite-backlink">[↑](#cite_ref-PMID:24000942_0)</span>
    **Cite error: Invalid `<ref>` tag; no text was provided for refs
    named `PMID:24000942`**</span>

</div>

<div class="printfooter">

Retrieved from
"<http://gmod.org/mediawiki/index.php?title=WebApollo&oldid=26715>"

</div>

<div id="catlinks" class="catlinks">

<div id="mw-normal-catlinks" class="mw-normal-catlinks">

[Categories](Special:Categories "Special:Categories"):

- [GMOD Component](Category:GMOD_Component "Category:GMOD Component")
- <a
  href="http://gmod.org/mediawiki/index.php?title=Category:SemanticLink&amp;action=edit&amp;redlink=1"
  class="new"
  title="Category:SemanticLink (page does not exist)">SemanticLink</a>
- [Webapollo](Category:Webapollo "Category:Webapollo")
- [AJAX](Category:AJAX "Category:AJAX")
- [Community
  Annotation](Category:Community_Annotation "Category:Community Annotation")
- [Annotation](Category:Annotation "Category:Annotation")
- [GMOD Components](Category:GMOD_Components "Category:GMOD Components")

</div>

</div>

<div id="mw-data-after-content">

<div class="smwfact">

<span class="smwfactboxhead">Facts about
"<span class="swmfactboxheadbrowse">[WebApollo](Special%3ABrowse/WebApollo "Special%3ABrowse/WebApollo")</span>"</span><span class="smwrdflink"><span class="rdflink">[RDF
feed](http://gmod.org/wiki/Special:ExportRDF/WebApollo "Special:ExportRDF/WebApollo")</span></span>

<table class="smwfacttable">
<colgroup>
<col style="width: 50%" />
<col style="width: 50%" />
</colgroup>
<tbody>
<tr class="odd row-odd">
<td class="smwpropname"><a href="Property:Available_on_platform"
title="Property:Available on platform">Available on platform</a></td>
<td class="smwprops">web <span class="smwsearch"><a
href="Special%3ASearchByProperty/Available-20on-20platform/web"
title="Special%3ASearchByProperty/Available-20on-20platform/web">+</a></span></td>
</tr>
<tr class="even row-even">
<td class="smwpropname"><a href="Property:Has_URL"
title="Property:Has URL">Has URL</a></td>
<td class="smwprops"><a href="http://genomearchitect.org"
class="external free" rel="nofollow">http://genomearchitect.org</a>
<span class="smwsearch"><a
href="Special%3ASearchByProperty/Has-20URL/http:-2F-2Fgenomearchitect.org"
title="Special%3ASearchByProperty/Has-20URL/http:-2F-2Fgenomearchitect.org">+</a></span>,
<a href="https://github.com/gmod/apollo" class="external free"
rel="nofollow">https://github.com/gmod/apollo</a> <span
class="smwsearch"><a
href="Special%3ASearchByProperty/Has-20URL/https:-2F-2Fgithub.com-2Fgmod-2Fapollo"
title="Special%3ASearchByProperty/Has-20URL/https:-2F-2Fgithub.com-2Fgmod-2Fapollo">+</a></span>,
<a href="http://code.google.com/p/genomancer" class="external free"
rel="nofollow">http://code.google.com/p/genomancer</a> <span
class="smwsearch"><a
href="Special%3ASearchByProperty/Has-20URL/http:-2F-2Fcode.google.com-2Fp-2Fgenomancer"
title="Special%3ASearchByProperty/Has-20URL/http:-2F-2Fcode.google.com-2Fp-2Fgenomancer">+</a></span>,
<a href="http://genomearchitect.org:8080/WebApolloDemo/"
class="external free"
rel="nofollow">http://genomearchitect.org:8080/WebApolloDemo/</a> <span
class="smwsearch"><a
href="Special%3ASearchByProperty/Has-20URL/http:-2F-2Fgenomearchitect.org:8080-2FWebApolloDemo-2F"
title="Special%3ASearchByProperty/Has-20URL/http:-2F-2Fgenomearchitect.org:8080-2FWebApolloDemo-2F">+</a></span>
and <a href="http://genomearchitect.org/webapollo/releases/"
class="external free"
rel="nofollow">http://genomearchitect.org/webapollo/releases/</a> <span
class="smwsearch"><a
href="Special%3ASearchByProperty/Has-20URL/http:-2F-2Fgenomearchitect.org-2Fwebapollo-2Freleases-2F"
title="Special%3ASearchByProperty/Has-20URL/http:-2F-2Fgenomearchitect.org-2Fwebapollo-2Freleases-2F">+</a></span></td>
</tr>
<tr class="odd row-odd">
<td class="smwpropname"><a href="Property:Has_description"
title="Property:Has description">Has description</a></td>
<td class="smwprops">WebApollo is a browser-based tool for visu<span
class="smw-highlighter" data-type="2" data-state="persistent"
data-title="Information"><span class="smwtext"> … </span><span
class="smwttcontent">WebApollo is a browser-based tool for visualization
and editing of sequence annotations. It is designed for distributed
community annotation efforts, where numerous people may be working on
the same sequences in geographically different locations; real-time
updating keeps all users in sync during the editing process.
</span></span>
<p>The features of WebApollo include:</p>
<ul>
<li>History tracking, including browsing of an annotation's edit history
and full undo/redo functions</li>
<li>Real time updating: edits in one client are instantly pushed to all
other clients</li>
<li>Convenient management of user login, authentication, and edit
permissions</li>
<li>Two-stage curation process: edit within a temporary workspace, then
publish to a curated database</li>
<li>Ability to add comments, either chosen from a pre-defined set of
comments or as freeform text.</li>
<li>Ability to add dbxrefs [database crossreferences] -- e.g. for GO
functional annotation</li>
<li>Can set start of translation for a transcript or let server
determine automatically</li>
<li>Flagging of non-canonical splice sites in curated annotations</li>
<li>Edge matching to selected feature: matching edges across annotations
and evidence tracks are highlighted</li>
<li>Option to color transcript CDS by reading frame</li>
<li>Loading of data directly from GFF3, BigWig, and BAM files, both
remotely and from user's local machine.</li>
<li>Configurable heat map rendering of BigWig data</li>
<li>Per-session track configuration to set annotation colors, height,
and other properties</li>
<li>Export of annotation tracks as GFF3 and optionally other
formats</li>
<li>Search by sequence residues using server-side interface to BLAT or
other sequence search programs</li>
</ul>
The public demo can be accessed at: <a
href="http://genomearchitect.org/WebApolloDemo" class="external free"
rel="nofollow">http://genomearchitect.org/WebApolloDemo</a> (<em>Apis
mellifera</em> genome).ebApolloDemo] (<em>Apis mellifera</em> genome).
<span class="smwsearch"><a
href="http://gmod.org/mediawiki/index.php?title=Special%3ASearchByProperty&amp;x=Has-20description%2FWebApollo-20is-20a-20browser-2Dbased-20tool-20for-20visualization-20and-20editing-20of-20sequence-20annotations.-20It-20is-20designed-20for-20distributed-20community-20annotation-20efforts%2C-20where-20numerous-20people-20may-20be-20working-20on-20the-20same-20sequences-20in-20geographically-20different-20locations%3B-20real-2Dtime-20updating-20keeps-20all-20users-20in-20sync-20during-20the-20editing-20process.-0A-0AThe-20features-20of-20WebApollo-20include%3A-0A%2AHistory-20tracking%2C-20including-20browsing-20of-20an-20annotation%27s-20edit-20history-20and-20full-20undo-2Fredo-20functions-0A%2AReal-20time-20updating%3A-20edits-20in-20one-20client-20are-20instantly-20pushed-20to-20all-20other-20clients-0A%2AConvenient-20management-20of-20user-20login%2C-20authentication%2C-20and-20edit-20permissions-0A%2ATwo-2Dstage-20curation-20process%3A-20edit-20within-20a-20temporary-20workspace%2C-20then-20publish-20to-20a-20curated-20database-0A%2AAbility-20to-20add-20comments%2C-20either-20chosen-20from-20a-20pre-2Ddefined-20set-20of-20comments-20or-20as-20freeform-20text.-0A%2AAbility-20to-20add-20dbxrefs-20-5Bdatabase-20crossreferences-5D-20-2D-2D-20e.g.-20for-20GO-20functional-20annotation-0A%2ACan-20set-20start-20of-20translation-20for-20a-20transcript-20or-20let-20server-20determine-20automatically-0A%2AFlagging-20of-20non-2Dcanonical-20splice-20sites-20in-20curated-20annotations-0A%2AEdge-20matching-20to-20selected-20feature%3A-20matching-20edges-20across-20annotations-20and-20evidence-20tracks-20are-20highlighted-0A%2AOption-20to-20color-20transcript-20CDS-20by-20reading-20frame-0A%2ALoading-20of-20data-20directly-20from-20GFF3%2C-20BigWig%2C-20and-20BAM-20files%2C-20both-20remotely-20and-20from-20user%27s-20local-20machine.-0A%2AConfigurable-20heat-20map-20rendering-20of-20BigWig-20data-0A%2APer-2Dsession-20track-20configuration-20to-20set-20annotation-20colors%2C-20height%2C-20and-20other-20properties-0A%2AExport-20of-20annotation-20tracks-20as-20GFF3-20and-20optionally-20other-20formats-0A%2ASearch-20by-20sequence-20residues-20using-20server-2Dside-20interface-20to-20BLAT-20or-20other-20sequence-20search-20programs-0A-0AThe-20public-20demo-20can-20be-20accessed-20at%3A-20-5Bhttp%3A-2F-2Fgenomearchitect.org-2FWebApolloDemo-20http%3A-2F-2Fgenomearchitect.org-2FWebApolloDemo-5D-20%28-27-27Apis-20mellifera-27-27-20genome%29."
class="external text" rel="nofollow">+</a></span></td>
</tr>
<tr class="even row-even">
<td class="smwpropname"><a href="Property:Has_development_status"
title="Property:Has development status">Has development status</a></td>
<td class="smwprops">active <span class="smwsearch"><a
href="Special%3ASearchByProperty/Has-20development-20status/active"
title="Special%3ASearchByProperty/Has-20development-20status/active">+</a></span></td>
</tr>
<tr class="odd row-odd">
<td class="smwpropname"><a href="Property:Has_input_format"
title="Property:Has input format">Has input format</a></td>
<td class="smwprops">GFF3 <span class="smwsearch"><a
href="Special%3ASearchByProperty/Has-20input-20format/GFF3"
title="Special%3ASearchByProperty/Has-20input-20format/GFF3">+</a></span>,
BigWig <span class="smwsearch"><a
href="Special%3ASearchByProperty/Has-20input-20format/BigWig"
title="Special%3ASearchByProperty/Has-20input-20format/BigWig">+</a></span>
and BAM <span class="smwsearch"><a
href="Special%3ASearchByProperty/Has-20input-20format/BAM"
title="Special%3ASearchByProperty/Has-20input-20format/BAM">+</a></span></td>
</tr>
<tr class="even row-even">
<td class="smwpropname"><a href="Property:Has_logo"
title="Property:Has logo">Has logo</a></td>
<td class="smwprops">WebApolloLogo.png <span class="smwsearch"><a
href="Special%3ASearchByProperty/Has-20logo/WebApolloLogo.png"
title="Special%3ASearchByProperty/Has-20logo/WebApolloLogo.png">+</a></span></td>
</tr>
<tr class="odd row-odd">
<td class="smwpropname"><a href="Property:Has_output_format"
title="Property:Has output format">Has output format</a></td>
<td class="smwprops">GFF3 <span class="smwsearch"><a
href="Special%3ASearchByProperty/Has-20output-20format/GFF3"
title="Special%3ASearchByProperty/Has-20output-20format/GFF3">+</a></span>
and others <span class="smwsearch"><a
href="Special%3ASearchByProperty/Has-20output-20format/others"
title="Special%3ASearchByProperty/Has-20output-20format/others">+</a></span></td>
</tr>
<tr class="even row-even">
<td class="smwpropname"><a href="Property:Has_software_maturity_status"
title="Property:Has software maturity status">Has software maturity
status</a></td>
<td class="smwprops">mature <span class="smwsearch"><a
href="Special%3ASearchByProperty/Has-20software-20maturity-20status/mature"
title="Special%3ASearchByProperty/Has-20software-20maturity-20status/mature">+</a></span></td>
</tr>
<tr class="odd row-odd">
<td class="smwpropname"><a href="Property:Has_support_status"
title="Property:Has support status">Has support status</a></td>
<td class="smwprops">active <span class="smwsearch"><a
href="Special%3ASearchByProperty/Has-20support-20status/active"
title="Special%3ASearchByProperty/Has-20support-20status/active">+</a></span></td>
</tr>
<tr class="even row-even">
<td class="smwpropname"><a href="Property:Has_title"
title="Property:Has title">Has title</a></td>
<td class="smwprops">Client and server <span class="smwsearch"><a
href="Special%3ASearchByProperty/Has-20title/Client-20and-20server"
title="Special%3ASearchByProperty/Has-20title/Client-20and-20server">+</a></span>,
Trellis server <span class="smwsearch"><a
href="Special%3ASearchByProperty/Has-20title/Trellis-20server"
title="Special%3ASearchByProperty/Has-20title/Trellis-20server">+</a></span>,
WebApollo demo - Bos taurus genome <span class="smwsearch"><a
href="Special%3ASearchByProperty/Has-20title/WebApollo-20demo-20-2D-20Bos-20taurus-20genome"
title="Special%3ASearchByProperty/Has-20title/WebApollo-20demo-20-2D-20Bos-20taurus-20genome">+</a></span>
and WebApollo download <span class="smwsearch"><a
href="Special%3ASearchByProperty/Has-20title/WebApollo-20download"
title="Special%3ASearchByProperty/Has-20title/WebApollo-20download">+</a></span></td>
</tr>
<tr class="odd row-odd">
<td class="smwpropname"><a href="Property:Has_topic"
title="Property:Has topic">Has topic</a></td>
<td class="smwprops"><strong>WebApollo</strong> <span
class="smwsearch"><a
href="Special%3ASearchByProperty/Has-20topic/WebApollo"
title="Special%3ASearchByProperty/Has-20topic/WebApollo">+</a></span></td>
</tr>
<tr class="even row-even">
<td class="smwpropname"><a href="Property:Interaction_type"
title="Property:Interaction type">Interaction type</a></td>
<td class="smwprops">receives input from <span class="smwsearch"><a
href="Special%3ASearchByProperty/Interaction-20type/receives-20input-20from"
title="Special%3ASearchByProperty/Interaction-20type/receives-20input-20from">+</a></span>
and is based on <span class="smwsearch"><a
href="Special%3ASearchByProperty/Interaction-20type/is-20based-20on"
title="Special%3ASearchByProperty/Interaction-20type/is-20based-20on">+</a></span></td>
</tr>
<tr class="odd row-odd">
<td class="smwpropname"><a
href="http://gmod.org/mediawiki/index.php?title=Property:Interactor&amp;action=edit&amp;redlink=1"
class="new"
title="Property:Interactor (page does not exist)">Interactor</a></td>
<td class="smwprops">WebApollo <span class="smwsearch"><a
href="Special%3ASearchByProperty/Interactor/WebApollo"
title="Special%3ASearchByProperty/Interactor/WebApollo">+</a></span></td>
</tr>
<tr class="even row-even">
<td class="smwpropname"><a href="Property:Interacts_with"
title="Property:Interacts with">Interacts with</a></td>
<td class="smwprops"><a href="MAKER.1" title="MAKER">MAKER</a> <span
class="smwsearch"><a
href="Special%3ASearchByProperty/Interacts-20with/MAKER"
title="Special%3ASearchByProperty/Interacts-20with/MAKER">+</a></span> and
<a href="JBrowse.1" title="JBrowse">JBrowse</a> <span
class="smwsearch"><a
href="Special%3ASearchByProperty/Interacts-20with/JBrowse"
title="Special%3ASearchByProperty/Interacts-20with/JBrowse">+</a></span></td>
</tr>
<tr class="odd row-odd">
<td class="smwpropname"><a href="Property:Is_open_source"
title="Property:Is open source">Is open source</a></td>
<td class="smwprops">Yes <span class="smwsearch"><a
href="Special%3ASearchByProperty/Is-20open-20source/Yes"
title="Special%3ASearchByProperty/Is-20open-20source/Yes">+</a></span></td>
</tr>
<tr class="even row-even">
<td class="smwpropname"><a href="Property:Link_type"
title="Property:Link type">Link type</a></td>
<td class="smwprops">website <span class="smwsearch"><a
href="Special%3ASearchByProperty/Link-20type/website"
title="Special%3ASearchByProperty/Link-20type/website">+</a></span>,
source code <span class="smwsearch"><a
href="Special%3ASearchByProperty/Link-20type/source-20code"
title="Special%3ASearchByProperty/Link-20type/source-20code">+</a></span>,
demo server <span class="smwsearch"><a
href="Special%3ASearchByProperty/Link-20type/demo-20server"
title="Special%3ASearchByProperty/Link-20type/demo-20server">+</a></span>
and download <span class="smwsearch"><a
href="Special%3ASearchByProperty/Link-20type/download"
title="Special%3ASearchByProperty/Link-20type/download">+</a></span></td>
</tr>
<tr class="odd row-odd">
<td class="smwpropname"><a href="Property:Release_date"
title="Property:Release date">Release date</a></td>
<td class="smwprops">2012 <span class="smwsearch"><a
href="Special%3ASearchByProperty/Release-20date/2012"
title="Special%3ASearchByProperty/Release-20date/2012">+</a></span></td>
</tr>
<tr class="even row-even">
<td class="smwpropname"><a
href="Property:Tool_functionality_or_classification"
title="Property:Tool functionality or classification">Tool functionality or
classification</a></td>
<td class="smwprops">Community annotation <span class="smwsearch"><a
href="Special%3ASearchByProperty/Tool-20functionality-20or-20classification/Community-20annotation"
title="Special%3ASearchByProperty/Tool-20functionality-20or-20classification/Community-20annotation">+</a></span>
and Sequence annotation <span class="smwsearch"><a
href="Special%3ASearchByProperty/Tool-20functionality-20or-20classification/Sequence-20annotation"
title="Special%3ASearchByProperty/Tool-20functionality-20or-20classification/Sequence-20annotation">+</a></span></td>
</tr>
<tr class="odd row-odd">
<td class="smwpropname"><a href="Property:Written_in_language"
title="Property:Written in language">Written in language</a></td>
<td class="smwprops">Javascript <span class="smwsearch"><a
href="Special%3ASearchByProperty/Written-20in-20language/Javascript"
title="Special%3ASearchByProperty/Written-20in-20language/Javascript">+</a></span>
and Java <span class="smwsearch"><a
href="Special%3ASearchByProperty/Written-20in-20language/Java"
title="Special%3ASearchByProperty/Written-20in-20language/Java">+</a></span></td>
</tr>
<tr class="even row-even">
<td class="smwspecname"><span class="smw-highlighter" data-type="1"
data-state="inline" data-title="Property"><span class="smwbuiltin"><a
href="Property:Has_subobject" title="Property:Has subobject">Has
subobject</a></span><span class="smwttcontent">This property is a
special property in this wiki.</span></span></td>
<td class="smwspecs"><a
href="WebApollo.1#http:.2F.2Fgenomearchitect.org"
title="WebApollo">WebApollo#http://genomearchitect.org</a> <span
class="smwsearch"><a
href="Special%3ASearchByProperty/Has-20subobject/WebApollo-23http:-2F-2Fgenomearchitect.org"
title="Special%3ASearchByProperty/Has-20subobject/WebApollo-23http:-2F-2Fgenomearchitect.org">+</a></span>,
<a href="WebApollo.1#https:.2F.2Fgithub.com.2Fgmod.2Fapollo"
title="WebApollo">WebApollo#https://github.com/gmod/apollo</a> <span
class="smwsearch"><a
href="Special%3ASearchByProperty/Has-20subobject/WebApollo-23https:-2F-2Fgithub.com-2Fgmod-2Fapollo"
title="Special%3ASearchByProperty/Has-20subobject/WebApollo-23https:-2F-2Fgithub.com-2Fgmod-2Fapollo">+</a></span>,
<a href="WebApollo.1#http:.2F.2Fcode.google.com.2Fp.2Fgenomancer"
title="WebApollo">WebApollo#http://code.google.com/p/genomancer</a>
<span class="smwsearch"><a
href="Special%3ASearchByProperty/Has-20subobject/WebApollo-23http:-2F-2Fcode.google.com-2Fp-2Fgenomancer"
title="Special%3ASearchByProperty/Has-20subobject/WebApollo-23http:-2F-2Fcode.google.com-2Fp-2Fgenomancer">+</a></span>,
<a
href="WebApollo.1#http:.2F.2Fgenomearchitect.org:8080.2FWebApolloDemo.2F"
title="WebApollo">WebApollo#http://genomearchitect.org:8080/WebApolloDemo/</a>
<span class="smwsearch"><a
href="Special%3ASearchByProperty/Has-20subobject/WebApollo-23http:-2F-2Fgenomearchitect.org:8080-2FWebApolloDemo-2F"
title="Special%3ASearchByProperty/Has-20subobject/WebApollo-23http:-2F-2Fgenomearchitect.org:8080-2FWebApolloDemo-2F">+</a></span>,
<a
href="WebApollo.1#http:.2F.2Fgenomearchitect.org.2Fwebapollo.2Freleases.2F"
title="WebApollo">WebApollo#http://genomearchitect.org/webapollo/releases/</a>
<span class="smwsearch"><a
href="Special%3ASearchByProperty/Has-20subobject/WebApollo-23http:-2F-2Fgenomearchitect.org-2Fwebapollo-2Freleases-2F"
title="Special%3ASearchByProperty/Has-20subobject/WebApollo-23http:-2F-2Fgenomearchitect.org-2Fwebapollo-2Freleases-2F">+</a></span>,
<a href="WebApollo.1#_0d2bc0e8d059cba6cefd439a084fc7c8"
title="WebApollo">WebApollo</a> <span class="smwsearch"><a
href="Special%3ASearchByProperty/Has-20subobject/WebApollo-23_0d2bc0e8d059cba6cefd439a084fc7c8"
title="Special%3ASearchByProperty/Has-20subobject/WebApollo-23 0d2bc0e8d059cba6cefd439a084fc7c8">+</a></span>
and <a href="WebApollo.1#_e25e09b3c3c15a82835f7fa1b510fe42"
title="WebApollo">WebApollo</a> <span class="smwsearch"><a
href="Special%3ASearchByProperty/Has-20subobject/WebApollo-23_e25e09b3c3c15a82835f7fa1b510fe42"
title="Special%3ASearchByProperty/Has-20subobject/WebApollo-23 e25e09b3c3c15a82835f7fa1b510fe42">+</a></span></td>
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


- <span id="ca-talk"><a
  href="http://gmod.org/mediawiki/index.php?title=Talk:WebApollo&amp;action=edit&amp;redlink=1"
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


- <span id="t-smwbrowselink"><a href="Special%3ABrowse/WebApollo" rel="smw-browse">Browse
  properties</a></span>


</div>

</div>

</div>

</div>

<div id="footer" role="contentinfo">

- <span id="footer-info-lastmod">Last updated at 20:37 on 6 April
  2015.</span>
<!-- - <span id="footer-info-viewcount">508,306 page views.</span> -->
- <span id="footer-info-copyright">Content is available under
  <a href="http://www.gnu.org/licenses/fdl-1.3.html" class="external"
  rel="nofollow">a GNU Free Documentation License</a> unless otherwise
  noted.</span>

<!-- -->

- <span id="footer-places-about">[About
  GMOD](GMOD:About "GMOD:About")</span>

<!-- -->






</div>
