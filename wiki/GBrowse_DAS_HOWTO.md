<div id="mw-page-base" class="noprint">

</div>

<div id="mw-head-base" class="noprint">

</div>

<div id="content" class="mw-body" role="main">

<span id="top"></span>

<div id="mw-js-message" style="display:none;">

</div>



# <span dir="auto">GBrowse DAS HOWTO</span>

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

The Distributed Annotation System protocol (DAS;
<a href="http://www.biodas.org" class="external free"
rel="nofollow">http://www.biodas.org</a>) is a system for exchanging
genomic annotations across the Internet. It works similarly to the idea
of sharing the URLs of web-accessible GFF files, except that it is
designed to support large data sets. When a client application needs to
fetch just a subset of the data, such as a small piece of a chromosomal
arm, the DAS protocol allows only the relevant annotations to be
retrieved, rather than the whole data set.

## <span id="Installation" class="mw-headline">Installation</span>

To take advantage of DAS functionality, you will have to install the
Perl Bio::Das module. This is available from CPAN (the Comprehensive
Perl Archive Network
(<a href="http://www.cpan.org" class="external free"
rel="nofollow">http://www.cpan.org</a>) or from the GMOD PPM repository.
Unix users can install Bio::Das with this command:

    % perl -MCPAN -e 'install Bio::Das'
    Windows users can use the PPM tool:

    C:\Windows> ppm
    ppm> install Bio::Das
    ppm> quit

You may need to issue the command "rep add gmod
<a href="http://www.gmod.org/ggb/ppm" class="external free"
rel="nofollow">http://www.gmod.org/ggb/ppm</a>" if PPM complains that it
cannot find Bio::Das.

## <span id="A_Tutorial" class="mw-headline">A Tutorial</span>

We start out with a short tutorial that illustrates how GBrowse DAS
support works.

When you installed GBrowse, the system also installed a series of
tutorial files, the location of which you can find at
<a href="http://localhost/gbrowse2" class="external free"
rel="nofollow">http://localhost/gbrowse2</a>. We will use the *C.
elegans core* tutorial database as the basis for creating a DAS server.

To start, find the elegans_core.conf configuration file in the tutorial
**conf** directory and copy it to your GBrowse2 configuration directory
(typically /etc/gbrowse2). Edit the master /etc/gbrowse2/GBrowse.conf
configuration file to load this file by adding the following to the end
(if it is not there already from previous tutorials):

    [elegans_core]
    description = Core C. elegans annotations
    path        = elegans_core.conf

To enable the DAS server, add the following somewhere within the
\[GENERAL\] section of the elegans_core.conf file:

    # DAS reference server
    das mapmaster      = SELF

What this line is doing is to declare to the DAS system that our server
is authoritative for the coordinates on the current C. elegans genome
example. This is appropriate if you are starting out a genome for the
first time. If, however, you want to annotate against an existing set of
genome coordinates, you should replace SELF with the URL of the DAS
reference server that serves that genome. For example release hg16 of
the human genome at UCSC corresponds to DAS URL
<a href="http://genome.cse.ucsc.edu/cgi-bin/das" class="external free"
rel="nofollow">http://genome.cse.ucsc.edu/cgi-bin/das</a>. A list of
reference servers for various model organisms can be found at
<a href="http://www.biodas.org" class="external free"
rel="nofollow">http://www.biodas.org</a>.

The next step is to go through the configured tracks and add a "das
category" to each of them. DAS uses the idea of the "category" of a
feature in order to filter sets of features by their purpose. Categories
include:

|  |  |
|----|----|
| transcription | features that have to do with RNA transcription |
| translation | features that have to do with protein translation and function |
| variation | mutations, deletions, polymorphisms |
| structural | contigs, clones, reads, PCR primers |
| repeat | repetitive elements |
| experimental | a catch-all for experimental data |
| miscellaneous | anything that doesn't fit in one fo the other categories |

Find the \[Genes\] stanza and modify it to to have a das category of
"transcription" as shown here:

    [Genes]
    feature      = gene
    glyph        = gene
    height       = 8
    bgcolor      = blue
    description  = 1
    das category = transcription
    key          = Protein-coding genes

Similarly, modify the \[Alignments\] track to have a das category of
"similarity." You do not need to add a category to the DNA track, as it
is treated specially by das. You're all done! Be sure to save the
configuration file before you try the next step.

Using a web browser fetch the URL
<a href="http://localhost/cgi-bin/gb2/das/dsn" class="external free"
rel="nofollow">http://localhost/cgi-bin/gb2/das/dsn</a>. This will
return an XML document giving information about each of the data sources
that you have configured.

    <?xml version="1.0" standalone="yes"?>
    <!DOCTYPE DASDSN SYSTEM "http://www.biodas.org/dtd/dasdsn.dtd">
    <DASDSN>
      <DSN>

<div id="elegans_core.7CGenes" class="mw-geshi mw-code mw-content-ltr"
dir="ltr">

<div class="bash source-bash">

``` de1
elegans_core|Genes
```

</div>

</div>

         <MAPMASTER>http://localhost/cgi-bin/gb2/das/elegans_core</MAPMASTER>
         <DESCRIPTION>Core C. elegans annotations; Genes track; Protein-coding genes</DESCRIPTION>
      </DSN>
      <DSN>

<div id="elegans_core.7CAlignments"
class="mw-geshi mw-code mw-content-ltr" dir="ltr">

<div class="bash source-bash">

``` de1
elegans_core|Alignments
```

</div>

</div>

         <MAPMASTER>http://localhost/cgi-bin/gb2/das/elegans_core</MAPMASTER>
         <DESCRIPTION>elegans_core; Alignments track; ESTs</DESCRIPTION>
      </DSN>
    </DASDSN>

This is showing that there is one configured DAS source, the
"elegans_core" data set. Next test that the DAS "types" request is
working. This request returns all the feature types that the database
knows about. Using a web browser fetch the URL
<a href="http://localhost/cgi-bin/gb2/das/elegans_core%7CGenes/types"
class="external free"
rel="nofollow">http://localhost/cgi-bin/gb2/das/elegans_core%7CGenes/types</a>.
This should return another short document confirming that the "gene"
feature type is available.

The final test that the DAS server is performing correctly is to browse
to the elegans_core database and to turn off all the tracks except for
DNA/GC content. This should give you an empty details panel. Open up the
"Upload and Share Tracks" tab, press "Import a Track URL", and type in
<a href="http://localhost/cgi-bin/gb2/das/elegans_core%7CGenes"
class="external free"
rel="nofollow">http://localhost/cgi-bin/gb2/das/elegans_core%7CGenes</a>
and press "Update URLs." The page should now reload and display the gene
models. Do this again with
<a href="http://localhost/cgi-bin/gb2/das/elegans_core%7CAlignments"
class="external free"
rel="nofollow">http://localhost/cgi-bin/gb2/das/elegans_core%7CAlignments</a>
in order to view the alignments. These tracks are not coming directly
from the local database, but from the database via the DAS protocol.

</div>

<div class="printfooter">

Retrieved from
"<http://gmod.org/mediawiki/index.php?title=GBrowse_DAS_HOWTO&oldid=13479>"

</div>

<div id="catlinks" class="catlinks">

<div id="mw-normal-catlinks" class="mw-normal-catlinks">

[Category](Special%3ACategories "Special%3ACategories"):

- [MOD User
  Interfaces](Category%3AMOD_User_Interfaces "Category%3AMOD User Interfaces")

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
  href="http://gmod.org/mediawiki/index.php?title=Talk%3AGBrowse_DAS_HOWTO&amp;action=edit&amp;redlink=1"
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
- <span id="n-FAQs">[FAQs](Category%3AFAQ)</span>
- <span id="n-HOWTOs">[HOWTOs](Category%3AHOWTO)</span>
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


- <span id="t-smwbrowselink"><a href="Special%3ABrowse/GBrowse_DAS_HOWTO" rel="smw-browse">Browse
  properties</a></span>


</div>

</div>

</div>

</div>

<div id="footer" role="contentinfo">

- <span id="footer-info-lastmod">Last updated at 20:15 on 8 July
  2010.</span>
<!-- - <span id="footer-info-viewcount">20,076 page views.</span> -->
- <span id="footer-info-copyright">Content is available under
  <a href="http://www.gnu.org/licenses/fdl-1.3.html" class="external"
  rel="nofollow">a GNU Free Documentation License</a> unless otherwise
  noted.</span>

<!-- -->

- <span id="footer-places-about">[About
  GMOD](GMOD%3AAbout "GMOD%3AAbout")</span>

<!-- -->






</div>
