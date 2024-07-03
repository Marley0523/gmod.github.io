<div id="mw-page-base" class="noprint">

</div>

<div id="mw-head-base" class="noprint">

</div>

<div id="content" class="mw-body" role="main">

<span id="top"></span>

<div id="mw-js-message" style="display:none;">

</div>



# <span dir="auto">Chado Update via GFF</span>

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

There has frequently been interest in updating a
<a href="Chado" class="mw-redirect" title="Chado">Chado</a> database
using a [GFF](GFF "GFF") file, and I've finally gotten around to trying
to implement it. My initial efforts were centered around converting GFF
to [Chado XML](Chado_XML "Chado XML") using
<a href="http://bioperl.org/wiki/Module:Bio::SeqIO::chadoxml"
class="external text" rel="nofollow">Bio::SeqIO::chadoxml</a>, but I was
never completely satisfied with the result, and I was unable to load it
with [XORT](XORT.1 "XORT") or
<a href="http://search.cpan.org/perldoc?DBIx::DBStag"
class="external text" rel="nofollow">DBIx::DBStag</a>. So, I've decided
to work on the [GFF3](GFF3 "GFF3") bulk loader `gmod_bulk_load_gff3.pl`
to have it do updates and deletes as well. Accordingly, I've identified
these cases that should be addressed:

<div id="toc" class="toc">

<div id="toctitle">

## Contents

</div>

- [<span class="tocnumber">1</span> <span class="toctext">Updating
  properties</span>](#Updating_properties)
- [<span class="tocnumber">2</span> <span class="toctext">Updating
  feature locations</span>](#Updating_feature_locations)
- [<span class="tocnumber">3</span> <span class="toctext">Updating
  complete gene models</span>](#Updating_complete_gene_models)
- [<span class="tocnumber">4</span> <span class="toctext">Deleting
  features</span>](#Deleting_features)
- [<span class="tocnumber">5</span>
  <span class="toctext">Comments</span>](#Comments)

</div>

# <span id="Updating_properties" class="mw-headline">Updating properties</span>

Perhaps the simplest case is when updating feature properties (for
purposes of this discussion, 'feature properties' encompasses items in
the
[featureprop](Chado_Sequence_Module#Table:_featureprop "Chado Sequence Module"),
[feature_cvterm](Chado_Sequence_Module#Table:_feature_cvterm "Chado Sequence Module")
and
[feature_dbxref](Chado_Sequence_Module#Table:_feature_dbxref "Chado Sequence Module")
tables) is desired, nevertheless, it poses some possible hang ups. For
instance:

- What should happen to the properties already there? Would they be
  uniformly deleted (bad), marked 'not current' (only partially
  possible) or just left there? Currently, the feature_dbxref table has
  an is_current column, but featureprop and feature_cvterm do not.
- This is true of all updates and deletes: how to decide that the
  feature is the same? Is the Name enough? What about Name and type?
  Name, type and srcfeature/seq_id?

# <span id="Updating_feature_locations" class="mw-headline">Updating feature locations</span>

If name, type and srcfeature are the same, allow
[featureloc](Chado_Sequence_Module#Table:_featureloc "Chado Sequence Module")
updates?

# <span id="Updating_complete_gene_models" class="mw-headline">Updating complete gene models</span>

If updating child features, what happens to the old features? Remove
their
[featureloc](Chado_Sequence_Module#Table:_featureloc "Chado Sequence Module")
entries and create completely new children? Only allow this for features
of type 'gene'?

# <span id="Deleting_features" class="mw-headline">Deleting features</span>

Again, if name, type and srcfeature are the same, allow the delete?

# <span id="Comments" class="mw-headline">Comments</span>

- I'd say the most useful cases for many folks would be (a) add
  annotations/properties to main gene features, and (b) delete then
  reload existing gene features (with new primary data: locations,
  sequence, etc). These two abilities would handle many uses for
  annotating new genomes: adding more dbxrefs, properties, etc. to
  existing gene features, and ability to update selected features by
  drop/replace. For the second case, if one can **Delete** via a
  [GFF](GFF "GFF") entry, it should be easy to also **Update** the
  complete gene model.
- For GFF input to handle these, I'd say lines like this should be able
  to trigger updates to an existing feature, where CRUDop is your
  database Create/Replace/Update/Drop operation.

<!-- -->

     RefChr  Source  Type  (st) (en) (sc) (st) (ph)   Attributes
     ChrX    MyDB    gene    .    .   .    .    .      ID=MyGene1;CRUDop=DROP
     ChrX    MyDB    gene    .    .   .    .    .      ID=MyGene2;CRUDop=UPDATE;Dbxref=SW:U1234
     ChrX    MyDB    gene    1    2   9    -    .      ID=MyGene3;CRUDop=REPLACE;Dbxref=SW:U1234;..more..

[Dongilbert](User%3ADongilbert "User%3ADongilbert") 16:48, 30 March 2007
(EDT)

</div>

<div class="printfooter">

Retrieved from
"<http://gmod.org/mediawiki/index.php?title=Chado_Update_via_GFF&oldid=6672>"

</div>

<div id="catlinks" class="catlinks">

<div id="mw-normal-catlinks" class="mw-normal-catlinks">

[Category](Special%3ACategories "Special%3ACategories"):

- [Chado](Category%3AChado "Category%3AChado")

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
  href="http://gmod.org/mediawiki/index.php?title=Talk:Chado_Update_via_GFF&amp;action=edit&amp;redlink=1"
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


- <span id="t-smwbrowselink"><a href="Special%3ABrowse/Chado_Update_via_GFF" rel="smw-browse">Browse
  properties</a></span>


</div>

</div>

</div>

</div>

<div id="footer" role="contentinfo">

- <span id="footer-info-lastmod">Last updated at 19:23 on 30 December
  2008.</span>
<!-- - <span id="footer-info-viewcount">22,192 page views.</span> -->
- <span id="footer-info-copyright">Content is available under
  <a href="http://www.gnu.org/licenses/fdl-1.3.html" class="external"
  rel="nofollow">a GNU Free Documentation License</a> unless otherwise
  noted.</span>

<!-- -->

- <span id="footer-places-about">[About
  GMOD](GMOD:About "GMOD:About")</span>

<!-- -->






</div>
