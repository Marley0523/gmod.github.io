<div id="mw-page-base" class="noprint">

</div>

<div id="mw-head-base" class="noprint">

</div>

<div id="content" class="mw-body" role="main">

<span id="top"></span>

<div id="mw-js-message" style="display:none;">

</div>



# <span dir="auto">Chado General Module</span>

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
- [<span class="tocnumber">2</span> <span class="toctext">Design
  patterns</span>](#Design_patterns)
- [<span class="tocnumber">3</span> <span class="toctext">About the
  Tables</span>](#About_the_Tables)
  - [<span class="tocnumber">3.1</span> <span class="toctext">URLs and
    URIs</span>](#URLs_and_URIs)
    - [<span class="tocnumber">3.1.1</span> <span class="toctext">About
      URL</span>](#About_URL)
    - [<span class="tocnumber">3.1.2</span> <span class="toctext">About
      URI</span>](#About_URI)
    - [<span class="tocnumber">3.1.3</span> <span class="toctext">To
      Do</span>](#To_Do)
  - [<span class="tocnumber">3.2</span> <span class="toctext">Identiﬁers
    and Interoperability between Chado
    Instances</span>](#Identi.EF.AC.81ers_and_Interoperability_between_Chado_Instances)
- [<span class="tocnumber">4</span>
  <span class="toctext">Tables</span>](#Tables)
  - [<span class="tocnumber">4.1</span> <span class="toctext">Table:
    db</span>](#Table:_db)
  - [<span class="tocnumber">4.2</span> <span class="toctext">Table:
    dbxref</span>](#Table:_dbxref)
  - [<span class="tocnumber">4.3</span> <span class="toctext">Table:
    project</span>](#Table:_project)
  - [<span class="tocnumber">4.4</span> <span class="toctext">Table:
    tableinfo</span>](#Table:_tableinfo)

</div>

# <span id="Introduction" class="mw-headline">Introduction</span>

General purpose tables are housed in the module general. The primary
purpose of this module is to provide a means of providing data entities
with stable, unique identiﬁers. In Chado, all identiﬁable data entities
have bipartite identiﬁers, consisting of a dbname plus an accession,
together with an optional version suffix.

By convention, these are normally presented using a ’:’ separator. An
example of an identiﬁer in this notation would be GO:0008045 or
FlyBase:FBgn00000001. In the Chado schema the atomic units are the
dbname and the accession, the separator is introduced only in the
presentation layer. Each dbname uniquely identiﬁes the authority
responsible for a particular ID-space (so there cannot be two GO in any
single Chado instance). The accession must be unique within the
ID-space. Thus there can be two accessions 0008045, but there can only
be one data artefact identiﬁed as GO:0008045.

These uniqueness constraints are encoded in the schema, so it is
impossible for any Chado relational database instance to violate them.

Each identiﬁer is stored as a row in the [dbxref table](#Table:_dbxref),
with the dbname stored in the [db table](#Table:_db). Keeping the dbname
in a separate db table ensures that the Chado schema retains its
commitment to normalization. Entries in other tables can refer to
entries in the [dbxref table](#Table:_dbxref) by means of foreign keys.

Note that all stable identiﬁers are stored in the dbxref table, whether
or not they refer to ’external’ data entities. Chado does not have an
explicit notion of a data entity being external. Some dbxrefs have
further information fully ﬂeshed out in other tables in the database,
and others are ’dangling’ dbxrefs.

# <span id="Design_patterns" class="mw-headline">Design patterns</span>

> **This page or section needs to be edited.**
> <span class="small">Please help by <span class="plainlinks"><a
> href="http://gmod.org/mediawiki/index.php?title=Chado_General_Module&amp;action=edit"
> class="external text" rel="nofollow">editing this page</a></span> to
> add your revisions or additions.</span>

- Primary identiﬁers: ENTITY.dbxref id REFERENCES dbxref(dbxref id)
- Secondary identiﬁers: ENTITY DBXREF.dbxref id

# <span id="About_the_Tables" class="mw-headline">About the Tables</span>

The two main tables are [dbxref](#Table:_dbxref) (for the identiﬁer
itself) and [db](#Table:_db) (for the name of the DB or ID- granting
authority). Giving the database authority its own table, rather than
repeatedly duplicating the name in the dbxref table, retains data
normalization.

A dbxref identiﬁer has two key parts: a db id column that refers to an
entry in the db table, and an accession column, that must be a locally
unique identiﬁer within the db referred to by the db id column. An
optional third column is the version column. Taken together, these 3
columns constitute a unique key.

The db is a database authority. Typical dbs in bioinformatics are
FlyBase, GO, UniProt, NCBI, MGI, etc. The authority is generally known
by this sortened form (the db.name, which is unique within the
bioinformatics and biomedical realm. See below for more on uniqueness.
This name is typically in short mnemonic (but human-friendly) form, and
uniquely identiﬁes the DB/authority (enforced by uniqueness constraint).
Short human-friendly names are encouraged, although longer names (such
as full LSID preﬁxes) may also be used. The name should be a valid XML
NMTOKEN (see XML speciﬁcation for details) - for example, it should not
start with a number. This constraint is to help syntactic
interoperability with other identiﬁer schemes. To ensure
interoperability with other Chado databases, the same db.names should be
used (e.g. *FlyBase* should be used consistently instead of *FB*). This
will prevent duplicate dbxref rows being created if and when databases
are merged. At the same time, uniqueness must be preserved: there must
not be two GOs.

## <span id="URLs_and_URIs" class="mw-headline">URLs and URIs</span>

> **This page or section needs to be edited.**
> <span class="small">Please help by <span class="plainlinks"><a
> href="http://gmod.org/mediawiki/index.php?title=Chado_General_Module&amp;action=edit"
> class="external text" rel="nofollow">editing this page</a></span> to
> add your revisions or additions.</span>

See the following for background:

- <a href="http://en.wikipedia.org/wiki/Uniform_Resource_Identifier"
  class="external free"
  rel="nofollow">http://en.wikipedia.org/wiki/Uniform_Resource_Identifier</a>
- <a href="http://en.wikipedia.org/wiki/URL" class="external free"
  rel="nofollow">http://en.wikipedia.org/wiki/URL</a>

Basically, a URI is an addressing scheme. The form of URI most people
are familiar with are URLs; but not all URIs are URLs. Another URI
addressing scheme is the URN; for example, LSIDs use URNs.

People often expect URLs to be resolvable using standard technology
(e.g. a web browser) to a resource intended for humans, but this isn’t
always the case. URNs may require other software to resolve them; e.g.
an LSID resolver.

This column is nullable, so it is possible to defer decision on what the
unique URI for a particular authority is if this information is not
known up-front. See below for mechanisms for assigning URIs to DBs and
ensuring uniqueness.

Note that it is perfectly acceptable for the db.name column to be the
same as the url column (provided it is a valid URI). However, it is
encouraged that a short form is used as the db.name.

### <span id="About_URL" class="mw-headline">About URL</span>

A W3C compliant URL with the address of a website containing information
about the DB or authority. For example,
<a href="http://www.ﬂybase.org" class="external free"
rel="nofollow">http://www.ﬂybase.org</a>,
<a href="http://www.geneontology.org" class="external free"
rel="nofollow">http://www.geneontology.org</a>. The URL is intended for
humans rather than software agents.

### <span id="About_URI" class="mw-headline">About URI</span>

A W3C compliant URI that contains a unique namespace for the
DB/authority. Some ID schemes (e.g. LSID) require this. The URI is
intended for software agents rather than humans. It does not need to be
a resolvable URL. However, certain DBs may prefer the URI to be a
resolvable URL that has human-readable information on the other end.
Other DBs may provide URNs (e.g. LSID URNs) that require software agents
to be resolved.

### <span id="To_Do" class="mw-headline">To Do</span>

**The [db table](#Table:_db) probably should have columns for both URL
and URI.** The former is intended just to go to a website like the
FlyBase or GO home page. The latter is intended as a globally unique
addressing scheme that should be interoperable with other schemes. For
example GO may be a unique identiﬁer for the Gene Ontology ID space by
ﬁat within the bioinformatics community, but not outside. Although Chado
only cares about the former, it may have to interoperate with schemes
that care about truly global uniqueness, hence URIs.

## <span id="Identi.EF.AC.81ers_and_Interoperability_between_Chado_Instances" class="mw-headline">Identiﬁers and Interoperability between Chado Instances</span>

> **This page or section needs to be edited.**
> <span class="small">Please help by <span class="plainlinks"><a
> href="http://gmod.org/mediawiki/index.php?title=Chado_General_Module&amp;action=edit"
> class="external text" rel="nofollow">editing this page</a></span> to
> add your revisions or additions.</span>

# <span id="Tables" class="mw-headline">Tables</span>

## <span id="Table:_db" class="mw-headline">Table: db</span>

The db table contains one row per database authority, that is, one row
per curator/creator of bioinformatic data collections. Typical databases
in bioinformatics are FlyBase, GO, UniProt, NCBI, MGI, etc. The
authority is generally known by this shortened form, which is unique
within the bioinformatics and biomedical realm. To Do - add support for
URIs, URNs (e.g. LSIDs). We can do this by treating the URL as a URI -
however, some applications may expect this to be resolvable - to be
decided.

| F-Key | Name        | Type                   | Description       |
|-------|-------------|------------------------|-------------------|
|       | db_id       | serial                 | *PRIMARY KEY*     |
|       | name        | character varying(255) | *UNIQUE NOT NULL* |
|       | description | character varying(255) |                   |
|       | urlprefix   | character varying(255) |                   |
|       | url         | character varying(255) |                   |

db Structure

Tables referencing this one via Foreign Key Constraints:

- [dbxref](Chado_Tables#Table:_dbxref "Chado Tables")

------------------------------------------------------------------------

## <span id="Table:_dbxref" class="mw-headline">Table: dbxref</span>

The dbxref table contains one row per version per collection of
bioinformatic data, one row per Chado "database". The table provides a
unique, global, public, stable identifier that can be used to reference
a database version. Not necessarily an external reference - can
reference data items inside the particular chado instance being used.
Typically a row in a table can be uniquely identified with a primary
identifier (called dbxref_id); a table may also have secondary
identifiers (in a linking table \<T\>\_dbxref). A dbxref is generally
written as \<DB\>:\<ACCESSION\> or as \<DB\>:\<ACCESSION\>:\<VERSION\>.

<table data-border="1" data-cellpadding="3">
<caption>dbxref Structure</caption>
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
<td>dbxref_id</td>
<td>serial</td>
<td><em>PRIMARY KEY</em></td>
</tr>
<tr class="even tr1">
<td><p><a href="Chado_Tables#Table:_db"
title="Chado Tables">db</a></p></td>
<td>db_id</td>
<td>integer</td>
<td><em>UNIQUE#1 NOT NULL</em></td>
</tr>
<tr class="odd tr0">
<td></td>
<td>accession</td>
<td>character varying(255)</td>
<td><em>UNIQUE#1 NOT NULL</em><br />
<br />
The local part of the identifier. Guaranteed by the db authority to be
unique for that db.</td>
</tr>
<tr class="even tr1">
<td></td>
<td>version</td>
<td>character varying(255)</td>
<td><em>UNIQUE#1 NOT NULL DEFAULT ''::character varying</em></td>
</tr>
<tr class="odd tr0">
<td></td>
<td>description</td>
<td>text</td>
<td><em></em></td>
</tr>
</tbody>
</table>

dbxref Structure

Tables referencing this one via Foreign Key Constraints:

- [arraydesign](Chado_Tables#Table:_arraydesign "Chado Tables")

<!-- -->

- [assay](Chado_Tables#Table:_assay "Chado Tables")

<!-- -->

- [biomaterial](Chado_Tables#Table:_biomaterial "Chado Tables")

<!-- -->

- [biomaterial_dbxref](Chado_Tables#Table:_biomaterial_dbxref "Chado Tables")

<!-- -->

- [cvterm](Chado_Tables#Table:_cvterm "Chado Tables")

<!-- -->

- [cvterm_dbxref](Chado_Tables#Table:_cvterm_dbxref "Chado Tables")

<!-- -->

- [dbxrefprop](Chado_Tables#Table:_dbxrefprop "Chado Tables")

<!-- -->

- [element](Chado_Tables#Table:_element "Chado Tables")

<!-- -->

- [feature](Chado_Tables#Table:_feature "Chado Tables")

<!-- -->

- [feature_cvterm_dbxref](Chado_Tables#Table:_feature_cvterm_dbxref "Chado Tables")

<!-- -->

- [feature_dbxref](Chado_Tables#Table:_feature_dbxref "Chado Tables")

<!-- -->

- [organism_dbxref](Chado_Tables#Table:_organism_dbxref "Chado Tables")

<!-- -->

- [phylonode_dbxref](Chado_Tables#Table:_phylonode_dbxref "Chado Tables")

<!-- -->

- [phylotree](Chado_Tables#Table:_phylotree "Chado Tables")

<!-- -->

- [protocol](Chado_Tables#Table:_protocol "Chado Tables")

<!-- -->

- [pub_dbxref](Chado_Tables#Table:_pub_dbxref "Chado Tables")

<!-- -->

- [stock](Chado_Tables#Table:_stock "Chado Tables")

<!-- -->

- [stock_dbxref](Chado_Tables#Table:_stock_dbxref "Chado Tables")

<!-- -->

- [study](Chado_Tables#Table:_study "Chado Tables")

------------------------------------------------------------------------

## <span id="Table:_project" class="mw-headline">Table: project</span>

| F-Key | Name        | Type                   | Description       |
|-------|-------------|------------------------|-------------------|
|       | project_id  | serial                 | *PRIMARY KEY*     |
|       | name        | character varying(255) | *UNIQUE NOT NULL* |
|       | description | character varying(255) | *NOT NULL*        |

project Structure

Tables referencing this one via Foreign Key Constraints:

- [assay_project](Chado_Tables#Table:_assay_project "Chado Tables")

<!-- -->

- [wwwuser_project](Chado_Tables#Table:_wwwuser_project "Chado Tables")

------------------------------------------------------------------------

  

## <span id="Table:_tableinfo" class="mw-headline">Table: tableinfo</span>

| F-Key | Name                | Type                  | Description              |
|-------|---------------------|-----------------------|--------------------------|
|       | tableinfo_id        | serial                | *PRIMARY KEY*            |
|       | name                | character varying(30) | *UNIQUE NOT NULL*        |
|       | primary_key_column  | character varying(30) |                          |
|       | is_view             | integer               | *NOT NULL*               |
|       | view_on_table_id    | integer               |                          |
|       | superclass_table_id | integer               |                          |
|       | is_updateable       | integer               | *NOT NULL DEFAULT 1*     |
|       | modification_date   | date                  | *NOT NULL DEFAULT now()* |

tableinfo Structure

Tables referencing this one via Foreign Key Constraints:

- [control](Chado_Tables#Table:_control "Chado Tables")

<!-- -->

- [magedocumentation](Chado_Tables#Table:_magedocumentation "Chado Tables")

------------------------------------------------------------------------

</div>

<div class="printfooter">

Retrieved from
"<http://gmod.org/mediawiki/index.php?title=Chado_General_Module&oldid=26562>"

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

- <span id="ca-nstab-main"><a href="Chado_General_Module" accesskey="c"
  title="View the content page [c]">Page</a></span>
- <span id="ca-talk"><a
  href="http://gmod.org/mediawiki/index.php?title=Talk:Chado_General_Module&amp;action=edit&amp;redlink=1"
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

- <span id="t-whatlinkshere"><a href="Special:WhatLinksHere/Chado_General_Module" accesskey="j"
  title="A list of all wiki pages that link here [j]">What links here</a></span>
- <span id="t-recentchangeslinked"><a href="Special:RecentChangesLinked/Chado_General_Module" accesskey="k"
  title="Recent changes in pages linked from this page [k]">Related
  changes</a></span>
- <span id="t-specialpages"><a href="Special:SpecialPages" accesskey="q"
  title="A list of all special pages [q]">Special pages</a></span>
- <span id="t-print"><a
  href="http://gmod.org/mediawiki/index.php?title=Chado_General_Module&amp;printable=yes"
  rel="alternate" accesskey="p"
  title="Printable version of this page [p]">Printable version</a></span>
- <span id="t-permalink">[Permanent
  link](http://gmod.org/mediawiki/index.php?title=Chado_General_Module&oldid=26562 "Permanent link to this revision of the page")</span>
- <span id="t-info">[Page
  information](http://gmod.org/mediawiki/index.php?title=Chado_General_Module&action=info)</span>
- <span id="t-smwbrowselink"><a href="Special:Browse/Chado_General_Module" rel="smw-browse">Browse
  properties</a></span>
- <span id="t-pdf">[Print as
  PDF](http://gmod.org/mediawiki/index.php?title=Special:PdfPrint&page=Chado_General_Module)</span>

</div>

</div>

</div>

</div>

<div id="footer" role="contentinfo">

- <span id="footer-info-lastmod">Last updated at 04:36 on 18 February
  2015.</span>
- <span id="footer-info-viewcount">144,125 page views.</span>
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
