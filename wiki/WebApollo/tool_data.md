<div id="mw-page-base" class="noprint">

</div>

<div id="mw-head-base" class="noprint">

</div>

<div id="content" class="mw-body" role="main">

<span id="top"></span>

<div id="mw-js-message" style="display:none;">

</div>



# <span dir="auto">WebApollo/tool data</span>

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

{{ {{{template}}} \| name = WebApollo \| full_name = \| status = mature
\| dev = active \| support = active \| type = Community annotation \|
platform = web \| logo = WebApolloLogo.png \| home = \| about =
WebApollo is a browser-based tool for visualisation and editing of
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
- Two-­stage curation process: edit within a temporary workspace, then
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
rel="nofollow">http://genomearchitect.org/WebApolloDemo</a> (*Bos
taurus* genome).

\| screenshot = \| public_server = \| dl = \| dl_url =
<a href="http://genomearchitect.org/webapollo/releases/"
class="external free"
rel="nofollow">http://genomearchitect.org/webapollo/releases/</a> \|
dl_src =
<a href="https://github.com/berkeleybop/jbrowse" class="external text"
rel="nofollow">JBrowse client source on github</a>

- <a href="http://code.google.com/p/apollo-web" class="external text"
  rel="nofollow">Annotation editing engine server source code on Google
  Code</a>
- <a href="http://code.google.com/p/gbol" class="external text"
  rel="nofollow">Data model and I/O layer code used by editing engine on
  Google Code</a>
- <a href="http://code.google.com/p/genomancer" class="external text"
  rel="nofollow">Trellis server code on Google Code</a>

\| dl_src_url = \| dl_dev = \| dl_dev_url = \| getting_started_preamble
= \| req = \| install =

- [Server installation
  guide](../WebApollo_Installation "WebApollo Installation")

\| config = \| doc =

- <a
  href="http://genomearchitect.org/webapollo/docs/webapollo_user_guide.pdf"
  class="external text" rel="nofollow">WebApollo User Guide (PDF)</a>
- <a href="http://apollo.berkeleybop.org/apollo_web/web_service_api.html"
  class="external text" rel="nofollow">Apollo Web service API</a>

\| papers = \| presentations =

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
<td><a href="../../mediawiki/images/e/ec/WebApollo_PAG_2013_Poster.pdf"
class="internal" title="WebApollo PAG 2013 Poster.pdf">Poster</a></td>
</tr>
<tr class="even">
<td>2012-08-25 - 2012-08-29</td>
<td><a href="../WebApollo_Tutorial_2012"
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
<td><a
href="../../mediawiki/images/7/72/WebApollo_Demo_i5K-AGS_2012.pdf"
class="internal"
title="WebApollo Demo i5K-AGS 2012.pdf">Tutorial</a><br />
<a
href="../../mediawiki/images/e/ea/WebApollo_Arthropod_Genomics_2012_poster.pdf"
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
href="../../mediawiki/images/0/03/Biocuration-abstract-v1-shortened.pdf"
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
<td><a href="../../mediawiki/images/6/6b/WebApollo_at_ESA_Flyer.pdf"
class="internal" title="WebApollo at ESA Flyer.pdf">Flyer for
tutorial</a></td>
</tr>
<tr class="odd">
<td>2011-08-26</td>
<td>Workshop on Manual Annotation, Purdue University</td>
<td><em>Manual Curation of Automated Gene Models</em></td>
<td>Mónica Muñoz-Torres</td>
<td><a
href="../../mediawiki/images/5/53/NGS_workshop_annotation_AP-&amp;-MMT.pdf"
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
<td><a
href="../../mediawiki/images/a/ab/NESCent-NGS-Biocuration-MMT.pdf"
class="internal" title="NESCent-NGS-Biocuration-MMT.pdf">T: Slides</a>
<a href="http://academy.nescent.org/wg/academy/images/7/76/Moni1.mp3"
class="external text" rel="nofollow">T: Audio</a><br />
<a
href="../../mediawiki/images/5/53/NGS_workshop_annotation_AP-&amp;-MMT.pdf"
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
<td><a href="../../mediawiki/images/7/70/BOSC2011-abstract.pdf"
class="internal" title="BOSC2011-abstract.pdf">Abstract</a><br />
<a href="http://www.slideshare.net/bosc2011/webapollo-bosc2011"
class="external text" rel="nofollow">Slides</a></td>
</tr>
</tbody>
</table>

\| tutorials =

<a href="../WebApollo_Tutorial" class="mw-redirect"
title="WebApollo Tutorial">WebApollo Tutorial</a>  
taught as part of the [2013 GMOD Summer
School](../2013_GMOD_Summer_School "2013 GMOD Summer School")

\| wild_urls = \| mail =

|  |  |  |  |
|----|----|----|----|
|  | Mailing List Link | Description | Archive(s) |
| [Apollo](../Apollo.1 "Apollo") and [WebApollo](../WebApollo.1 "WebApollo") | <a href="https://lists.lbl.gov/sympa/info/apollo" class="external text"
rel="nofollow">apollo</a> | [Apollo](../Apollo.1 "Apollo") and [WebApollo](../WebApollo.1 "WebApollo") mailing list | <a href="http://dir.gmane.org/gmane.science.biology.gmod.apollo"
class="external text" rel="nofollow">Gmane</a> (2008/04-2010/10), <a href="http://gmod.827538.n3.nabble.com/Apollo-f815553.html"
class="external text" rel="nofollow">Nabble</a> (2010/05+) |
|  | <a href="https://lists.sourceforge.net/lists/listinfo/gmod-apollo-cmts"
class="external text" rel="nofollow">gmod-apollo-cmts</a> | [Apollo](../Apollo.1 "Apollo") and [WebApollo](../WebApollo.1 "WebApollo") code updates. |  |

\| logo_info = The [WebApollo
logo](../File:ApolloLogo.png "File:ApolloLogo.png") was created by
<a href="mailto:audra.radke@gmail.com" class="external text"
rel="nofollow">Audra Radke</a>, a participant in the [Spring 2010 Logo
Program](../Spring_2010_Logo_Program "Spring 2010 Logo Program"), while
a design student at
<a href="http://www.linnbenton.edu" class="external text"
rel="nofollow">Linn-Benton Community College</a>. \| dev_ppl = The
WebApollo project is a collaboration between Suzanna Lewis's group at
LBNL (the Berkeley Bioinformatics Open-source Projects group, or
<a href="http://berkeleybop.org/" class="external text"
rel="nofollow">BBOP</a>), the JBrowse project in
<a href="http://biowiki.org/HolmesLab" class="external text"
rel="nofollow">Ian Holmes' group</a> at Berkeley, and
<a href="http://genomes.arc.georgetown.edu/elsiklab/"
class="external text" rel="nofollow">Chris Elsik</a>'s group at
University of Missouri.

The personnel involved in WebApollo are: Suzanna Lewis (PI, LBNL); Ian
Holmes (PI, UC Berkeley); Chris Elsik (PI, University of Missouri); [Ed
Lee](../User:Elee "User:Elee") (LBNL); [Gregg
Helt](../User:GreggHelt2 "User:GreggHelt2") (LBNL); [Justin
Reese](../User:Justaddcoffee "User:Justaddcoffee") (University of
Missouri); [Monica Munoz-Torres](../User:Moni "User:Moni") (LBNL);
[Chris Childers](../User:Childers "User:Childers") (University of
Missouri); Rob Buels (UC Berkeley); [Mitch
Skinner](../User:MitchSkinner "User:MitchSkinner") (UC Berkeley)
(Emeritus - developed first version of JBrowse); and Nomi Harris (LBNL)
(Emeritus).

\| dev_status = \| contact_email = elee@berkeleybop.org \| input = GFF3,
BigWig, BAM \| output = GFF3, others \| see_also = \| demo_server =
\*<a href="http://genomearchitect.org:8080/WebApolloDemo/"
class="external text" rel="nofollow">Demo (Bos taurus genome)</a> \|
survey_link = \|release date=2012 \| extras =

<div class="compBoxHdr">

[Cloud component](../Cloud.1 "Cloud")

</div>

Included in

<div class="center">

<div class="floatnone">

[<img
src="../../mediawiki/images/thumb/6/69/GitcLogo.png/150px-GitcLogo.png"
srcset="../../mediawiki/images/thumb/6/69/GitcLogo.png/225px-GitcLogo.png 1.5x, ../../mediawiki/images/thumb/6/69/GitcLogo.png/300px-GitcLogo.png 2x"
width="150" height="86" alt="Cloud component" />](../Cloud.1 "Cloud")

</div>

</div>

}}

</div>

<div class="printfooter">

Retrieved from
"<http://gmod.org/mediawiki/index.php?title=WebApollo/tool_data&oldid=24696>"

</div>

<div id="catlinks" class="catlinks">

<div id="mw-normal-catlinks" class="mw-normal-catlinks">

[Categories](../Special:Categories "Special:Categories"):

- <a
  href="http://gmod.org/mediawiki/index.php?title=Category:Template&amp;action=edit&amp;redlink=1"
  class="new" title="Category:Template (page does not exist)">Template</a>
- [GMOD in the
  Cloud](../Category:GMOD_in_the_Cloud "Category:GMOD in the Cloud")
- [Webapollo](../Category:Webapollo "Category:Webapollo")
- [Annotation](../Category:Annotation "Category:Annotation")
- [Tool data](../Category:Tool_data "Category:Tool data")
- [GMOD
  Components](../Category:GMOD_Components "Category:GMOD Components")

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
  href="http://gmod.org/mediawiki/index.php?title=Talk:WebApollo/tool_data&amp;action=edit&amp;redlink=1"
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


- <span id="t-smwbrowselink"><a href="../Special:Browse/WebApollo-2Ftool_data"
  rel="smw-browse">Browse properties</a></span>
- <span id="t-pdf">[Print as
  PDF](http://gmod.org/mediawiki/index.php?title=Special:PdfPrint&page=WebApollo/tool_data)</span>

</div>

</div>

</div>

</div>

<div id="footer" role="contentinfo">

- <span id="footer-info-lastmod">Last updated at 20:34 on 15 October
  2013.</span>
<!-- - <span id="footer-info-viewcount">52,058 page views.</span> -->
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


<div style="clear:both">

</div>

</div>
