<div id="mw-page-base" class="noprint">

</div>

<div id="mw-head-base" class="noprint">

</div>

<div id="content" class="mw-body" role="main">

<span id="top"></span>

<div id="mw-js-message" style="display:none;">

</div>



# <span dir="auto">Chado Map Module</span>

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
  - [<span class="tocnumber">1.1</span> <span class="toctext">To
    Do</span>](#To_Do)
  - [<span class="tocnumber">1.2</span>
    <span class="toctext">Tables</span>](#Tables)
  - [<span class="tocnumber">1.3</span> <span class="toctext">Table:
    featuremap</span>](#Table:_featuremap)
  - [<span class="tocnumber">1.4</span> <span class="toctext">Table:
    featuremap_pub</span>](#Table:_featuremap_pub)
  - [<span class="tocnumber">1.5</span> <span class="toctext">Table:
    featurepos</span>](#Table:_featurepos)
  - [<span class="tocnumber">1.6</span> <span class="toctext">Table:
    featurerange</span>](#Table:_featurerange)

</div>

# <span id="Introduction" class="mw-headline">Introduction</span>

> **This page or section needs to be edited.**
> <span class="small">Please help by <span class="plainlinks"><a
> href="http://gmod.org/mediawiki/index.php?title=Chado_Map_Module&amp;action=edit"
> class="external text" rel="nofollow">editing this page</a></span> to
> add your revisions or additions.</span>

Note: this module is all due for revision.

A possibly problematic case is where we want to localize an object to
the left or right of a feature (but not within it):

  

                        |---------|  feature-to-map
           ------------------------------------------------- map
                   |------|         |----------|   features to map wrt

  

### <span id="To_Do" class="mw-headline">To Do</span>

- Determine how we would map the 3' end of the feature-to-map.
- Get a comprehensive set of mapping use-cases.
  - One set of use-cases is aberrations (which will all be involved with
    this module). Simple aberrations should be do-able, but what about
    cases where a breakpoint interrupts a gene? Would this be an example
    of the problematic case above?

  

## <span id="Tables" class="mw-headline">Tables</span>

## <span id="Table:_featuremap" class="mw-headline">Table: featuremap</span>

| F-Key | Name | Type | Description |
|----|----|----|----|
|  | featuremap_id | serial | *PRIMARY KEY* |
|  | name | character varying(255) | *UNIQUE* |
|  | description | text |  |
| [cvterm](Chado_Tables#Table:_cvterm "Chado Tables") | unittype_id | integer |  |

featuremap Structure

Tables referencing this one via Foreign Key Constraints:

- [featuremap_pub](Chado_Tables#Table:_featuremap_pub "Chado Tables")

<!-- -->

- [featurepos](Chado_Tables#Table:_featurepos "Chado Tables")

<!-- -->

- [featurerange](Chado_Tables#Table:_featurerange "Chado Tables")

------------------------------------------------------------------------

  

## <span id="Table:_featuremap_pub" class="mw-headline">Table: featuremap_pub</span>

| F-Key | Name | Type | Description |
|----|----|----|----|
|  | featuremap_pub_id | serial | *PRIMARY KEY* |
| [featuremap](Chado_Tables#Table:_featuremap "Chado Tables") | featuremap_id | integer | *NOT NULL* |
| [pub](Chado_Tables#Table:_pub "Chado Tables") | pub_id | integer | *NOT NULL* |

featuremap_pub Structure

------------------------------------------------------------------------

  

## <span id="Table:_featurepos" class="mw-headline">Table: featurepos</span>

<table data-border="1" data-cellpadding="3">
<caption>featurepos Structure</caption>
<colgroup>
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
</colgroup>
<thead>
<tr class="header">
<th>F-Key</th>
<th>Name</th>
<th>Type</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd tr0">
<td></td>
<td>featurepos_id</td>
<td>serial</td>
<td><em>PRIMARY KEY</em></td>
</tr>
<tr class="even tr1">
<td><p><a href="Chado_Tables#Table:_featuremap"
title="Chado Tables">featuremap</a></p></td>
<td>featuremap_id</td>
<td>serial</td>
<td><em>NOT NULL</em></td>
</tr>
<tr class="odd tr0">
<td><p><a href="Chado_Tables#Table:_feature"
title="Chado Tables">feature</a></p></td>
<td>feature_id</td>
<td>integer</td>
<td><em>NOT NULL</em></td>
</tr>
<tr class="even tr1">
<td><p><a href="Chado_Tables#Table:_feature"
title="Chado Tables">feature</a></p></td>
<td>map_feature_id</td>
<td>integer</td>
<td><em>NOT NULL</em><br />
<br />
map_feature_id links to the feature (map) upon which the feature is
being localized.</td>
</tr>
<tr class="odd tr0">
<td></td>
<td>mappos</td>
<td>double precision</td>
<td><em>NOT NULL</em></td>
</tr>
</tbody>
</table>

featurepos Structure

------------------------------------------------------------------------

  

## <span id="Table:_featurerange" class="mw-headline">Table: featurerange</span>

In cases where the start and end of a mapped feature is a range,
leftendf and rightstartf are populated. leftstartf_id, leftendf_id,
rightstartf_id, rightendf_id are the ids of features with respect to
which the feature is being mapped. These may be cytological bands.

<table data-border="1" data-cellpadding="3">
<caption>featurerange Structure</caption>
<colgroup>
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
</colgroup>
<thead>
<tr class="header">
<th>F-Key</th>
<th>Name</th>
<th>Type</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd tr0">
<td></td>
<td>featurerange_id</td>
<td>serial</td>
<td><em>PRIMARY KEY</em></td>
</tr>
<tr class="even tr1">
<td><p><a href="Chado_Tables#Table:_featuremap"
title="Chado Tables">featuremap</a></p></td>
<td>featuremap_id</td>
<td>integer</td>
<td><em>NOT NULL</em><br />
<br />
featuremap_id is the id of the feature being mapped.</td>
</tr>
<tr class="odd tr0">
<td><p><a href="Chado_Tables#Table:_feature"
title="Chado Tables">feature</a></p></td>
<td>feature_id</td>
<td>integer</td>
<td><em>NOT NULL</em></td>
</tr>
<tr class="even tr1">
<td><p><a href="Chado_Tables#Table:_feature"
title="Chado Tables">feature</a></p></td>
<td>leftstartf_id</td>
<td>integer</td>
<td><em>NOT NULL</em></td>
</tr>
<tr class="odd tr0">
<td><p><a href="Chado_Tables#Table:_feature"
title="Chado Tables">feature</a></p></td>
<td>leftendf_id</td>
<td>integer</td>
<td><em></em></td>
</tr>
<tr class="even tr1">
<td><p><a href="Chado_Tables#Table:_feature"
title="Chado Tables">feature</a></p></td>
<td>rightstartf_id</td>
<td>integer</td>
<td><em></em></td>
</tr>
<tr class="odd tr0">
<td><p><a href="Chado_Tables#Table:_feature"
title="Chado Tables">feature</a></p></td>
<td>rightendf_id</td>
<td>integer</td>
<td><em>NOT NULL</em></td>
</tr>
<tr class="even tr1">
<td></td>
<td>rangestr</td>
<td>character varying(255)</td>
<td><em></em></td>
</tr>
</tbody>
</table>

featurerange Structure

------------------------------------------------------------------------

</div>

<div class="printfooter">

Retrieved from
"<http://gmod.org/mediawiki/index.php?title=Chado_Map_Module&oldid=26566>"

</div>

<div id="catlinks" class="catlinks">

<div id="mw-normal-catlinks" class="mw-normal-catlinks">

[Categories](Special:Categories "Special:Categories"):

- [Needs Editing](Category:Needs_Editing "Category:Needs Editing")
- [Chado Modules](Category:Chado_Modules "Category:Chado Modules")
- [!Lacking ERD](Category:!Lacking_ERD "Category:!Lacking ERD")

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
  href="http://gmod.org/mediawiki/index.php?title=Talk:Chado_Map_Module&amp;action=edit&amp;redlink=1"
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


- <span id="t-smwbrowselink"><a href="Special:Browse/Chado_Map_Module" rel="smw-browse">Browse
  properties</a></span>


</div>

</div>

</div>

</div>

<div id="footer" role="contentinfo">

- <span id="footer-info-lastmod">Last updated at 04:38 on 18 February
  2015.</span>
<!-- - <span id="footer-info-viewcount">52,095 page views.</span> -->
- <span id="footer-info-copyright">Content is available under
  <a href="http://www.gnu.org/licenses/fdl-1.3.html" class="external"
  rel="nofollow">a GNU Free Documentation License</a> unless otherwise
  noted.</span>

<!-- -->

- <span id="footer-places-about">[About
  GMOD](GMOD:About "GMOD:About")</span>

<!-- -->






</div>
