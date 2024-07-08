



<span id="top"></span>




# <span dir="auto">TIGR-Workflow / Ergatis</span>










Status



- **Mature** release
- **Active** development
- **Active** support



Resources



- <a href="http://ergatis.sourceforge.net/" class="external text"
  rel="nofollow">Home Page</a>
- <a href="http://ergatis.sourceforge.net/download.html"
  class="external text" rel="nofollow">Download</a>
- [Mailing Lists](#Mailing_Lists)
- <a
  href="http://ergatis.sourceforge.net/documentation/install_guide.html"
  class="external text" rel="nofollow">Install Guide</a>
- <a href="http://ergatis.sourceforge.net/documentation.html"
  class="external text" rel="nofollow">Predefined Tools</a>
- <a href="http://clovr.igs.umaryland.edu/" class="external text"
  rel="nofollow">CloVR</a>
- [ISGA](../ISGA "ISGA")

## <span id="What_is_it.3F" class="mw-headline">What is it?</span>


<a href="../File:Ergatis_monitor.png" class="image"><img
src="https://raw.githubusercontent.com/GMOD/gmod.github.io/main/mediawiki/images/thumb/e/e5/Ergatis_monitor.png/300px-Ergatis_monitor.png"
class="thumbimage"
srcset="https://raw.githubusercontent.com/GMOD/gmod.github.io/main/mediawiki/images/thumb/e/e5/Ergatis_monitor.png/450px-Ergatis_monitor.png 1.5x, https://raw.githubusercontent.com/GMOD/gmod.github.io/main/mediawiki/images/thumb/e/e5/Ergatis_monitor.png/600px-Ergatis_monitor.png 2x"
width="300" height="169" /></a>


<a href="../File:Ergatis_monitor.png" class="internal"
title="Enlarge"><img
src="../../mediawiki/skins/common/images/magnify-clip.png" width="15"
height="11" /></a>



Screenshot of the Ergatis pipeline monitor




(From <a href="http://ergatis.sourceforge.net" class="external free"
rel="nofollow">http://ergatis.sourceforge.net</a>) :

Ergatis is a web-based utility that is used to create, run, and monitor
reusable computational analysis pipelines. It contains pre-built
components for common bioinformatics analysis tasks. These components
can be arranged graphically to form highly-configurable pipelines. Each
analysis component supports multiple output formats, including the
Bioinformatic Sequence Markup Language (BSML). The current
implementation includes support for data loading into project databases
following the
<a href="../Chado" class="mw-redirect" title="Chado">Chado</a> schema, a
highly normalized, community-supported schema for storage of biological
annotation data.

Ergatis uses the Workflow engine to process its work on a compute grid.
Workflow provides an [XML](../Glossary#XML "Glossary") language and
processing engine for specifying the steps of a computational pipeline.
It provides detailed execution status and logging for process auditing,
facilitates error recovery from point of failure, and is highly scalable
with support for distributed computing environments. The XML format
employed enables commands to be run serially, in parallel, and in any
combination or nesting level.

This framework has been employed in the annotation of several large,
eukaryotic organisms, including *Aedes aegypti* and *Trichomonas
vaginalis*.


<a href="../File:Ergatis_builder.png" class="image"><img
src="https://raw.githubusercontent.com/GMOD/gmod.github.io/main/mediawiki/images/thumb/5/59/Ergatis_builder.png/300px-Ergatis_builder.png"
class="thumbimage"
srcset="https://raw.githubusercontent.com/GMOD/gmod.github.io/main/mediawiki/images/thumb/5/59/Ergatis_builder.png/450px-Ergatis_builder.png 1.5x, https://raw.githubusercontent.com/GMOD/gmod.github.io/main/mediawiki/images/thumb/5/59/Ergatis_builder.png/600px-Ergatis_builder.png 2x"
width="300" height="351" /></a>


<a href="../File:Ergatis_builder.png" class="internal"
title="Enlarge"><img
src="../../mediawiki/skins/common/images/magnify-clip.png" width="15"
height="11" /></a>



Screenshot of the Ergatis pipeline builder




More information is available at:

<a href="http://ergatis.sourceforge.net" class="external free"
rel="nofollow">http://ergatis.sourceforge.net</a>

## <span id="How_is_it_a_part_of_GMOD.3F" class="mw-headline">How is it a part of GMOD?</span>

Currently, only loosely. As described above, Ergatis has been used at
TIGR (now part of JCVI) for the majority of annotation and comparative
genomics computation and the output of many of the components (such as
blast, gene predictions, clustering etc.) can be loaded automatically
into a chado database instance. In the past, due to its primary use at
TIGR/JCVI, the database support was limited to Sybase, though flat-files
could also be generated. Development is now underway to port this to
also support [PostgreSQL](../PostgreSQL "PostgreSQL") and Oracle.

[Joshua Orvis](../User%3AJorvis "User%3AJorvis") is the lead developer of
Ergatis and is currently at the
<a href="http://www.igs.umaryland.edu/" class="external text"
rel="nofollow">Institute for Genome Sciences</a> at the University of
Maryland School of Medicine.

## <span id="Mailing_Lists" class="mw-headline">Mailing Lists</span>

|  |  |  |  |
|----|----|----|----|
|  | Mailing List Link | Description | Archive(s) |
| <a href="../Ergatis" class="mw-redirect" title="Ergatis">Ergatis</a> | <a href="https://lists.sourceforge.net/lists/listinfo/ergatis-users"
class="external text" rel="nofollow">ergatis-users</a> | <a href="../Ergatis" class="mw-redirect" title="Ergatis">Ergatis</a> users mailing list. | <a href="http://gmod.827538.n3.nabble.com/Ergatis-Users-f815632.html"
class="external text" rel="nofollow">Nabble</a> (2010/05+), <a
href="http://sourceforge.net/mailarchive/forum.php?forum_name=ergatis-users"
class="external text" rel="nofollow">Sourceforge</a> |
|  | <a href="https://lists.sourceforge.net/lists/listinfo/ergatis-announce"
class="external text" rel="nofollow">announcement</a> | <a href="../Ergatis" class="mw-redirect" title="Ergatis">Ergatis</a> announcements. | <a
href="http://gmod.827538.n3.nabble.com/Ergatis-Announcements-f815639.html"
class="external text" rel="nofollow">Nabble</a> (2010/05+), <a
href="http://sourceforge.net/mailarchive/forum.php?forum_name=ergatis-announce"
class="external text" rel="nofollow">Sourceforge</a> |
|  | <a href="https://lists.sourceforge.net/lists/listinfo/ergatis-devel"
class="external text" rel="nofollow">ergatis-devel</a> | <a href="../Ergatis" class="mw-redirect" title="Ergatis">Ergatis</a> developers. | <a
href="http://gmod.827538.n3.nabble.com/Ergatis-Development-f815854.html"
class="external text" rel="nofollow">Nabble</a> (2010/05+), <a
href="http://sourceforge.net/mailarchive/forum.php?forum_name=ergatis-devel"
class="external text" rel="nofollow">Sourceforge</a> |




[Categories](../Special%3ACategories "Special%3ACategories"):

- [Analysis](../Category%3AAnalysis "Category%3AAnalysis")
- [GMOD
  Components](../Category%3AGMOD_Components "Category%3AGMOD Components")
- [Annotation](../Category%3AAnnotation "Category%3AAnnotation")
- [Ergatis](../Category%3AErgatis "Category%3AErgatis")






## Navigation menu







<a href="../Main_Page"
style="background-image: url(../../images/GMOD-cogs.png);"
title="Visit the main page"></a>


### Navigation



- <span id="n-GMOD-Home">[GMOD Home](../Main_Page)</span>
- <span id="n-Software">[Software](../GMOD_Components)</span>
- <span id="n-Categories-.2F-Tags">[Categories /
  Tags](../Categories)</span>
- <span id="n-View-all-pages">[View all
  pages](../Special:AllPages)</span>




### Documentation



- <span id="n-Overview">[Overview](../Overview)</span>
- <span id="n-FAQs">[FAQs](../Category%3AFAQ)</span>
- <span id="n-HOWTOs">[HOWTOs](../Category%3AHOWTO)</span>
- <span id="n-Glossary">[Glossary](../Glossary)</span>




### Community



- <span id="n-GMOD-News">[GMOD News](../GMOD_News)</span>
- <span id="n-Training-.2F-Outreach">[Training /
  Outreach](../Training_and_Outreach)</span>
- <span id="n-Support">[Support](../Support)</span>
- <span id="n-GMOD-Promotion">[GMOD Promotion](../GMOD_Promotion)</span>
- <span id="n-Meetings">[Meetings](../Meetings)</span>
- <span id="n-Calendar">[Calendar](../Calendar)</span>




### Tools

- <span id="t-smwbrowselink"><a href="../Special%3ABrowse/TIGR-2DWorkflow_-2F_Ergatis"
  rel="smw-browse">Browse properties</a></span>



- <span id="footer-info-lastmod">Last updated at 23:49 on 25 July
  2012.</span>
<!-- - <span id="footer-info-viewcount">72,786 page views.</span> -->
- <span id="footer-info-copyright">Content is available under
  <a href="http://www.gnu.org/licenses/fdl-1.3.html" class="external"
  rel="nofollow">a GNU Free Documentation License</a> unless otherwise
  noted.</span>

<!-- -->

- <span id="footer-places-about">[About
  GMOD](../GMOD%3AAbout "GMOD%3AAbout")</span>

<!-- -->



