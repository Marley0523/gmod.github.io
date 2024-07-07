



<span id="top"></span>




# <span dir="auto">WebApollo2</span>










<a href="File:WebApolloLogo.png" class="image"><img
src="https://raw.githubusercontent.com/GMOD/gmod.github.io/main/mediawiki/images/thumb/4/4a/WebApolloLogo.png/400px-WebApolloLogo.png"
srcset="https://raw.githubusercontent.com/GMOD/gmod.github.io/main/mediawiki/images/thumb/4/4a/WebApolloLogo.png/600px-WebApolloLogo.png 1.5x, https://raw.githubusercontent.com/GMOD/gmod.github.io/main/mediawiki/images/thumb/4/4a/WebApolloLogo.png/800px-WebApolloLogo.png 2x"
width="400" height="111" alt="WebApollo2 logo" /></a>



Status



- Mature release
- Development: active
- Support: active

  



<a href="http://opensource.org/" rel="nofollow"><img
src="https://raw.githubusercontent.com/GMOD/gmod.github.io/main/mediawiki/images/thumb/6/66/Osi_symbol.png/40px-Osi_symbol.png"
srcset="https://raw.githubusercontent.com/GMOD/gmod.github.io/main/mediawiki/images/thumb/6/66/Osi_symbol.png/60px-Osi_symbol.png 1.5x, https://raw.githubusercontent.com/GMOD/gmod.github.io/main/mediawiki/images/thumb/6/66/Osi_symbol.png/80px-Osi_symbol.png 2x"
width="40" height="39" alt="} is open source" /></a>


Resources



- <a href="http://genomearchitect.org" class="external text"
  rel="nofollow">Home page</a>

<!-- -->

- <a href="https://github.com/GMOD/Apollo/releases" class="external text"
  rel="nofollow">Download</a>

<!-- -->

- <a href="https://github.com/gmod/apollo" class="external text"
  rel="nofollow">Source code</a>

<!-- -->

- <a href="http://icebox.lbl.gov/Apollo2/annotator/index"
  class="external text" rel="nofollow">Demo server</a>



Interoperable Components



- - [MAKER](MAKER.1 "MAKER")
- - [JBrowse](JBrowse.1 "JBrowse")

  




## Contents



- [<span class="tocnumber">1</span> <span class="toctext">About
  WebApollo2</span>](#About_WebApollo2)
- [<span class="tocnumber">2</span>
  <span class="toctext">Downloads</span>](#Downloads)
- [<span class="tocnumber">3</span> <span class="toctext">Using
  WebApollo2</span>](#Using_WebApollo2)
  - [<span class="tocnumber">3.1</span>
    <span class="toctext">Installation</span>](#Installation)
  - [<span class="tocnumber">3.2</span>
    <span class="toctext">Configuration</span>](#Configuration)
- [<span class="tocnumber">4</span>
  <span class="toctext">Documentation</span>](#Documentation)
- [<span class="tocnumber">5</span> <span class="toctext">Publications,
  Tutorials, and
  Presentations</span>](#Publications.2C_Tutorials.2C_and_Presentations)
  - [<span class="tocnumber">5.1</span>
    <span class="toctext">Publications on or mentioning
    WebApollo2</span>](#Publications_on_or_mentioning_WebApollo2)
- [<span class="tocnumber">6</span> <span class="toctext">Contacts and
  Mailing Lists</span>](#Contacts_and_Mailing_Lists)
- [<span class="tocnumber">7</span> <span class="toctext">WebApollo2
  Development</span>](#WebApollo2_Development)
  - [<span class="tocnumber">7.1</span>
    <span class="toctext">Development team</span>](#Development_team)
- [<span class="tocnumber">8</span> <span class="toctext">More on
  WebApollo2</span>](#More_on_WebApollo2)



## <span id="About_WebApollo2" class="mw-headline">About WebApollo2</span>

WebApollo2 is a browser-based tool for visualization and editing of
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
rel="nofollow">WebApollo2 website</a>.

  

## <span id="Downloads" class="mw-headline">Downloads</span>

- <a href="https://github.com/GMOD/Apollo/releases" class="external text"
  rel="nofollow">Download WebApollo2</a>.

<!-- -->

- <a href="https://github.com/gmod/apollo" class="external text"
  rel="nofollow">Client and server source code</a>

## <span id="Using_WebApollo2" class="mw-headline">Using WebApollo2</span>

### <span id="Installation" class="mw-headline">Installation</span>

- <a href="http://webapollo.readthedocs.org/en/latest/Apollo2Build.html"
  class="external text" rel="nofollow">Installation</a>

### <span id="Configuration" class="mw-headline">Configuration</span>

- <a href="http://webapollo.readthedocs.org/en/latest/Configure.html"
  class="external text" rel="nofollow">Apollo Configuration</a>

## <span id="Documentation" class="mw-headline">Documentation</span>

- <a href="http://webapollo.readthedocs.org/en/latest/"
  class="external text" rel="nofollow">WebApollo Documentation</a>

## <span id="Publications.2C_Tutorials.2C_and_Presentations" class="mw-headline">Publications, Tutorials, and Presentations</span>

### <span id="Publications_on_or_mentioning_WebApollo2" class="mw-headline">Publications on or mentioning WebApollo2</span>

- Web Apollo: a web-based genomic annotation editing platform.
  <sup>[\[1\]](#cite_note-PMID:24000942-1)</sup>

  

## <span id="Contacts_and_Mailing_Lists" class="mw-headline">Contacts and Mailing Lists</span>

|  |  |  |  |
|----|----|----|----|
|  | Mailing List Link | Description | Archive(s) |
| [Apollo](Apollo.1 "Apollo") and [WebApollo](WebApollo.1 "WebApollo") | <a href="https://lists.lbl.gov/sympa/info/apollo" class="external text"
rel="nofollow">apollo</a> | [Apollo](Apollo.1 "Apollo") and [WebApollo](WebApollo.1 "WebApollo") mailing list | <a href="http://dir.gmane.org/gmane.science.biology.gmod.apollo"
class="external text" rel="nofollow">Gmane</a> (2008/04-2010/10), <a href="http://gmod.827538.n3.nabble.com/Apollo-f815553.html"
class="external text" rel="nofollow">Nabble</a> (2010/05+) |
|  | <a href="https://lists.sourceforge.net/lists/listinfo/gmod-apollo-cmts"
class="external text" rel="nofollow">gmod-apollo-cmts</a> | [Apollo](Apollo.1 "Apollo") and [WebApollo](WebApollo.1 "WebApollo") code updates. |  |

  

## <span id="WebApollo2_Development" class="mw-headline">WebApollo2 Development</span>

### <span id="Development_team" class="mw-headline">Development team</span>

active

  

## <span id="More_on_WebApollo2" class="mw-headline">More on WebApollo2</span>

1.  <span id="cite_note-PMID:24000942"><span class="mw-cite-backlink">[↑](#cite_ref-PMID:24000942_0)</span>
    **Cite error: Invalid `<ref>` tag; no text was provided for refs
    named `PMID:24000942`**</span>




[Categories](Special%3ACategories "Special%3ACategories"):

- [GMOD Component](Category%3AGMOD_Component "Category%3AGMOD Component")
- [GMOD Components](Category%3AGMOD_Components "Category%3AGMOD Components")
- [Community
  Annotation](Category%3ACommunity_Annotation "Category%3ACommunity Annotation")
- <a
  href="http://gmod.org/mediawiki/index.php?title=Category%3ACloud&amp;action=edit&amp;redlink=1"
  class="new" title="Category%3ACloud (page does not exist)">Cloud</a>
- [Chado](Category%3AChado "Category%3AChado")
- [Apollo](Category%3AApollo "Category%3AApollo")
- [Annotation](Category%3AAnnotation "Category%3AAnnotation")
- <a
  href="http://gmod.org/mediawiki/index.php?title=Category%3ASemanticLink&amp;action=edit&amp;redlink=1"
  class="new"
  title="Category%3ASemanticLink (page does not exist)">SemanticLink</a>



<span class="smwfactboxhead">Facts about
"<span class="swmfactboxheadbrowse">[WebApollo2](Special%3ABrowse/WebApollo2 "Special%3ABrowse/WebApollo2")</span>"</span><span class="smwrdflink"><span class="rdflink">[RDF
feed](http://gmod.org/wiki/Special:ExportRDF/WebApollo2 "Special:ExportRDF/WebApollo2")</span></span>

<table class="smwfacttable">
<colgroup>
<col style="width: 50%" />
<col style="width: 50%" />
</colgroup>
<tbody>
<tr class="odd row-odd">
<td class="smwpropname"><a href="Property%3AAvailable_on_platform"
title="Property:Available on platform">Available on platform</a></td>
<td class="smwprops">web <span class="smwsearch"><a
href="Special%3ASearchByProperty/Available-20on-20platform/web"
title="Special%3ASearchByProperty/Available-20on-20platform/web">+</a></span></td>
</tr>
<tr class="even row-even">
<td class="smwpropname"><a href="Property%3AHas_URL"
title="Property:Has URL">Has URL</a></td>
<td class="smwprops"><a href="http://genomearchitect.org"
class="external free" rel="nofollow">http://genomearchitect.org</a>
<span class="smwsearch"><a
href="Special%3ASearchByProperty/Has-20URL/http%3A-2F-2Fgenomearchitect.org"
title="Special%3ASearchByProperty/Has-20URL/http%3A-2F-2Fgenomearchitect.org">+</a></span>,
<a href="https://github.com/gmod/apollo" class="external free"
rel="nofollow">https://github.com/gmod/apollo</a> <span
class="smwsearch"><a
href="Special%3ASearchByProperty/Has-20URL/https%3A-2F-2Fgithub.com-2Fgmod-2Fapollo"
title="Special%3ASearchByProperty/Has-20URL/https%3A-2F-2Fgithub.com-2Fgmod-2Fapollo">+</a></span>,
<a href="http://icebox.lbl.gov/Apollo2/annotator/index"
class="external free"
rel="nofollow">http://icebox.lbl.gov/Apollo2/annotator/index</a> <span
class="smwsearch"><a
href="Special%3ASearchByProperty/Has-20URL/http%3A-2F-2Ficebox.lbl.gov-2FApollo2-2Fannotator-2Findex"
title="Special%3ASearchByProperty/Has-20URL/http%3A-2F-2Ficebox.lbl.gov-2FApollo2-2Fannotator-2Findex">+</a></span>
and <a href="https://github.com/GMOD/Apollo/releases"
class="external free"
rel="nofollow">https://github.com/GMOD/Apollo/releases</a> <span
class="smwsearch"><a
href="Special%3ASearchByProperty/Has-20URL/https%3A-2F-2Fgithub.com-2FGMOD-2FApollo-2Freleases"
title="Special%3ASearchByProperty/Has-20URL/https%3A-2F-2Fgithub.com-2FGMOD-2FApollo-2Freleases">+</a></span></td>
</tr>
<tr class="odd row-odd">
<td class="smwpropname"><a href="Property%3AHas_description"
title="Property:Has description">Has description</a></td>
<td class="smwprops">WebApollo2 is a browser-based tool for vis<span
class="smw-highlighter" data-type="2" data-state="persistent"
data-title="Information"><span class="smwtext"> … </span><span
class="smwttcontent">WebApollo2 is a browser-based tool for
visualization and editing of sequence annotations. It is designed for
distributed community annotation efforts, where numerous people may be
working on the same sequences in geographically different locations;
real-time updating keeps all users in sync during the editing process.
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
href="http://gmod.org/mediawiki/index.php?title=Special%3ASearchByProperty&amp;x=Has-20description%2FWebApollo2-20is-20a-20browser-2Dbased-20tool-20for-20visualization-20and-20editing-20of-20sequence-20annotations.-20It-20is-20designed-20for-20distributed-20community-20annotation-20efforts%2C-20where-20numerous-20people-20may-20be-20working-20on-20the-20same-20sequences-20in-20geographically-20different-20locations%3B-20real-2Dtime-20updating-20keeps-20all-20users-20in-20sync-20during-20the-20editing-20process.-0A-0AThe-20features-20of-20WebApollo-20include%3A-0A-0A%2AHistory-20tracking%2C-20including-20browsing-20of-20an-20annotation%27s-20edit-20history-20and-20full-20undo-2Fredo-20functions-0A%2AReal-20time-20updating%3A-20edits-20in-20one-20client-20are-20instantly-20pushed-20to-20all-20other-20clients-0A%2AConvenient-20management-20of-20user-20login%2C-20authentication%2C-20and-20edit-20permissions-0A%2ATwo-2Dstage-20curation-20process%3A-20edit-20within-20a-20temporary-20workspace%2C-20then-20publish-20to-20a-20curated-20database-0A%2AAbility-20to-20add-20comments%2C-20either-20chosen-20from-20a-20pre-2Ddefined-20set-20of-20comments-20or-20as-20freeform-20text.-0A%2AAbility-20to-20add-20dbxrefs-20-5Bdatabase-20crossreferences-5D-20-2D-2D-20e.g.-20for-20GO-20functional-20annotation-0A%2ACan-20set-20start-20of-20translation-20for-20a-20transcript-20or-20let-20server-20determine-20automatically-0A%2AFlagging-20of-20non-2Dcanonical-20splice-20sites-20in-20curated-20annotations-0A%2AEdge-20matching-20to-20selected-20feature%3A-20matching-20edges-20across-20annotations-20and-20evidence-20tracks-20are-20highlighted-0A%2AOption-20to-20color-20transcript-20CDS-20by-20reading-20frame-0A%2ALoading-20of-20data-20directly-20from-20GFF3%2C-20BigWig%2C-20and-20BAM-20files%2C-20both-20remotely-20and-20from-20user%27s-20local-20machine.-0A%2AConfigurable-20heat-20map-20rendering-20of-20BigWig-20data-0A%2APer-2Dsession-20track-20configuration-20to-20set-20annotation-20colors%2C-20height%2C-20and-20other-20properties-0A%2AExport-20of-20annotation-20tracks-20as-20GFF3-20and-20optionally-20other-20formats-0A%2ASearch-20by-20sequence-20residues-20using-20server-2Dside-20interface-20to-20BLAT-20or-20other-20sequence-20search-20programs-0A-0AThe-20public-20demo-20can-20be-20accessed-20at%3A-20-5Bhttp%3A-2F-2Fgenomearchitect.org-2FWebApolloDemo-20http%3A-2F-2Fgenomearchitect.org-2FWebApolloDemo-5D-20%28-27-27Apis-20mellifera-27-27-20genome%29."
class="external text" rel="nofollow">+</a></span> and Username:
demo@demo.com, Password: demo <span class="smwsearch"><a
href="Special%3ASearchByProperty/Has-20description/Username:-20demo@demo.com,-20Password:-20demo"
title="Special%3ASearchByProperty/Has-20description/Username:-20demo@demo.com,-20Password:-20demo">+</a></span></td>
</tr>
<tr class="even row-even">
<td class="smwpropname"><a href="Property%3AHas_development_status"
title="Property:Has development status">Has development status</a></td>
<td class="smwprops">active <span class="smwsearch"><a
href="Special%3ASearchByProperty/Has-20development-20status/active"
title="Special%3ASearchByProperty/Has-20development-20status/active">+</a></span></td>
</tr>
<tr class="odd row-odd">
<td class="smwpropname"><a href="Property%3AHas_input_format"
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
<td class="smwpropname"><a href="Property%3AHas_logo"
title="Property:Has logo">Has logo</a></td>
<td class="smwprops">WebApolloLogo.png <span class="smwsearch"><a
href="Special%3ASearchByProperty/Has-20logo/WebApolloLogo.png"
title="Special%3ASearchByProperty/Has-20logo/WebApolloLogo.png">+</a></span></td>
</tr>
<tr class="odd row-odd">
<td class="smwpropname"><a href="Property%3AHas_output_format"
title="Property:Has output format">Has output format</a></td>
<td class="smwprops">GFF3 <span class="smwsearch"><a
href="Special%3ASearchByProperty/Has-20output-20format/GFF3"
title="Special%3ASearchByProperty/Has-20output-20format/GFF3">+</a></span>,
Fasta <span class="smwsearch"><a
href="Special%3ASearchByProperty/Has-20output-20format/Fasta"
title="Special%3ASearchByProperty/Has-20output-20format/Fasta">+</a></span>
and others <span class="smwsearch"><a
href="Special%3ASearchByProperty/Has-20output-20format/others"
title="Special%3ASearchByProperty/Has-20output-20format/others">+</a></span></td>
</tr>
<tr class="even row-even">
<td class="smwpropname"><a href="Property%3AHas_software_maturity_status"
title="Property:Has software maturity status">Has software maturity
status</a></td>
<td class="smwprops">mature <span class="smwsearch"><a
href="Special%3ASearchByProperty/Has-20software-20maturity-20status/mature"
title="Special%3ASearchByProperty/Has-20software-20maturity-20status/mature">+</a></span></td>
</tr>
<tr class="odd row-odd">
<td class="smwpropname"><a href="Property%3AHas_support_status"
title="Property:Has support status">Has support status</a></td>
<td class="smwprops">active <span class="smwsearch"><a
href="Special%3ASearchByProperty/Has-20support-20status/active"
title="Special%3ASearchByProperty/Has-20support-20status/active">+</a></span></td>
</tr>
<tr class="even row-even">
<td class="smwpropname"><a href="Property%3AHas_title"
title="Property:Has title">Has title</a></td>
<td class="smwprops">Client and server <span class="smwsearch"><a
href="Special%3ASearchByProperty/Has-20title/Client-20and-20server"
title="Special%3ASearchByProperty/Has-20title/Client-20and-20server">+</a></span>,
WebApollo2 demo <span class="smwsearch"><a
href="Special%3ASearchByProperty/Has-20title/WebApollo2-20demo"
title="Special%3ASearchByProperty/Has-20title/WebApollo2-20demo">+</a></span>
and WebApollo download <span class="smwsearch"><a
href="Special%3ASearchByProperty/Has-20title/WebApollo-20download"
title="Special%3ASearchByProperty/Has-20title/WebApollo-20download">+</a></span></td>
</tr>
<tr class="odd row-odd">
<td class="smwpropname"><a href="Property%3AHas_topic"
title="Property:Has topic">Has topic</a></td>
<td class="smwprops"><strong>WebApollo2</strong> <span
class="smwsearch"><a
href="Special%3ASearchByProperty/Has-20topic/WebApollo2"
title="Special%3ASearchByProperty/Has-20topic/WebApollo2">+</a></span></td>
</tr>
<tr class="even row-even">
<td class="smwpropname"><a href="Property%3AInteraction_type"
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
<td class="smwprops">WebApollo2 <span class="smwsearch"><a
href="Special%3ASearchByProperty/Interactor/WebApollo2"
title="Special%3ASearchByProperty/Interactor/WebApollo2">+</a></span></td>
</tr>
<tr class="even row-even">
<td class="smwpropname"><a href="Property%3AInteracts_with"
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
<td class="smwpropname"><a href="Property%3AIs_open_source"
title="Property:Is open source">Is open source</a></td>
<td class="smwprops">Yes <span class="smwsearch"><a
href="Special%3ASearchByProperty/Is-20open-20source/Yes"
title="Special%3ASearchByProperty/Is-20open-20source/Yes">+</a></span></td>
</tr>
<tr class="even row-even">
<td class="smwpropname"><a href="Property%3ALink_type"
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
<td class="smwpropname"><a href="Property%3ARelease_date"
title="Property:Release date">Release date</a></td>
<td class="smwprops">26 June 2015 <span class="smwsearch"><a
href="Special%3ASearchByProperty/Release-20date/26-20June-202015"
title="Special%3ASearchByProperty/Release-20date/26-20June-202015">+</a></span></td>
</tr>
<tr class="even row-even">
<td class="smwpropname"><a
href="Property%3ATool_functionality_or_classification"
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
<td class="smwpropname"><a href="Property%3AWritten_in_language"
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
href="Property%3AHas_subobject" title="Property:Has subobject">Has
subobject</a></span><span class="smwttcontent">This property is a
special property in this wiki.</span></span></td>
<td class="smwspecs"><a href="WebApollo2#http:.2F.2Fgenomearchitect.org"
title="WebApollo2">WebApollo2#http://genomearchitect.org</a> <span
class="smwsearch"><a
href="Special%3ASearchByProperty/Has-20subobject/WebApollo2-23http%3A-2F-2Fgenomearchitect.org"
title="Special%3ASearchByProperty/Has-20subobject/WebApollo2-23http%3A-2F-2Fgenomearchitect.org">+</a></span>,
<a href="WebApollo2#https:.2F.2Fgithub.com.2Fgmod.2Fapollo"
title="WebApollo2">WebApollo2#https://github.com/gmod/apollo</a> <span
class="smwsearch"><a
href="Special%3ASearchByProperty/Has-20subobject/WebApollo2-23https%3A-2F-2Fgithub.com-2Fgmod-2Fapollo"
title="Special%3ASearchByProperty/Has-20subobject/WebApollo2-23https%3A-2F-2Fgithub.com-2Fgmod-2Fapollo">+</a></span>,
<a
href="WebApollo2#http:.2F.2Ficebox.lbl.gov.2FApollo2.2Fannotator.2Findex"
title="WebApollo2">WebApollo2#http://icebox.lbl.gov/Apollo2/annotator/index</a>
<span class="smwsearch"><a
href="Special%3ASearchByProperty/Has-20subobject/WebApollo2-23http%3A-2F-2Ficebox.lbl.gov-2FApollo2-2Fannotator-2Findex"
title="Special%3ASearchByProperty/Has-20subobject/WebApollo2-23http%3A-2F-2Ficebox.lbl.gov-2FApollo2-2Fannotator-2Findex">+</a></span>,
<a href="WebApollo2#https:.2F.2Fgithub.com.2FGMOD.2FApollo.2Freleases"
title="WebApollo2">WebApollo2#https://github.com/GMOD/Apollo/releases</a>
<span class="smwsearch"><a
href="Special%3ASearchByProperty/Has-20subobject/WebApollo2-23https%3A-2F-2Fgithub.com-2FGMOD-2FApollo-2Freleases"
title="Special%3ASearchByProperty/Has-20subobject/WebApollo2-23https%3A-2F-2Fgithub.com-2FGMOD-2FApollo-2Freleases">+</a></span>,
<a href="WebApollo2#_7aa3d428be4e2b3632dc7e1d8733182f"
title="WebApollo2">WebApollo2</a> <span class="smwsearch"><a
href="Special%3ASearchByProperty/Has-20subobject/WebApollo2-23_7aa3d428be4e2b3632dc7e1d8733182f"
title="Special%3ASearchByProperty/Has-20subobject/WebApollo2-23 7aa3d428be4e2b3632dc7e1d8733182f">+</a></span>
and <a href="WebApollo2#_4c9d71480131ff10bde93a00dd874b38"
title="WebApollo2">WebApollo2</a> <span class="smwsearch"><a
href="Special%3ASearchByProperty/Has-20subobject/WebApollo2-23_4c9d71480131ff10bde93a00dd874b38"
title="Special%3ASearchByProperty/Has-20subobject/WebApollo2-23 4c9d71480131ff10bde93a00dd874b38">+</a></span></td>
</tr>
</tbody>
</table>






## Navigation menu



### Namespaces


- <span id="ca-talk"><a
  href="http://gmod.org/mediawiki/index.php?title=Talk:WebApollo2&amp;action=edit&amp;redlink=1"
  accesskey="t"
  title="Discussion about the content page [t]">Discussion</a></span>


### 

### Variants[](#)








<a href="Main_Page"
style="background-image: url(../images/GMOD-cogs.png);"
title="Visit the main page"></a>


### Navigation



- <span id="n-GMOD-Home">[GMOD Home](Main_Page)</span>
- <span id="n-Software">[Software](GMOD_Components)</span>
- <span id="n-Categories-.2F-Tags">[Categories /
  Tags](Categories)</span>




### Documentation



- <span id="n-Overview">[Overview](Overview)</span>
- <span id="n-FAQs">[FAQs](Category%3AFAQ)</span>
- <span id="n-HOWTOs">[HOWTOs](Category%3AHOWTO)</span>
- <span id="n-Glossary">[Glossary](Glossary)</span>




### Community



- <span id="n-GMOD-News">[GMOD News](GMOD_News)</span>
- <span id="n-Training-.2F-Outreach">[Training /
  Outreach](Training_and_Outreach)</span>
- <span id="n-Support">[Support](Support)</span>
- <span id="n-GMOD-Promotion">[GMOD Promotion](GMOD_Promotion)</span>
- <span id="n-Meetings">[Meetings](Meetings)</span>
- <span id="n-Calendar">[Calendar](Calendar)</span>




### Tools

- <span id="t-smwbrowselink"><a href="Special%3ABrowse/WebApollo2" rel="smw-browse">Browse
  properties</a></span>



- <span id="footer-info-lastmod">Last updated at 23:04 on 4 January
  2016.</span>
<!-- - <span id="footer-info-viewcount">11,117 page views.</span> -->
- <span id="footer-info-copyright">Content is available under
  <a href="http://www.gnu.org/licenses/fdl-1.3.html" class="external"
  rel="nofollow">a GNU Free Documentation License</a> unless otherwise
  noted.</span>

<!-- -->

- <span id="footer-places-about">[About
  GMOD](GMOD%3AAbout "GMOD%3AAbout")</span>

<!-- -->




