<div id="mw-page-base" class="noprint">

</div>

<div id="mw-head-base" class="noprint">

</div>

<div id="content" class="mw-body" role="main">

<span id="top"></span>

<div id="mw-js-message" style="display:none;">

</div>



# <span dir="auto">Modware</span>

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

<a href="http://gmod-ware.sourceforge.net/" rel="nofollow"
title="Modware"><img
src="../mediawiki/images/thumb/e/e3/ModwareLogo.png/300px-ModwareLogo.png"
srcset="../mediawiki/images/e/e3/ModwareLogo.png 1.5x, ../mediawiki/images/e/e3/ModwareLogo.png 2x"
width="300" height="158" alt="Modware" /></a>

</div>

</div>

<div style="float: right; padding-left: 1em; padding-bottom: 1em;">

<div id="toc" class="toc">

<div id="toctitle">

## Contents

</div>

- [<span class="tocnumber">1</span>
  <span class="toctext">Status</span>](#Status)
- [<span class="tocnumber">2</span> <span class="toctext">Getting
  Started</span>](#Getting_Started)
- [<span class="tocnumber">3</span> <span class="toctext">Feedback
  Wanted</span>](#Feedback_Wanted)
- [<span class="tocnumber">4</span>
  <span class="toctext">Acknowledgments</span>](#Acknowledgments)
- [<span class="tocnumber">5</span>
  <span class="toctext">Support</span>](#Support)

</div>

</div>

<a href="http://gmod-ware.sourceforge.net/" class="external text"
rel="nofollow">Modware</a> is an object-oriented Perl API for
<a href="Chado" class="mw-redirect" title="Chado">Chado</a>. It allows
object-oriented querying and loading of a
<a href="Chado" class="mw-redirect" title="Chado">Chado</a> database and
returns data structures that a programmer can readily use without
knowing the details of how the object is stored in the relational
schema.

Many bioinformatics programmers are familiar with the
<a href="http://search.cpan.org/perldoc?Bio::SeqFeature"
class="external text" rel="nofollow">Bio::SeqFeature</a> object system
for representing biological features in BioPerl. Modware utilizes this
framework for easy programmatic access and manipulation of biological
features directly from Chado.

Please use our bug tracker on
<a href="http://sourceforge.net/tracker/?group_id=94245"
class="external text" rel="nofollow">SourceForge</a> to report bugs and
feature reqeusts.

- For a wiki-ized version of a presentation done at the GMOD meeting in
  January 2007: [Modware
  Presentation](Modware_Presentation "Modware Presentation")
- For a VERY quick tour of the kinds of things you can do with Modware,
  check out the
  <a href="http://gmod-ware.sourceforge.net/some_use_cases.html"
  class="external text" rel="nofollow">Examples Page</a>
- For detailed documentation on the API, check out the
  <a href="http://gmod-ware.sourceforge.net/doc/" class="external text"
  rel="nofollow">API docs</a>.
- To download Modware and [CVS](Glossary#CVS "Glossary") access, go to
  the <a href="http://sourceforge.net/projects/gmod-ware"
  class="external text" rel="nofollow">Project page</a>.
- For a general discussion of GMOD Middleware: [GMOD
  Middleware](GMOD_Middleware "GMOD Middleware")

## <span id="Status" class="mw-headline">Status</span>

Good news and update on the current status of Modware development.
Modware is getting back on track and is currently being actively
developed at <a href="http://dictybase.org" class="external text"
rel="nofollow">dictyBase</a> since last few months. It is being written
using
<a href="http://search.cpan.org/perldoc?Moose" class="external text"
rel="nofollow">Moose</a> and
<a href="http://search.cpan.org/perldoc?DBIx::Class"
class="external text" rel="nofollow">DBIx::Class</a> (more precisely
[Bio%3A%3AChado%3A%3ASchema](Bio%3A%3AChado%3A%3ASchema "Bio%3A%3AChado%3A%3ASchema") or BCS)
[ORM](Glossary#ORM "Glossary"). This part of development is done in sync
with dictyBase's major data migration project which includes literature
and gene ontology annotations. So, the first release of this new version
is expected to deal with publication and ontology datasets in
<a href="Chado" class="mw-redirect" title="Chado">Chado</a>. Handling of
feature module will be added after the first release gets settled down.
Like any other standard Perl module Modware's public release will be
available from CPAN and the bleeding edge can be grabbed from
<a href="http://github.com/cybersiddhu/Modware" class="external text"
rel="nofollow">github</a>.

Relevant documentations and guidelines will also be added to this wiki.
The first CPAN release is expected to be early next year.

*Siddhartha Basu, Modware developer,
[dictyBase](Category:DictyBase "Category:DictyBase"), 2010/10/28*

## <span id="Getting_Started" class="mw-headline">Getting Started</span>

- Install [Chado](Chado_-_Getting_Started "Chado - Getting Started")
- Install Modware, and there is an option to `make install_sample` that
  will install the Dictyostelium Genome
- Explore the API documentation and ask questions to
  <a href="mailto:gmod-ware-users@lists.sourceforge.net"
  class="external text"
  rel="nofollow">gmod-ware-users@lists.sourceforge.net</a>.

  

## <span id="Feedback_Wanted" class="mw-headline">Feedback Wanted</span>

Recently, a VMware Virutal Machine was released to make download and
testing of a fully configured and installed version of Modware
available. Modware developers continue to add new features, including
representation of BLAST hits (currently on CVS HEAD).

One critical piece of the project that is missing is feedback from the
community. If you are interested in a Chado API, please download the
Modware Virtual Machine found on the
<a href="http://gmod-ware.sourceforge.net" class="external text"
rel="nofollow">Modware home page</a> and give it a try. Email all
feature requests, questions, and comments to
<a href="mailto:gmod-ware-users@sourceforge.net" class="external text"
rel="nofollow">gmod-ware-users@sourceforge.net</a>.

  

## <span id="Acknowledgments" class="mw-headline">Acknowledgments</span>

This software was developed for dictyBase at the Center for Genetic
Medicine at Northwestern University, which is funded by NIH Grants
GM64426 and HG0022.

  

## <span id="Support" class="mw-headline">Support</span>

|  |  |  |  |
|----|----|----|----|
|  | Mailing List Link | Description | Archive(s) |
| **Modware** | <a href="https://lists.sourceforge.net/lists/listinfo/gmod-ware-users"
class="external text" rel="nofollow">gmod-ware-users</a> | **Modware** support and developer mailing list. | <a href="http://gmod.827538.n3.nabble.com/Modware-f887754.html"
class="external text" rel="nofollow">Nabble</a> (2010/05+), <a
href="https://sourceforge.net/mailarchive/forum.php?forum_name=gmod-ware-users"
class="external text" rel="nofollow">Sourceforge</a> |

</div>

<div class="printfooter">

Retrieved from
"<http://gmod.org/mediawiki/index.php?title=Modware&oldid=24355>"

</div>

<div id="catlinks" class="catlinks">

<div id="mw-normal-catlinks" class="mw-normal-catlinks">

[Categories](Special:Categories "Special:Categories"):

- [DictyBase](Category:DictyBase "Category:DictyBase")
- [GMOD Components](Category:GMOD_Components "Category:GMOD Components")
- [Middleware](Category:Middleware "Category:Middleware")
- [Modware](Category:Modware "Category:Modware")

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
  href="http://gmod.org/mediawiki/index.php?title=Talk:Modware&amp;action=edit&amp;redlink=1"
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


- <span id="t-smwbrowselink"><a href="Special:Browse/Modware" rel="smw-browse">Browse properties</a></span>


</div>

</div>

</div>

</div>

<div id="footer" role="contentinfo">

- <span id="footer-info-lastmod">Last updated at 23:01 on 15 August
  2013.</span>
<!-- - <span id="footer-info-viewcount">112,690 page views.</span> -->
- <span id="footer-info-copyright">Content is available under
  <a href="http://www.gnu.org/licenses/fdl-1.3.html" class="external"
  rel="nofollow">a GNU Free Documentation License</a> unless otherwise
  noted.</span>

<!-- -->

- <span id="footer-places-about">[About
  GMOD](GMOD:About "GMOD:About")</span>

<!-- -->






</div>
