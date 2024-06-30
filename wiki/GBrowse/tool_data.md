<div id="mw-page-base" class="noprint">

</div>

<div id="mw-head-base" class="noprint">

</div>

<div id="content" class="mw-body" role="main">

<span id="top"></span>

<div id="mw-js-message" style="display:none;">

</div>



# <span dir="auto">GBrowse/tool data</span>

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

  
This page stores the data that populates the
[GBrowse](../GBrowse.1 "GBrowse") wiki page.

  
{{ {{{template}}} \| name = GBrowse \| full_name = Generic Genome
Browser \| status = mature \| dev = active \| support = active \| type =
Genome Visualization & Editing \| platform = web \| logo =
GBrowseLogo.png \| home =
<a href="http://gbrowse.org" class="external free"
rel="nofollow">http://gbrowse.org</a> \| about = GBrowse is a
combination of database and interactive web pages for manipulating and
displaying annotations on genomes. Features include:

- Simultaneous bird's eye and detailed views of the genome.
- Scroll, zoom, center.
- Use a variety of
  <a href="../GBrowse_Configuration_HOWTO#Glyphs_and_Glyph_Options"
  class="mw-redirect" title="GBrowse Configuration HOWTO">premade
  glyphs</a> or create your own.
- Attach arbitrary URLs to any annotation.
- Order and appearance of tracks are customizable by administrator and
  end-user.
- Search by annotation ID, name, or comment.
- Supports third party annotation using [GFF](../GFF "GFF") formats.
- Settings persist across sessions.
- DNA and [GFF](../GFF "GFF") dumps.
- Connectivity to different databases, including
  [BioSQL](../BioSQL "BioSQL") and
  <a href="../Chado" class="mw-redirect" title="Chado">Chado</a>.
- Multi-language support.
- Third-party feature loading.
- Customizable [plug-in](../GBrowse_Plugins "GBrowse Plugins")
  architecture (e.g. run
  <a href="http://en.wikipedia.org/wiki/BLAST" class="extiw"
  title="wp:BLAST">BLAST</a>, dump & import many formats, find
  oligonucleotides, [design
  primers](../PrimerDesigner.pm "PrimerDesigner.pm"), create restriction
  maps, edit features)

Note that the information on this page refers to GBrowse 2; GBrowse 1.x
is recommended only for applications where legacy browser support is
required and a single database is used.

\| screenshot =

<div class="thumb tnone">

<div class="thumbinner" style="width:502px;">

<a href="../File:GBrowse_screenshot1.png" class="image"><img
src="../../mediawiki/images/thumb/1/10/GBrowse_screenshot1.png/500px-GBrowse_screenshot1.png"
class="thumbimage"
srcset="../../mediawiki/images/thumb/1/10/GBrowse_screenshot1.png/750px-GBrowse_screenshot1.png 1.5x, ../../mediawiki/images/1/10/GBrowse_screenshot1.png 2x"
width="500" height="345" /></a>

<div class="thumbcaption">

<div class="magnify">

<a href="../File:GBrowse_screenshot1.png" class="internal"
title="Enlarge"><img
src="../../mediawiki/skins/common/images/magnify-clip.png" width="15"
height="11" /></a>

</div>

GBrowse running on
<a href="http://hapmap.ncbi.nlm.nih.gov/downloads/index.html"
class="external text" rel="nofollow">HapMap.org</a>
<a href="../../mediawiki/images/1/10/GBrowse_screenshot1.png"
class="internal" title="GBrowse screenshot1.png">Click to view at full
resolution</a>

</div>

</div>

</div>

\| public_server = \| dl = \| dl_url = <a
href="http://sourceforge.net/projects/gmod/files/Generic%20Genome%20Browser/"
class="external free"
rel="nofollow">http://sourceforge.net/projects/gmod/files/Generic%20Genome%20Browser/</a>
\| dl_src = \| dl_src_url = \| dl_dev = GBrowse can also be found on
<a href="http://search.cpan.org" class="external text"
rel="nofollow">CPAN</a> and in the Debian sid ("unstable") apt package
repository and can be installed via apt-get in Ubuntu 12.04 and later.
\| dl_dev_url =
<a href="https://github.com/GMOD/GBrowse" class="external free"
rel="nofollow">https://github.com/GMOD/GBrowse</a> \|
getting_started_preamble = \| req = GBrowse is
[Perl](../Glossary#Perl "Glossary")-based and the GBrowse 2.x modules
are <a href="http://search.cpan.org/dist/GBrowse/" class="external text"
rel="nofollow">hosted on CPAN</a>. GBrowse can be installed using the
standard Perl module build procedure, or automated using a network-based
install script. In order to use the net installer, you will need to have
Perl 5.8.6 or higher and the Apache web server installed. \| install =

- [GBrowse 2.x installation
  guide](../GBrowse_2.0_Install_HOWTO.1 "GBrowse 2.0 Install HOWTO")
- [Advanced](../GBrowse_2.0_Install_HOWTO/Advanced "GBrowse 2.0 Install HOWTO/Advanced")
- [Install
  Paths](../GBrowse_2.0_Install_Paths "GBrowse 2.0 Install Paths")

\| config =

- <a href="../GBrowse_2.0_Configuration_HOWTO" class="mw-redirect"
  title="GBrowse 2.0 Configuration HOWTO">Configuration guide</a>
  - [Authentication](../GBrowse_Configuration/Authentication "GBrowse Configuration/Authentication")
  - [Balloons](../GBrowse_Configuration/Balloons "GBrowse Configuration/Balloons")
  - [DAS](../GBrowse_Configuration/DAS "GBrowse Configuration/DAS")
  - [Feature Frequency
    Histograms](../GBrowse_Configuration/Feature_frequency_histograms "GBrowse Configuration/Feature frequency histograms")
  - [Glyphs](../GBrowse_Configuration/Glyphs "GBrowse Configuration/Glyphs")
  - [I18n](../GBrowse_Configuration/I18n "GBrowse Configuration/I18n")
  - [Images](../GBrowse_Configuration/Images "GBrowse Configuration/Images")
  - [URL
    schema](../GBrowse_Configuration/URL_schema "GBrowse Configuration/URL schema")
- [Subtracks](../Creating_and_Managing_Subtracks_with_GBrowse2 "Creating and Managing Subtracks with GBrowse2")
- [GBrowse Adaptors](../GBrowse_Adaptors "GBrowse Adaptors")
- [GBrowse Backends](../GBrowse_Backends "GBrowse Backends")

\| doc =

- [GBrowse FAQ](../GBrowse_FAQ "GBrowse FAQ")
- <a
  href="http://search.cpan.org/dist/GBrowse/htdocs/annotation_help.html"
  class="external text" rel="nofollow">Annotation Help</a>
- Balloons:
  - [GBrowse Popup
    Balloons](../GBrowse_Popup_Balloons "GBrowse Popup Balloons")
  - <a href="../GBrowse_Balloon_Tips" class="mw-redirect"
    title="GBrowse Balloon Tips">Balloon Tips</a>
- [GBrowse Persistent
  Variables](../GBrowse_Persistent_Variables "GBrowse Persistent Variables")
- [GBrowse img](../GBrowse_img "GBrowse img")
- [Glyphs and Glyph
  Options](../Glyphs_and_Glyph_Options "Glyphs and Glyph Options")
- [Rubber Band Selection](../RubberBandSelection "RubberBandSelection")
- [Gbrowse Benchmarking](../Gbrowse_Benchmarking "Gbrowse Benchmarking")
- [GBrowse User Uploads](../GBrowse_User_Uploads "GBrowse User Uploads")

### <span id="POD_documentation" class="mw-headline">POD documentation</span>

There are many useful POD documents included with the distribution.
These are converted to HTML files when you install the package, and can
be found in /gbrowse/docs/pod.

GBrowse 2.x pod documents can also be viewed online at CPAN:

- <a href="http://search.cpan.org/dist/GBrowse/docs/pod/FAQ.pod"
  class="external text" rel="nofollow">FAQ</a>
- <a href="http://search.cpan.org/dist/GBrowse/docs/pod/INSTALL.pod"
  class="external text" rel="nofollow">INSTALL</a>
- <a
  href="http://search.cpan.org/dist/GBrowse/docs/pod/INSTALL.MacOSX.pod"
  class="external text" rel="nofollow">INSTALL.MacOSX</a>
- <a href="http://search.cpan.org/dist/GBrowse/docs/pod/README-chado.pod"
  class="external text" rel="nofollow">README-chado</a>
- <a
  href="http://search.cpan.org/dist/GBrowse/docs/pod/README-gff-files.pod"
  class="external text" rel="nofollow">README-gff-files</a> (see also
  [GFF](../GFF "GFF"))
- <a
  href="http://search.cpan.org/dist/GBrowse/docs/pod/README-lucegene.pod"
  class="external text" rel="nofollow">README-lucegene</a>
- <a
  href="http://search.cpan.org/dist/GBrowse/docs/pod/BIOSQL_ADAPTER_HOWTO.pod"
  class="external text" rel="nofollow">BIOSQL_ADAPTER_HOWTO</a>
- <a href="http://search.cpan.org/dist/GBrowse/docs/pod/GENBANK_HOWTO.pod"
  class="external text" rel="nofollow">GENBANK_HOWTO</a>
- <a href="http://search.cpan.org/dist/GBrowse/docs/pod/PLUGINS_HOWTO.pod"
  class="external text" rel="nofollow">PLUGINS_HOWTO</a>
- <a href="http://search.cpan.org/dist/GBrowse/docs/pod/DAS_HOWTO.pod"
  class="external text" rel="nofollow">DAS_HOWTO</a>
- <a
  href="http://search.cpan.org/dist/GBrowse/docs/pod/MAKE_IMAGES_HOWTO.pod"
  class="external text" rel="nofollow">MAKE_IMAGES_HOWTO</a>
- <a href="http://search.cpan.org/dist/GBrowse/docs/pod/GBROWSE_IMG.pod"
  class="external text" rel="nofollow">GBROWSE_IMG</a>
- <a
  href="http://search.cpan.org/dist/GBrowse/docs/pod/ORACLE_AND_POSTGRESQL.pod"
  class="external text" rel="nofollow">ORACLE_AND_POSTGRESQL</a>

\| papers =

- Using the Generic Genome Browser ([GBrowse](../GBrowse.1 "GBrowse")).
  <sup>[\[1\]](#cite_note-PMID:19957275-1)</sup>
- SNP@Evolution: a hierarchical database of positive selection on the
  human genome. <sup>[\[2\]](#cite_note-PMID:19732458-2)</sup>
  ([GBrowse](../GBrowse.1 "GBrowse")-related)
- TBrowse: an integrative genomics map of Mycobacterium tuberculosis.
  <sup>[\[3\]](#cite_note-PMID:19683474-3)</sup>
  ([GBrowse](../GBrowse.1 "GBrowse")-related)
- FishMap: a community resource for zebrafish genomics.
  <sup>[\[4\]](#cite_note-PMID:18554176-4)</sup>
  ([GBrowse](../GBrowse.1 "GBrowse")-related)
- Using the Generic Genome Browser ([GBrowse](../GBrowse.1 "GBrowse")).
  <sup>[\[5\]](#cite_note-PMID:18428797-5)</sup>
- Genome-Wide Analysis of Nucleotide-Level Variation in Commonly Used
  Saccharomyces cerevisiae Strains.
  <sup>[\[6\]](#cite_note-PMID:17389913-6)</sup> (See <a
  href="http://gbrowse.princeton.edu/cgi-bin/gbrowse/yeast_strains_snps/"
  class="external text" rel="nofollow">YSB</a>.)
- Gbrowse Moby: a Web-based browser for
  <a href="http://biomoby.open-bio.org/" class="external text"
  rel="nofollow">BioMoby</a> Services.
  <sup>[\[7\]](#cite_note-PMID:17147784-7)</sup>
- The [generic genome browser (GBrowse)](../GBrowse.1 "GBrowse"): a
  building block for a model organism system database.
  <sup>[\[8\]](#cite_note-PMID:12368253-8)</sup>
  <a href="../../mediawiki/images/e/e7/1599-1.pdf" class="internal"
  title="1599-1.pdf">PDF</a>

\| presentations = \| tutorials =

[GBrowse tutorial from 2012 GMOD Summer School](../GBrowse_Tutorial "GBrowse Tutorial"). This relies heavily on the <a href="http://cloud.gmod.org/gbrowse2/tutorial/tutorial.html"
class="external text" rel="nofollow">GBrowse2 Admin Tutorial</a>.  
Demonstrates setting up, configuring and using
[GBrowse](../GBrowse.1 "GBrowse") with some sample data. GBrowse is
provided on an Amazon Machine Image; see [GMOD in the
Cloud](../Cloud.1 "Cloud") for more information on getting a GMOD AMI.

[GBrowse tutorial from 2010 GMOD Summer School](../GBrowse_Tutorial_2010 "GBrowse Tutorial 2010")  
Set up and run [GBrowse](../GBrowse.1 "GBrowse") with sample data. It
provides a VMware image to work on, and relies heavily on the
<a href="http://cloud.gmod.org/gbrowse2/tutorial/tutorial.html"
class="external text" rel="nofollow">GBrowse2 Admin Tutorial</a>.

<a href="http://cloud.gmod.org/gbrowse2/tutorial/tutorial.html"
class="external text" rel="nofollow">GBrowse2 Admin Tutorial</a>  
Step by step guide on how to configure and load data into
[GBrowse](../GBrowse.1 "GBrowse"). Administration tutorials are
available for both the
<a href="http://cloud.gmod.org/gbrowse2/tutorial/tutorial.html"
class="external text" rel="nofollow">GBrowse2 Admin Tutorial</a>, and
the earlier <a
href="http://gmod.svn.sourceforge.net/viewvc/gmod/Generic-Genome-Browser/branches/stable/docs/tutorial/tutorial.html"
class="external text" rel="nofollow">1.x versions</a>.

<a href="http://search.cpan.org/dist/GBrowse/htdocs/general_help.html"
class="external text" rel="nofollow">Usage tutorial</a>  
GBrowse usage tutorial

[GBrowse NGS Tutorial](../GBrowse_NGS_Tutorial "GBrowse NGS Tutorial")  
Instructions on how to visualize
<a href="../Next_generation_sequencing" class="mw-redirect"
title="Next generation sequencing">next generation sequencing</a> data
in GBrowse using
<a href="http://samtools.sourceforge.net" class="external text"
rel="nofollow">SAMtools</a>. The tutorial includes a starting VMware
image, and uses the example data that comes with SAMtools.

<a href="http://youtu.be/jxA6VMN97Y8" class="external text"
rel="nofollow">GBrowse video tutorial</a>  
Produced by <a href="http://eupathdb.org" class="external text"
rel="nofollow">EuPathDB</a>; please direct praise and thanks to them!

<a href="http://www.openhelix.com/gbrowse" class="external text"
rel="nofollow">GBrowse User Tutorial</a> at <a href="http://www.openhelix.com" class="external text"
rel="nofollow">OpenHelix</a>  
A Flash based tutorial on using GBrowse. Provided by
<a href="http://www.openhelix.com" class="external text"
rel="nofollow">OpenHelix</a>. Tutorial includes slides, handouts and
exercises. NB: this tutorial is for [GBrowse
1.x](../GBrowse_1.x "GBrowse 1.x")

\| wild_urls =

- <a href="http://www.wormbase.org/tools/genome/gbrowse/c_elegans/"
  class="external text" rel="nofollow">WormBase</a>
- <a href="http://flybase.org/cgi-bin/gbrowse/dmel" class="external text"
  rel="nofollow">FlyBase</a>
- <a href="http://hapmap.ncbi.nlm.nih.gov/cgi-perl/gbrowse/gbrowse"
  class="external text" rel="nofollow">HapMap</a>

\| mail =

|  |  |  |  |
|----|----|----|----|
|  | Mailing List Link | Description | Archive(s) |
| [GBrowse](../GBrowse.1 "GBrowse") & [GBrowse_syn](../GBrowse_syn.1 "GBrowse syn") | <a href="https://lists.sourceforge.net/lists/listinfo/gmod-gbrowse"
class="external text" rel="nofollow">gmod-gbrowse</a> | [GBrowse](../GBrowse.1 "GBrowse") and [GBrowse_syn](../GBrowse_syn.1 "GBrowse syn") users and developers. | <a href="http://dir.gmane.org/gmane.science.biology.gmod.gbrowse"
class="external text" rel="nofollow">Gmane</a>, <a href="http://gmod.827538.n3.nabble.com/GBrowse-f815907.html"
class="external text" rel="nofollow">Nabble (2010/05+)</a>, <a href="https://lists.sourceforge.net/lists/listinfo/gmod-gbrowse"
class="external text" rel="nofollow">Sourceforge</a> |
|  | <a href="https://lists.sourceforge.net/lists/listinfo/gmod-gbrowse-cmts"
class="external text" rel="nofollow">gmod-gbrowse-cmts</a> | Code updates. | <a
href="http://sourceforge.net/mailarchive/forum.php?forum_name=gmod-gbrowse-cmts"
class="external text" rel="nofollow">Sourceforge</a> |

Please report bugs to the <a
href="http://sourceforge.net/tracker/?func=add&amp;group_id=27707&amp;atid=391291SourceForge"
class="external text" rel="nofollow">Bug Tracker</a> (select 'Category%3A
Gbrowse').

\| logo_info = The [GBrowse
logo](../File:GBrowseLogo.png "File:GBrowseLogo.png") was created by
<a href="mailto:alexisnb1@yahoo.com" class="external text"
rel="nofollow">Alex Read</a>, a participant in the [Spring 2010 Logo
Program](../Spring_2010_Logo_Program "Spring 2010 Logo Program"), while
a design student at
<a href="http://www.linnbenton.edu" class="external text"
rel="nofollow">Linn-Benton Community College</a>. \| dev_ppl = \|
dev_status = \| contact_email = lincoln.stein@gmail.com;
scott@scottcain.net \| input = [GFF3](../GFF3 "GFF3"),
[GFF2](../GFF2 "GFF2") \| output = \| see_also =
[JBrowse](../JBrowse.1 "JBrowse"), the successor to GBrowse, built with
JavaScript for a faster, more interactive user experience; and
[WebGBrowse](../WebGBrowse.1 "WebGBrowse"), a tool for configuring
GBrowse. \| demo_server = \| survey_link = GBrowse \|release date=2001
\| extras =

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

\| }}  
**Cite error: `<ref>` tags exist, but no `<references/>` tag was found**

</div>

<div class="printfooter">

Retrieved from
"<http://gmod.org/mediawiki/index.php?title=GBrowse/tool_data&oldid=24522>"

</div>

<div id="catlinks" class="catlinks">

<div id="mw-normal-catlinks" class="mw-normal-catlinks">

[Categories](../Special:Categories "Special:Categories"):

- [GBrowse](../Category%3AGBrowse "Category%3AGBrowse")
- <a
  href="http://gmod.org/mediawiki/index.php?title=Category%3ATemplate&amp;action=edit&amp;redlink=1"
  class="new" title="Category%3ATemplate (page does not exist)">Template</a>
- [GMOD in the
  Cloud](../Category%3AGMOD_in_the_Cloud "Category%3AGMOD in the Cloud")
- [GBrowse 2](../Category%3AGBrowse_2 "Category%3AGBrowse 2")
- [GMOD
  Components](../Category%3AGMOD_Components "Category%3AGMOD Components")
- [Tool data](../Category%3ATool_data "Category%3ATool data")

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
  href="http://gmod.org/mediawiki/index.php?title=Talk:GBrowse/tool_data&amp;action=edit&amp;redlink=1"
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
- <span id="n-FAQs">[FAQs](../Category%3AFAQ)</span>
- <span id="n-HOWTOs">[HOWTOs](../Category%3AHOWTO)</span>
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


- <span id="t-smwbrowselink"><a href="../Special%3ABrowse/GBrowse-2Ftool_data" rel="smw-browse">Browse
  properties</a></span>


</div>

</div>

</div>

</div>

<div id="footer" role="contentinfo">

- <span id="footer-info-lastmod">Last updated at 18:35 on 10 September
  2013.</span>
<!-- - <span id="footer-info-viewcount">32,727 page views.</span> -->
- <span id="footer-info-copyright">Content is available under
  <a href="http://www.gnu.org/licenses/fdl-1.3.html" class="external"
  rel="nofollow">a GNU Free Documentation License</a> unless otherwise
  noted.</span>

<!-- -->

- <span id="footer-places-about">[About
  GMOD](../GMOD:About "GMOD:About")</span>

<!-- -->






</div>
