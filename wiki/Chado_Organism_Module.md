<div id="mw-page-base" class="noprint">

</div>

<div id="mw-head-base" class="noprint">

</div>

<div id="content" class="mw-body" role="main">

<span id="top"></span>

<div id="mw-js-message" style="display:none;">

</div>



# <span dir="auto">Chado Organism Module</span>

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

<div id="toc" class="toc">

<div id="toctitle">

## Contents

</div>

- [<span class="tocnumber">1</span>
  <span class="toctext">Introduction</span>](#Introduction)
- [<span class="tocnumber">2</span> <span class="toctext">More
  Information</span>](#More_Information)
- [<span class="tocnumber">3</span>
  <span class="toctext">Tables</span>](#Tables)
  - [<span class="tocnumber">3.1</span> <span class="toctext">Table:
    organism</span>](#Table:_organism)
  - [<span class="tocnumber">3.2</span> <span class="toctext">Table:
    organism_dbxref</span>](#Table:_organism_dbxref)
  - [<span class="tocnumber">3.3</span> <span class="toctext">Table:
    organismprop</span>](#Table:_organismprop)

</div>

# <span id="Introduction" class="mw-headline">Introduction</span>

The organism module is designed to hold information about a given
species, as such it is fairly simple.

  

# <span id="More_Information" class="mw-headline">More Information</span>

See the page on the related [Phylogeny
module](Chado_Phylogeny_Module "Chado Phylogeny Module"). The phylogeny
module is designed for phylogenetic trees and taxonomies.

# <span id="Tables" class="mw-headline">Tables</span>

## <span id="Table:_organism" class="mw-headline">Table: organism</span>

The organismal taxonomic classification. Note that phylogenies are
represented using the phylogeny module, and taxonomies can be
represented using the cvterm module or the phylogeny module.

<table data-border="1" data-cellpadding="3">
<caption>organism Structure</caption>
<colgroup>
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
</colgroup>
<thead>
<tr class="header">
<th>FK</th>
<th>Name</th>
<th>Type</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd tr0">
<td></td>
<td>organism_id</td>
<td>serial</td>
<td><em>PRIMARY KEY</em></td>
</tr>
<tr class="even tr1">
<td></td>
<td>abbreviation</td>
<td>character varying(255)</td>
<td><em></em></td>
</tr>
<tr class="odd tr0">
<td></td>
<td>genus</td>
<td>character varying(255)</td>
<td><em>UNIQUE#1 NOT NULL</em></td>
</tr>
<tr class="even tr1">
<td></td>
<td>species</td>
<td>character varying(255)</td>
<td><em>UNIQUE#1 NOT NULL</em><br />
<br />
A type of organism is always uniquely identified by genus and species.
When mapping from the NCBI taxonomy names.dmp file, this column must be
used where it is present, as the common_name column is not always unique
(e.g. environmental samples). If a particular strain or subspecies is to
be represented, this is appended onto the species name. Follows standard
NCBI taxonomy pattern.</td>
</tr>
<tr class="odd tr0">
<td></td>
<td>common_name</td>
<td>character varying(255)</td>
<td><em></em></td>
</tr>
<tr class="even tr1">
<td></td>
<td>comment</td>
<td>text</td>
<td><em></em></td>
</tr>
</tbody>
</table>

organism Structure

Tables referencing this one via Foreign Key Constraints:

- [biomaterial](Chado_Tables#Table:_biomaterial "Chado Tables")

<!-- -->

- [feature](Chado_Tables#Table:_feature "Chado Tables")

<!-- -->

- [library](Chado_Tables#Table:_library "Chado Tables")

<!-- -->

- [organism_dbxref](Chado_Tables#Table:_organism_dbxref "Chado Tables")

<!-- -->

- [organismprop](Chado_Tables#Table:_organismprop "Chado Tables")

<!-- -->

- [phylonode_organism](Chado_Tables#Table:_phylonode_organism "Chado Tables")

<!-- -->

- [stock](Chado_Tables#Table:_stock "Chado Tables")

<!-- -->

- [wwwuser_organism](Chado_Tables#Table:_wwwuser_organism "Chado Tables")

------------------------------------------------------------------------

  

## <span id="Table:_organism_dbxref" class="mw-headline">Table: organism_dbxref</span>

| FK | Name | Type | Description |
|----|----|----|----|
|  | organism_dbxref_id | serial | *PRIMARY KEY* |
| [organism](Chado_Tables#Table:_organism "Chado Tables") | organism_id | integer | *UNIQUE#1 NOT NULL* |
| [dbxref](Chado_Tables#Table:_dbxref "Chado Tables") | dbxref_id | integer | *UNIQUE#1 NOT NULL* |

organism_dbxref Structure

------------------------------------------------------------------------

  

## <span id="Table:_organismprop" class="mw-headline">Table: organismprop</span>

Tag-value properties - follows standard chado model.

| FK | Name | Type | Description |
|----|----|----|----|
|  | organismprop_id | serial | *PRIMARY KEY* |
| [organism](Chado_Tables#Table:_organism "Chado Tables") | organism_id | integer | *UNIQUE#1 NOT NULL* |
| [cvterm](Chado_Tables#Table:_cvterm "Chado Tables") | type_id | integer | *UNIQUE#1 NOT NULL* |
|  | value | text |  |
|  | rank | integer | *UNIQUE#1 NOT NULL* |

organismprop Structure

------------------------------------------------------------------------

</div>

<div class="printfooter">

Retrieved from
"<http://gmod.org/mediawiki/index.php?title=Chado_Organism_Module&oldid=26568>"

</div>

<div id="catlinks" class="catlinks">

<div id="mw-normal-catlinks" class="mw-normal-catlinks">

[Categories](Special%3ACategories "Special%3ACategories"):

- [Chado Modules](Category%3AChado_Modules "Category%3AChado Modules")
- [!Lacking ERD](Category%3A!Lacking_ERD "Category%3A!Lacking ERD")

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
  href="http://gmod.org/mediawiki/index.php?title=Talk:Chado_Organism_Module&amp;action=edit&amp;redlink=1"
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


- <span id="t-smwbrowselink"><a href="Special%3ABrowse/Chado_Organism_Module" rel="smw-browse">Browse
  properties</a></span>


</div>

</div>

</div>

</div>

<div id="footer" role="contentinfo">

- <span id="footer-info-lastmod">Last updated at 04:39 on 18 February
  2015.</span>
<!-- - <span id="footer-info-viewcount">74,696 page views.</span> -->
- <span id="footer-info-copyright">Content is available under
  <a href="http://www.gnu.org/licenses/fdl-1.3.html" class="external"
  rel="nofollow">a GNU Free Documentation License</a> unless otherwise
  noted.</span>

<!-- -->

- <span id="footer-places-about">[About
  GMOD](GMOD%3AAbout "GMOD%3AAbout")</span>

<!-- -->






</div>
