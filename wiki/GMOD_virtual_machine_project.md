<div id="mw-page-base" class="noprint">

</div>

<div id="mw-head-base" class="noprint">

</div>

<div id="content" class="mw-body" role="main">

<span id="top"></span>

<div id="mw-js-message" style="display:none;">

</div>



# <span dir="auto">GMOD virtual machine project</span>

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

> The item described in this page is not (or is no longer) supported by
> the GMOD project.  
> This page is included only for reference purposes.

<div class="emphasisbox">

The people who created and maintained these VMware images have moved on
to other things, and ***the VMware images described here are no longer
available.***

VMware images still exist in GMOD in several places. See:

- [VMware HOWTO](VMware_HOWTO "VMware HOWTO")
- [Tutorials](Category:Tutorials "Category:Tutorials")
- [Community Annotation
  System](Community_Annotation_System "Community Annotation System")

</div>

Initial versions of GMOD virtual machines have been uploaded/documented
at the
<a href="VMWare_HOWTO" class="mw-redirect" title="VMWare HOWTO">VMWare
HOWTO</a>. The [Community Annotation
System](Community_Annotation_System "Community Annotation System") is an
example GMOD virtual machine.

This page is for discussion on creating a GMOD virtual machine. The idea
was initiated by an email to the GMOD-devel, schema and gbrowse [mailing
lists](GMOD_Mailing_Lists "GMOD Mailing Lists"):

Hello,

Recently, the people in my lab have been experimenting a lot with VMware
for creating virtual machines. I am excited about the potential uses for
these virtual machines for several purposes, among them the ability to
create a consistent platform for teaching (like giving a classroom a
disk with the VMware player and a linux VM with
[GBrowse](GBrowse.1 "GBrowse") preinstalled to give a tutorial), and for
creating virtual machines that could be used as a 'test server' that
people interested in GMOD software could get and try out without having
to set up a server to do it. That is what this email is about.

My goal is two-fold: first I am looking for volunteers. If anybody would
like to under take the task of creating a virtual machine and populate
it with GMOD software and sample data, I would be thrilled to give
guidance and moral support.

Second, I want to get feedback on what should be installed. There is
both the question of sample data and software. Here are my thoughts so
far:

     Chado and related core components (version 0.5 when released)*
     XORT                              (0.5 when released)*
     GBrowse                           (1.68 when released)**
     Apollo                            (1.6.5)
     CMap                              (? Most recent?)
     Turnkey/gmod-web                  (? most recent?)
     BLAST graphic viewer              (? most recent?)

Also, there are some things 'on the bubble' that I haven't decided
whether they should be installed:

     Sybil
     Flash GViewer
     Textpresso
     BioMart
     DAS2 server

Any thoughts on these?

Thanks for your time, Scott

- Ian Holmes suggested their extentions to GBrowse
  ([AJAX](Category:AJAX "Category:AJAX") and wiki).
- Eric Just suggested [Modware](Modware "Modware").

## <span id="About_.27when_released.27" class="mw-headline">About 'when released'</span>

- Work is on going on Chado core compoents, notably getting a conversion
  from GFF3 to [chadoxml](Chado_XML "Chado XML") which will require
  changes to XORT.
- There have been a few fixes to the
  <a href="GBrowse_adaptors" class="mw-redirect"
  title="GBrowse adaptors">chado adaptor in GBrowse</a>, so it should
  get a new release soon

Also see [Community Annotation
System](Community_Annotation_System "Community Annotation System").

</div>

<div class="printfooter">

Retrieved from
"<http://gmod.org/mediawiki/index.php?title=GMOD_virtual_machine_project&oldid=9540>"

</div>

<div id="catlinks" class="catlinks">

<div id="mw-normal-catlinks" class="mw-normal-catlinks">

[Category](Special:Categories "Special:Categories"):

- [Unsupported](Category:Unsupported "Category:Unsupported")

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

- <span id="ca-nstab-main"><a href="GMOD_virtual_machine_project" accesskey="c"
  title="View the content page [c]">Page</a></span>
- <span id="ca-talk"><a
  href="http://gmod.org/mediawiki/index.php?title=Talk:GMOD_virtual_machine_project&amp;action=edit&amp;redlink=1"
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


- <span id="t-smwbrowselink"><a href="Special:Browse/GMOD_virtual_machine_project"
  rel="smw-browse">Browse properties</a></span>


</div>

</div>

</div>

</div>

<div id="footer" role="contentinfo">

- <span id="footer-info-lastmod">Last updated at 17:21 on 24 September
  2009.</span>
<!-- - <span id="footer-info-viewcount">31,637 page views.</span> -->
- <span id="footer-info-copyright">Content is available under
  <a href="http://www.gnu.org/licenses/fdl-1.3.html" class="external"
  rel="nofollow">a GNU Free Documentation License</a> unless otherwise
  noted.</span>

<!-- -->

- <span id="footer-places-about">[About
  GMOD](GMOD:About "GMOD:About")</span>

<!-- -->






</div>
