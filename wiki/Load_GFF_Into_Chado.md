<div id="mw-page-base" class="noprint">

</div>

<div id="mw-head-base" class="noprint">

</div>

<div id="content" class="mw-body" role="main">

<span id="top"></span>

<div id="mw-js-message" style="display:none;">

</div>



# <span dir="auto">Load GFF Into Chado</span>

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

This [HOWTO](Category:HOWTO "Category:HOWTO") describes a method for
loading sequence annotation data in [GFF3](GFF3 "GFF3") format into a
[Chado database](Chado_-_Getting_Started "Chado - Getting Started").

<div id="toc" class="toc">

<div id="toctitle">

## Contents

</div>

- [<span class="tocnumber">1</span> <span class="toctext">Download the
  GFF3 Files</span>](#Download_the_GFF3_Files)
- [<span class="tocnumber">2</span> <span class="toctext">Add an Entry
  for Your Organism</span>](#Add_an_Entry_for_Your_Organism)
- [<span class="tocnumber">3</span> <span class="toctext">Load the
  GFF3</span>](#Load_the_GFF3)
- [<span class="tocnumber">4</span> <span class="toctext">Creating GFF3
  from UniProt/SwissProt
  Files</span>](#Creating_GFF3_from_UniProt.2FSwissProt_Files)
- [<span class="tocnumber">5</span> <span class="toctext">More
  Information</span>](#More_Information)
- [<span class="tocnumber">6</span>
  <span class="toctext">Authors</span>](#Authors)

</div>

## <span id="Download_the_GFF3_Files" class="mw-headline">Download the GFF3 Files</span>

An easy way to load data into the database is to use a
[GFF3](GFF3 "GFF3") file and the script
`load/bin/gmod_bulk_load_gff3.pl`. A good set of sample data is the GFF3
file prepared by the nice folks at the [Saccharomyces Genome
Database](Category:SGD "Category:SGD"):

<a
href="http://downloads.yeastgenome.org/curation/chromosomal_feature/saccharomyces_cerevisiae.gff"
class="external free"
rel="nofollow">http://downloads.yeastgenome.org/curation/chromosomal_feature/saccharomyces_cerevisiae.gff</a>

This file contains
<a href="http://geneontology.org" class="external text"
rel="nofollow">Gene Ontology (GO)</a> annotations, so if you didn't load
GO when you executed `make ontologies` you will get many warning
messages about being unable to find entries in the
[dbxref](Chado_Tables#Table:_dbxref "Chado Tables") table. If you want
to load GO you should be able to execute `make ontologies` and select
**Gene Ontology** for installation.

## <span id="Add_an_Entry_for_Your_Organism" class="mw-headline">Add an Entry for Your Organism</span>

You will need to have an entry for your species in the [Chado organism
table](Chado_Tables#Table:_organism "Chado Tables"). To add a new
organism, run the tool that came with Chado, `gmod_add_organism.pl`

This script will ask you what information about your organism:

     Both genus and species are required; please provide them below

     Organism's genus?  
     Organism's species?  
     Organism's abbreviation? [] 
     Comment (can be empty)?

## <span id="Load_the_GFF3" class="mw-headline">Load the GFF3</span>

Unless your [GFF3](GFF3 "GFF3") is sorted by location with grouped gene
models (gene, mRNA, CDS/exon/UTR), you must first do this. Use this <a
href="http://gmod.cvs.sourceforge.net/*checkout*/gmod/schema/chado/bin/gmod_gff3_preprocessor.pl"
class="external text" rel="nofollow">gmod_gff3_preprocessor.pl</a>.

    > gmod_gff3_preprocessor.pl --gfffile saccharomyces_cerevisiae.gff --outfile saccharomyces_cerevisiae.sorted.gff

Then execute `gmod_bulk_load_gff3.pl`:

    >gmod_bulk_load_gff3.pl --organism yeast  --gfffile saccharomyces_cerevisiae.sorted.gff

This loads the [GFF3](GFF3 "GFF3") file. The loading script requires
[GFF3](GFF3 "GFF3") as it has tighter control of the syntax and requires
the use of a controlled vocabulary (from
<a href="http://sequenceontology.org" class="external text"
rel="nofollow">Sequence Ontology Feature Annotation (SOFA)</a>),
allowing mapping to the relational schema. In addition to supplying the
location of the file with the `--gfffile` flag, the `--organism` tag
uses the common name (`common_name` field) from the [Chado organism
table](Chado_Tables#Table:_organism "Chado Tables"). Do
`perldoc gmod_bulk_load_gff.pl` for more information on adding other
organisms and databases, as well as other available command line flags.

Note that `gmod_load_gff3.pl` is also available, but is limited in how
much it has been supported and in how flexible it currently is. It is a
good example of how to write code using
<a href="http://search.cpan.org/perldoc?Class::DBI"
class="external text" rel="nofollow">Class::DBI</a> classes that are
created at the time of install. For more information on using these
classes, see [Modware](Modware "Modware") for a
<a href="http://search.cpan.org/perldoc?Class::DBI"
class="external text" rel="nofollow">Class::DBI</a>-based
[middleware/API](Category:Middleware "Category:Middleware").

## <span id="Creating_GFF3_from_UniProt.2FSwissProt_Files" class="mw-headline">Creating GFF3 from UniProt/SwissProt Files</span>

A recent update (April 2007) to `bp_genbank2gff3.pl` extends it to
handle Swiss and EMBL format input, along with GenBank. You can now
create [GFF3](GFF3 "GFF3") entries of UniProt sequences suited to
loading into
<a href="Chado" class="mw-redirect" title="Chado">Chado</a>, including
most of the protein description, Dbxref, and related fields useful in
annotating genome matches. Use the `--format Uniprot` flag to specify
this input format (`--format EMBL` can also be useful).

      >bp_genbank2gff3.pl --noCDS --in uniprot-subset.dat --format Uniprot
      >gmod_bulk_load_gff3.pl --database mygenome --gff  uniprot-subset.dat.gff --organism fromdata

Use the `--organism fromdata` flag to load UniProt with many organisms.

> **This code needs to be tested.** <span class="small">Please help <a
> href="http://gmod.org/mediawiki/index.php?title=Load_GFF_Into_Chado&amp;action=edit"
> class="external text" rel="nofollow">improve this section</a> with
> your tests.</span>

## <span id="More_Information" class="mw-headline">More Information</span>

See the related HOWTO [Load RefSeq Into
Chado](Load_RefSeq_Into_Chado "Load RefSeq Into Chado").

Please send questions to the GMOD developers list:

<a href="mailto:gmod-devel@lists.sourceforge.net" class="external text"
rel="nofollow">gmod-devel@lists.sourceforge.net</a>

Or contact the [GMOD Help Desk](GMOD_Help_Desk "GMOD Help Desk")

## <span id="Authors" class="mw-headline">Authors</span>

- [Scott Cain](User:Scott "User:Scott")
- <a href="http://www.bioperl.org/wiki/Brian_Osborne" class="extiw"
  title="bp:Brian Osborne">Brian Osborne</a>

</div>

<div class="printfooter">

Retrieved from
"<http://gmod.org/mediawiki/index.php?title=Load_GFF_Into_Chado&oldid=26752>"

</div>

<div id="catlinks" class="catlinks">

<div id="mw-normal-catlinks" class="mw-normal-catlinks">

[Categories](Special:Categories "Special:Categories"):

- [Needs Testing](Category:Needs_Testing "Category:Needs Testing")
- [HOWTO](Category:HOWTO "Category:HOWTO")
- [Chado](Category:Chado "Category:Chado")

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

- <span id="ca-nstab-main"><a href="Load_GFF_Into_Chado" accesskey="c"
  title="View the content page [c]">Page</a></span>
- <span id="ca-talk"><a
  href="http://gmod.org/mediawiki/index.php?title=Talk:Load_GFF_Into_Chado&amp;action=edit&amp;redlink=1"
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

- <span id="t-whatlinkshere"><a href="Special:WhatLinksHere/Load_GFF_Into_Chado" accesskey="j"
  title="A list of all wiki pages that link here [j]">What links here</a></span>
- <span id="t-recentchangeslinked"><a href="Special:RecentChangesLinked/Load_GFF_Into_Chado" accesskey="k"
  title="Recent changes in pages linked from this page [k]">Related
  changes</a></span>
- <span id="t-specialpages"><a href="Special:SpecialPages" accesskey="q"
  title="A list of all special pages [q]">Special pages</a></span>
- <span id="t-print"><a
  href="http://gmod.org/mediawiki/index.php?title=Load_GFF_Into_Chado&amp;printable=yes"
  rel="alternate" accesskey="p"
  title="Printable version of this page [p]">Printable version</a></span>
- <span id="t-permalink">[Permanent
  link](http://gmod.org/mediawiki/index.php?title=Load_GFF_Into_Chado&oldid=26752 "Permanent link to this revision of the page")</span>
- <span id="t-info">[Page
  information](http://gmod.org/mediawiki/index.php?title=Load_GFF_Into_Chado&action=info)</span>
- <span id="t-smwbrowselink"><a href="Special:Browse/Load_GFF_Into_Chado" rel="smw-browse">Browse
  properties</a></span>
- <span id="t-pdf">[Print as
  PDF](http://gmod.org/mediawiki/index.php?title=Special:PdfPrint&page=Load_GFF_Into_Chado)</span>

</div>

</div>

</div>

</div>

<div id="footer" role="contentinfo">

- <span id="footer-info-lastmod">Last updated at 15:43 on 20 July
  2015.</span>
- <span id="footer-info-viewcount">151,008 page views.</span>
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
