<div id="mw-page-base" class="noprint">

</div>

<div id="mw-head-base" class="noprint">

</div>

<div id="content" class="mw-body" role="main">

<span id="top"></span>

<div id="mw-js-message" style="display:none;">

</div>



# <span dir="auto">Chado Genetic Module</span>

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
- [<span class="tocnumber">2</span>
  <span class="toctext">Tables</span>](#Tables)
  - [<span class="tocnumber">2.1</span> <span class="toctext">Table:
    environment</span>](#Table:_environment)
  - [<span class="tocnumber">2.2</span> <span class="toctext">Table:
    environment_cvterm</span>](#Table:_environment_cvterm)
  - [<span class="tocnumber">2.3</span> <span class="toctext">Table:
    feature_genotype</span>](#Table:_feature_genotype)
  - [<span class="tocnumber">2.4</span> <span class="toctext">Table:
    genotype</span>](#Table:_genotype)
  - [<span class="tocnumber">2.5</span> <span class="toctext">Table:
    phendesc</span>](#Table:_phendesc)
  - [<span class="tocnumber">2.6</span> <span class="toctext">Table:
    phenotype_comparison</span>](#Table:_phenotype_comparison)
  - [<span class="tocnumber">2.7</span> <span class="toctext">Table:
    phenstatement</span>](#Table:_phenstatement)

</div>

# <span id="Introduction" class="mw-headline">Introduction</span>

See Dave Emmert's presentation [The new and improved chado genetics
module](File:Emmert_040526.pdf "File:Emmert 040526.pdf") for
explanations of parts of this module.

> **This page or section needs to be edited.**
> <span class="small">Please help by <span class="plainlinks"><a
> href="http://gmod.org/mediawiki/index.php?title=Chado_Genetic_Module&amp;action=edit"
> class="external text" rel="nofollow">editing this page</a></span> to
> add your revisions or additions.</span>

# <span id="Tables" class="mw-headline">Tables</span>

## <span id="Table:_environment" class="mw-headline">Table: environment</span>

The environmental component of a phenotype description.

| F-Key | Name           | Type   | Description       |
|-------|----------------|--------|-------------------|
|       | environment_id | serial | *PRIMARY KEY*     |
|       | uniquename     | text   | *UNIQUE NOT NULL* |
|       | description    | text   |                   |

environment Structure

Tables referencing this one via Foreign Key Constraints:

- [environment_cvterm](Chado_Tables#Table:_environment_cvterm "Chado Tables")

<!-- -->

- [phendesc](Chado_Tables#Table:_phendesc "Chado Tables")

<!-- -->

- [phenotype_comparison](Chado_Tables#Table:_phenotype_comparison "Chado Tables")

<!-- -->

- [phenstatement](Chado_Tables#Table:_phenstatement "Chado Tables")

------------------------------------------------------------------------

  

## <span id="Table:_environment_cvterm" class="mw-headline">Table: environment_cvterm</span>

| F-Key | Name | Type | Description |
|----|----|----|----|
|  | environment_cvterm_id | serial | *PRIMARY KEY* |
| [environment](Chado_Tables#Table:_environment "Chado Tables") | environment_id | integer | *UNIQUE#1 NOT NULL* |
| [cvterm](Chado_Tables#Table:_cvterm "Chado Tables") | cvterm_id | integer | *UNIQUE#1 NOT NULL* |

environment_cvterm Structure

------------------------------------------------------------------------

  

## <span id="Table:_feature_genotype" class="mw-headline">Table: feature_genotype</span>

<table data-border="1" data-cellpadding="3">
<caption>feature_genotype Structure</caption>
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
<td>feature_genotype_id</td>
<td>serial</td>
<td><em>PRIMARY KEY</em></td>
</tr>
<tr class="even tr1">
<td><p><a href="Chado_Tables#Table:_feature"
title="Chado Tables">feature</a></p></td>
<td>feature_id</td>
<td>integer</td>
<td><em>UNIQUE#1 NOT NULL</em></td>
</tr>
<tr class="odd tr0">
<td><p><a href="Chado_Tables#Table:_genotype"
title="Chado Tables">genotype</a></p></td>
<td>genotype_id</td>
<td>integer</td>
<td><em>UNIQUE#1 NOT NULL</em></td>
</tr>
<tr class="even tr1">
<td><p><a href="Chado_Tables#Table:_feature"
title="Chado Tables">feature</a></p></td>
<td>chromosome_id</td>
<td>integer</td>
<td><em>UNIQUE#1</em><br />
<br />
A feature of SO type "chromosome".</td>
</tr>
<tr class="odd tr0">
<td></td>
<td>rank</td>
<td>integer</td>
<td><em>UNIQUE#1 NOT NULL</em><br />
<br />
rank can be used for n-ploid organisms or to preserve order.</td>
</tr>
<tr class="even tr1">
<td></td>
<td>cgroup</td>
<td>integer</td>
<td><em>UNIQUE#1 NOT NULL</em><br />
<br />
Spatially distinguishable group. group can be used for distinguishing
the chromosomal groups, for example (RNAi products and so on can be
treated as different groups, as they do not fall on a particular
chromosome).</td>
</tr>
<tr class="odd tr0">
<td><p><a href="Chado_Tables#Table:_cvterm"
title="Chado Tables">cvterm</a></p></td>
<td>cvterm_id</td>
<td>integer</td>
<td><em>UNIQUE#1 NOT NULL</em></td>
</tr>
</tbody>
</table>

feature_genotype Structure

------------------------------------------------------------------------

  

## <span id="Table:_genotype" class="mw-headline">Table: genotype</span>

> **This page or section needs to be edited.**
> <span class="small">Please help by <span class="plainlinks"><a
> href="http://gmod.org/mediawiki/index.php?title=Chado_Genetic_Module&amp;action=edit"
> class="external text" rel="nofollow">editing this page</a></span> to
> add your revisions or additions.</span>

OPEN QUESTION: for multicopy transgenes, should we include a 'n_copies'
column as well?

Genetic context. A genotype is defined by a collection of features,
mutations, balancers, deficiencies, haplotype blocks, or engineered
constructs.

<table data-border="1" data-cellpadding="3">
<caption>genotype Structure</caption>
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
<td>genotype_id</td>
<td>serial</td>
<td><em>PRIMARY KEY</em></td>
</tr>
<tr class="even tr1">
<td></td>
<td>name</td>
<td>text</td>
<td><em></em><br />
<br />
Optional alternative name for a genotype, for display purposes.</td>
</tr>
<tr class="odd tr0">
<td></td>
<td>uniquename</td>
<td>text</td>
<td><em>UNIQUE NOT NULL</em><br />
<br />
The unique name for a genotype; typically derived from the features
making up the genotype.</td>
</tr>
<tr class="even tr1">
<td></td>
<td>description</td>
<td>character varying(255)</td>
<td><em></em></td>
</tr>
</tbody>
</table>

genotype Structure

Tables referencing this one via Foreign Key Constraints:

- [feature_genotype](Chado_Tables#Table:_feature_genotype "Chado Tables")

<!-- -->

- [phendesc](Chado_Tables#Table:_phendesc "Chado Tables")

<!-- -->

- [phenotype_comparison](Chado_Tables#Table:_phenotype_comparison "Chado Tables")

<!-- -->

- [phenstatement](Chado_Tables#Table:_phenstatement "Chado Tables")

<!-- -->

- [stock_genotype](Chado_Tables#Table:_stock_genotype "Chado Tables")

<!-- -->

- [wwwuser_genotype](Chado_Tables#Table:_wwwuser_genotype "Chado Tables")

------------------------------------------------------------------------

  

## <span id="Table:_phendesc" class="mw-headline">Table: phendesc</span>

A summary of a \_set\_ of phenotypic statements for any one gcontext
made in any one publication.

| F-Key | Name | Type | Description |
|----|----|----|----|
|  | phendesc_id | serial | *PRIMARY KEY* |
| [genotype](Chado_Tables#Table:_genotype "Chado Tables") | genotype_id | integer | *UNIQUE#1 NOT NULL* |
| [environment](Chado_Tables#Table:_environment "Chado Tables") | environment_id | integer | *UNIQUE#1 NOT NULL* |
|  | description | text | *NOT NULL* |
| [cvterm](Chado_Tables#Table:_cvterm "Chado Tables") | type_id | integer | *UNIQUE#1 NOT NULL* |
| [pub](Chado_Tables#Table:_pub "Chado Tables") | pub_id | integer | *UNIQUE#1 NOT NULL* |

phendesc Structure

------------------------------------------------------------------------

  

## <span id="Table:_phenotype_comparison" class="mw-headline">Table: phenotype_comparison</span>

Comparison of phenotypes e.g., genotype1/environment1/phenotype1
"non-suppressible" with respect to genotype2/environment2/phenotype2.

| F-Key | Name | Type | Description |
|----|----|----|----|
|  | phenotype_comparison_id | serial | *PRIMARY KEY* |
| [genotype](Chado_Tables#Table:_genotype "Chado Tables") | genotype1_id | integer | *UNIQUE#1 NOT NULL* |
| [environment](Chado_Tables#Table:_environment "Chado Tables") | environment1_id | integer | *UNIQUE#1 NOT NULL* |
| [genotype](Chado_Tables#Table:_genotype "Chado Tables") | genotype2_id | integer | *UNIQUE#1 NOT NULL* |
| [environment](Chado_Tables#Table:_environment "Chado Tables") | environment2_id | integer | *UNIQUE#1 NOT NULL* |
| [phenotype](Chado_Tables#Table:_phenotype "Chado Tables") | phenotype1_id | integer | *UNIQUE#1 NOT NULL* |
| [phenotype](Chado_Tables#Table:_phenotype "Chado Tables") | phenotype2_id | integer |  |
| [cvterm](Chado_Tables#Table:_cvterm "Chado Tables") | type_id | integer | *UNIQUE#1 NOT NULL* |
| [pub](Chado_Tables#Table:_pub "Chado Tables") | pub_id | integer | *UNIQUE#1 NOT NULL* |

phenotype_comparison Structure

------------------------------------------------------------------------

  

## <span id="Table:_phenstatement" class="mw-headline">Table: phenstatement</span>

Phenotypes are things like "larval lethal". Phenstatements are things
like "dpp-1 is recessive larval lethal". So essentially phenstatement is
a linking table expressing the relationship between genotype,
environment, and phenotype.

| F-Key | Name | Type | Description |
|----|----|----|----|
|  | phenstatement_id | serial | *PRIMARY KEY* |
| [genotype](Chado_Tables#Table:_genotype "Chado Tables") | genotype_id | integer | *UNIQUE#1 NOT NULL* |
| [environment](Chado_Tables#Table:_environment "Chado Tables") | environment_id | integer | *UNIQUE#1 NOT NULL* |
| [phenotype](Chado_Tables#Table:_phenotype "Chado Tables") | phenotype_id | integer | *UNIQUE#1 NOT NULL* |
| [cvterm](Chado_Tables#Table:_cvterm "Chado Tables") | type_id | integer | *UNIQUE#1 NOT NULL* |
| [pub](Chado_Tables#Table:_pub "Chado Tables") | pub_id | integer | *UNIQUE#1 NOT NULL* |

phenstatement Structure

------------------------------------------------------------------------

</div>

<div class="printfooter">

Retrieved from
"<http://gmod.org/mediawiki/index.php?title=Chado_Genetic_Module&oldid=27092>"

</div>

<div id="catlinks" class="catlinks">

<div id="mw-normal-catlinks" class="mw-normal-catlinks">

[Categories](Special%3ACategories "Special%3ACategories"):

- [Needs Editing](Category%3ANeeds_Editing "Category%3ANeeds Editing")
- [Chado Modules](Category%3AChado_Modules "Category%3AChado Modules")
- [Phenotypes](Category%3APhenotypes "Category%3APhenotypes")
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
  href="http://gmod.org/mediawiki/index.php?title=Talk:Chado_Genetic_Module&amp;action=edit&amp;redlink=1"
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


- <span id="t-smwbrowselink"><a href="Special%3ABrowse/Chado_Genetic_Module" rel="smw-browse">Browse
  properties</a></span>


</div>

</div>

</div>

</div>

<div id="footer" role="contentinfo">

- <span id="footer-info-lastmod">Last updated at 07:58 on 20 April
  2016.</span>
<!-- - <span id="footer-info-viewcount">80,459 page views.</span> -->
- <span id="footer-info-copyright">Content is available under
  <a href="http://www.gnu.org/licenses/fdl-1.3.html" class="external"
  rel="nofollow">a GNU Free Documentation License</a> unless otherwise
  noted.</span>

<!-- -->

- <span id="footer-places-about">[About
  GMOD](GMOD%3AAbout "GMOD%3AAbout")</span>

<!-- -->






</div>
