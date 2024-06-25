<div id="mw-page-base" class="noprint">

</div>

<div id="mw-head-base" class="noprint">

</div>

<div id="content" class="mw-body" role="main">

<span id="top"></span>

<div id="mw-js-message" style="display:none;">

</div>



# <span dir="auto">Chado Cell Line Module</span>

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
    **cell_line**</span>](#Table:_cell_line)
  - [<span class="tocnumber">2.2</span> <span class="toctext">Table:
    **cell_line_relationship**</span>](#Table:_cell_line_relationship)
  - [<span class="tocnumber">2.3</span> <span class="toctext">Table:
    **cell_line_synonym**</span>](#Table:_cell_line_synonym)
  - [<span class="tocnumber">2.4</span> <span class="toctext">Table:
    **cell_line_cvterm**</span>](#Table:_cell_line_cvterm)
  - [<span class="tocnumber">2.5</span> <span class="toctext">Table:
    **cell_line_dbxref**</span>](#Table:_cell_line_dbxref)
  - [<span class="tocnumber">2.6</span> <span class="toctext">Table:
    **cell_lineprop**</span>](#Table:_cell_lineprop)
  - [<span class="tocnumber">2.7</span> <span class="toctext">Table:
    **cell_lineprop_pub**</span>](#Table:_cell_lineprop_pub)
  - [<span class="tocnumber">2.8</span> <span class="toctext">Table:
    **cell_line_feature**</span>](#Table:_cell_line_feature)
  - [<span class="tocnumber">2.9</span> <span class="toctext">Table:
    **cell_line_cvtermprop**</span>](#Table:_cell_line_cvtermprop)
  - [<span class="tocnumber">2.10</span> <span class="toctext">Table:
    **cell_line_pub**</span>](#Table:_cell_line_pub)
  - [<span class="tocnumber">2.11</span> <span class="toctext">Table:
    **cell_line_library**</span>](#Table:_cell_line_library)

</div>

# <span id="Introduction" class="mw-headline">Introduction</span>

# <span id="Tables" class="mw-headline">Tables</span>

## <span id="Table:_cell_line" class="mw-headline">Table: **`cell_line`**</span>

\<protect\>

|             |                   |
|-------------|-------------------|
| **Table:**  | **`cell_line`**   |
| **Module:** | ****Cell Line**** |

  

<table class="wikitable chadotable">
<caption><strong><code>cell_line</code></strong> columns</caption>
<colgroup>
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
</colgroup>
<thead>
<tr class="header">
<th><a href="Glossary#Foreign_Key" title="Glossary">FK</a></th>
<th>Name</th>
<th>Type</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td></td>
<td>cell_line_id</td>
<td>serial</td>
<td><em>PRIMARY KEY</em><br />
</td>
</tr>
<tr class="even">
<td></td>
<td>name</td>
<td>character varying(255)</td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td>uniquename</td>
<td>character varying(255)</td>
<td><em>UNIQUE#1</em><br />
&#10;<p><em>NOT NULL</em><br />
</p></td>
</tr>
<tr class="even">
<td><a href="Chado_Organism_Module#Table:_organism"
title="Chado Organism Module"><strong><code>organism</code></strong></a></td>
<td>organism_id</td>
<td>integer</td>
<td><em>UNIQUE#1</em><br />
&#10;<p><em>NOT NULL</em><br />
</p></td>
</tr>
<tr class="odd">
<td></td>
<td>timeaccessioned</td>
<td>timestamp without time zone</td>
<td><em>NOT NULL</em><br />
&#10;<p><em>DEFAULT</em> now()<br />
</p></td>
</tr>
<tr class="even">
<td></td>
<td>timelastmodified</td>
<td>timestamp without time zone</td>
<td><em>NOT NULL</em><br />
&#10;<p><em>DEFAULT</em> now()<br />
</p>
<p><br />
</p></td>
</tr>
</tbody>
</table>

**`cell_line`** columns

Tables referencing **`cell_line`** via [foreign
key](Glossary#Foreign_Key "Glossary") constraints:

- [**`cell_line_cvterm`**](Chado_Cell_Line_Module#Table:_cell_line_cvterm "Chado Cell Line Module")
- [**`cell_line_dbxref`**](Chado_Cell_Line_Module#Table:_cell_line_dbxref "Chado Cell Line Module")
- [**`cell_line_feature`**](Chado_Cell_Line_Module#Table:_cell_line_feature "Chado Cell Line Module")
- [**`cell_line_library`**](Chado_Cell_Line_Module#Table:_cell_line_library "Chado Cell Line Module")
- [**`cell_line_pub`**](Chado_Cell_Line_Module#Table:_cell_line_pub "Chado Cell Line Module")
- [**`cell_line_relationship`**](Chado_Cell_Line_Module#Table:_cell_line_relationship "Chado Cell Line Module")
- [**`cell_line_synonym`**](Chado_Cell_Line_Module#Table:_cell_line_synonym "Chado Cell Line Module")
- [**`cell_lineprop`**](Chado_Cell_Line_Module#Table:_cell_lineprop "Chado Cell Line Module")

\</protect\>

**`cell_line`** **Additional Comments:**

Add your comments here and they will be integrated into the [schema
documentation](Chado_Schema_Documentation_HOWTO "Chado Schema Documentation HOWTO")
as part of the next Chado release.

## <span id="Table:_cell_line_relationship" class="mw-headline">Table: **`cell_line_relationship`**</span>

\<protect\>

|             |                              |
|-------------|------------------------------|
| **Table:**  | **`cell_line_relationship`** |
| **Module:** | ****Cell Line****            |

  

<table class="wikitable chadotable">
<caption><strong><code>cell_line_relationship</code></strong>
columns</caption>
<colgroup>
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
</colgroup>
<thead>
<tr class="header">
<th><a href="Glossary#Foreign_Key" title="Glossary">FK</a></th>
<th>Name</th>
<th>Type</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td></td>
<td>cell_line_relationship_id</td>
<td>serial</td>
<td><em>PRIMARY KEY</em><br />
</td>
</tr>
<tr class="even">
<td><a href="Chado_Cell_Line_Module#Table:_cell_line"
title="Chado Cell Line Module"><strong><code>cell_line</code></strong></a></td>
<td>subject_id</td>
<td>integer</td>
<td><em>UNIQUE#1</em><br />
&#10;<p><em>NOT NULL</em><br />
</p></td>
</tr>
<tr class="odd">
<td><a href="Chado_Cell_Line_Module#Table:_cell_line"
title="Chado Cell Line Module"><strong><code>cell_line</code></strong></a></td>
<td>object_id</td>
<td>integer</td>
<td><em>UNIQUE#1</em><br />
&#10;<p><em>NOT NULL</em><br />
</p></td>
</tr>
<tr class="even">
<td><a href="Chado_CV_Module#Table:_cvterm"
title="Chado CV Module"><strong><code>cvterm</code></strong></a></td>
<td>type_id</td>
<td>integer</td>
<td><em>UNIQUE#1</em><br />
&#10;<p><em>NOT NULL</em><br />
</p>
<p><br />
</p></td>
</tr>
</tbody>
</table>

**`cell_line_relationship`** columns

Tables referencing **`cell_line_relationship`** via [foreign
key](Glossary#Foreign_Key "Glossary") constraints:

- None.\</protect\>

**`cell_line_relationship`** **Additional Comments:**

Add your comments here and they will be integrated into the [schema
documentation](Chado_Schema_Documentation_HOWTO "Chado Schema Documentation HOWTO")
as part of the next Chado release.

## <span id="Table:_cell_line_synonym" class="mw-headline">Table: **`cell_line_synonym`**</span>

\<protect\>

|             |                         |
|-------------|-------------------------|
| **Table:**  | **`cell_line_synonym`** |
| **Module:** | ****Cell Line****       |

  

<table class="wikitable chadotable">
<caption><strong><code>cell_line_synonym</code></strong>
columns</caption>
<colgroup>
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
</colgroup>
<thead>
<tr class="header">
<th><a href="Glossary#Foreign_Key" title="Glossary">FK</a></th>
<th>Name</th>
<th>Type</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td></td>
<td>cell_line_synonym_id</td>
<td>serial</td>
<td><em>PRIMARY KEY</em><br />
</td>
</tr>
<tr class="even">
<td><a href="Chado_Cell_Line_Module#Table:_cell_line"
title="Chado Cell Line Module"><strong><code>cell_line</code></strong></a></td>
<td>cell_line_id</td>
<td>integer</td>
<td><em>UNIQUE#1</em><br />
&#10;<p><em>NOT NULL</em><br />
</p></td>
</tr>
<tr class="odd">
<td><a href="Chado_Sequence_Module#Table:_synonym"
title="Chado Sequence Module"><strong><code>synonym</code></strong></a></td>
<td>synonym_id</td>
<td>integer</td>
<td><em>UNIQUE#1</em><br />
&#10;<p><em>NOT NULL</em><br />
</p></td>
</tr>
<tr class="even">
<td><a href="Chado_Publication_Module#Table:_pub"
title="Chado Publication Module"><strong><code>pub</code></strong></a></td>
<td>pub_id</td>
<td>integer</td>
<td><em>UNIQUE#1</em><br />
&#10;<p><em>NOT NULL</em><br />
</p></td>
</tr>
<tr class="odd">
<td></td>
<td>is_current</td>
<td>boolean</td>
<td><em>NOT NULL</em><br />
&#10;<p><em>DEFAULT</em> false<br />
</p></td>
</tr>
<tr class="even">
<td></td>
<td>is_internal</td>
<td>boolean</td>
<td><em>NOT NULL</em><br />
&#10;<p><em>DEFAULT</em> false<br />
</p>
<p><br />
</p></td>
</tr>
</tbody>
</table>

**`cell_line_synonym`** columns

Tables referencing **`cell_line_synonym`** via [foreign
key](Glossary#Foreign_Key "Glossary") constraints:

- None.\</protect\>

**`cell_line_synonym`** **Additional Comments:**

Add your comments here and they will be integrated into the [schema
documentation](Chado_Schema_Documentation_HOWTO "Chado Schema Documentation HOWTO")
as part of the next Chado release.

## <span id="Table:_cell_line_cvterm" class="mw-headline">Table: **`cell_line_cvterm`**</span>

\<protect\>

|             |                        |
|-------------|------------------------|
| **Table:**  | **`cell_line_cvterm`** |
| **Module:** | ****Cell Line****      |

  

<table class="wikitable chadotable">
<caption><strong><code>cell_line_cvterm</code></strong>
columns</caption>
<colgroup>
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
</colgroup>
<thead>
<tr class="header">
<th><a href="Glossary#Foreign_Key" title="Glossary">FK</a></th>
<th>Name</th>
<th>Type</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td></td>
<td>cell_line_cvterm_id</td>
<td>serial</td>
<td><em>PRIMARY KEY</em><br />
</td>
</tr>
<tr class="even">
<td><a href="Chado_Cell_Line_Module#Table:_cell_line"
title="Chado Cell Line Module"><strong><code>cell_line</code></strong></a></td>
<td>cell_line_id</td>
<td>integer</td>
<td><em>UNIQUE#1</em><br />
&#10;<p><em>NOT NULL</em><br />
</p></td>
</tr>
<tr class="odd">
<td><a href="Chado_CV_Module#Table:_cvterm"
title="Chado CV Module"><strong><code>cvterm</code></strong></a></td>
<td>cvterm_id</td>
<td>integer</td>
<td><em>UNIQUE#1</em><br />
&#10;<p><em>NOT NULL</em><br />
</p></td>
</tr>
<tr class="even">
<td><a href="Chado_Publication_Module#Table:_pub"
title="Chado Publication Module"><strong><code>pub</code></strong></a></td>
<td>pub_id</td>
<td>integer</td>
<td><em>UNIQUE#1</em><br />
&#10;<p><em>NOT NULL</em><br />
</p></td>
</tr>
<tr class="odd">
<td></td>
<td>rank</td>
<td>integer</td>
<td><em>UNIQUE#1</em><br />
&#10;<p><em>NOT NULL</em><br />
</p>
<p><br />
</p></td>
</tr>
</tbody>
</table>

**`cell_line_cvterm`** columns

Tables referencing **`cell_line_cvterm`** via [foreign
key](Glossary#Foreign_Key "Glossary") constraints:

- [**`cell_line_cvtermprop`**](Chado_Cell_Line_Module#Table:_cell_line_cvtermprop "Chado Cell Line Module")

\</protect\>

**`cell_line_cvterm`** **Additional Comments:**

Add your comments here and they will be integrated into the [schema
documentation](Chado_Schema_Documentation_HOWTO "Chado Schema Documentation HOWTO")
as part of the next Chado release.

## <span id="Table:_cell_line_dbxref" class="mw-headline">Table: **`cell_line_dbxref`**</span>

\<protect\>

|             |                        |
|-------------|------------------------|
| **Table:**  | **`cell_line_dbxref`** |
| **Module:** | ****Cell Line****      |

  

<table class="wikitable chadotable">
<caption><strong><code>cell_line_dbxref</code></strong>
columns</caption>
<colgroup>
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
</colgroup>
<thead>
<tr class="header">
<th><a href="Glossary#Foreign_Key" title="Glossary">FK</a></th>
<th>Name</th>
<th>Type</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td></td>
<td>cell_line_dbxref_id</td>
<td>serial</td>
<td><em>PRIMARY KEY</em><br />
</td>
</tr>
<tr class="even">
<td><a href="Chado_Cell_Line_Module#Table:_cell_line"
title="Chado Cell Line Module"><strong><code>cell_line</code></strong></a></td>
<td>cell_line_id</td>
<td>integer</td>
<td><em>UNIQUE#1</em><br />
&#10;<p><em>NOT NULL</em><br />
</p></td>
</tr>
<tr class="odd">
<td><a href="Chado_General_Module#Table:_dbxref"
title="Chado General Module"><strong><code>dbxref</code></strong></a></td>
<td>dbxref_id</td>
<td>integer</td>
<td><em>UNIQUE#1</em><br />
&#10;<p><em>NOT NULL</em><br />
</p></td>
</tr>
<tr class="even">
<td></td>
<td>is_current</td>
<td>boolean</td>
<td><em>NOT NULL</em><br />
&#10;<p><em>DEFAULT</em> true<br />
</p>
<p><br />
</p></td>
</tr>
</tbody>
</table>

**`cell_line_dbxref`** columns

Tables referencing **`cell_line_dbxref`** via [foreign
key](Glossary#Foreign_Key "Glossary") constraints:

- None.\</protect\>

**`cell_line_dbxref`** **Additional Comments:**

Add your comments here and they will be integrated into the [schema
documentation](Chado_Schema_Documentation_HOWTO "Chado Schema Documentation HOWTO")
as part of the next Chado release.

## <span id="Table:_cell_lineprop" class="mw-headline">Table: **`cell_lineprop`**</span>

\<protect\>

|             |                     |
|-------------|---------------------|
| **Table:**  | **`cell_lineprop`** |
| **Module:** | ****Cell Line****   |

  

<table class="wikitable chadotable">
<caption><strong><code>cell_lineprop</code></strong> columns</caption>
<colgroup>
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
</colgroup>
<thead>
<tr class="header">
<th><a href="Glossary#Foreign_Key" title="Glossary">FK</a></th>
<th>Name</th>
<th>Type</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td></td>
<td>cell_lineprop_id</td>
<td>serial</td>
<td><em>PRIMARY KEY</em><br />
</td>
</tr>
<tr class="even">
<td><a href="Chado_Cell_Line_Module#Table:_cell_line"
title="Chado Cell Line Module"><strong><code>cell_line</code></strong></a></td>
<td>cell_line_id</td>
<td>integer</td>
<td><em>UNIQUE#1</em><br />
&#10;<p><em>NOT NULL</em><br />
</p></td>
</tr>
<tr class="odd">
<td><a href="Chado_CV_Module#Table:_cvterm"
title="Chado CV Module"><strong><code>cvterm</code></strong></a></td>
<td>type_id</td>
<td>integer</td>
<td><em>UNIQUE#1</em><br />
&#10;<p><em>NOT NULL</em><br />
</p></td>
</tr>
<tr class="even">
<td></td>
<td>value</td>
<td>text</td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td>rank</td>
<td>integer</td>
<td><em>UNIQUE#1</em><br />
&#10;<p><em>NOT NULL</em><br />
</p>
<p><br />
</p></td>
</tr>
</tbody>
</table>

**`cell_lineprop`** columns

Tables referencing **`cell_lineprop`** via [foreign
key](Glossary#Foreign_Key "Glossary") constraints:

- [**`cell_lineprop_pub`**](Chado_Cell_Line_Module#Table:_cell_lineprop_pub "Chado Cell Line Module")

\</protect\>

**`cell_lineprop`** **Additional Comments:**

Add your comments here and they will be integrated into the [schema
documentation](Chado_Schema_Documentation_HOWTO "Chado Schema Documentation HOWTO")
as part of the next Chado release.

## <span id="Table:_cell_lineprop_pub" class="mw-headline">Table: **`cell_lineprop_pub`**</span>

\<protect\>

|             |                         |
|-------------|-------------------------|
| **Table:**  | **`cell_lineprop_pub`** |
| **Module:** | ****Cell Line****       |

  

<table class="wikitable chadotable">
<caption><strong><code>cell_lineprop_pub</code></strong>
columns</caption>
<colgroup>
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
</colgroup>
<thead>
<tr class="header">
<th><a href="Glossary#Foreign_Key" title="Glossary">FK</a></th>
<th>Name</th>
<th>Type</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td></td>
<td>cell_lineprop_pub_id</td>
<td>serial</td>
<td><em>PRIMARY KEY</em><br />
</td>
</tr>
<tr class="even">
<td><a href="Chado_Cell_Line_Module#Table:_cell_lineprop"
title="Chado Cell Line Module"><strong><code>cell_lineprop</code></strong></a></td>
<td>cell_lineprop_id</td>
<td>integer</td>
<td><em>UNIQUE#1</em><br />
&#10;<p><em>NOT NULL</em><br />
</p></td>
</tr>
<tr class="odd">
<td><a href="Chado_Publication_Module#Table:_pub"
title="Chado Publication Module"><strong><code>pub</code></strong></a></td>
<td>pub_id</td>
<td>integer</td>
<td><em>UNIQUE#1</em><br />
&#10;<p><em>NOT NULL</em><br />
</p>
<p><br />
</p></td>
</tr>
</tbody>
</table>

**`cell_lineprop_pub`** columns

Tables referencing **`cell_lineprop_pub`** via [foreign
key](Glossary#Foreign_Key "Glossary") constraints:

- None.\</protect\>

**`cell_lineprop_pub`** **Additional Comments:**

Add your comments here and they will be integrated into the [schema
documentation](Chado_Schema_Documentation_HOWTO "Chado Schema Documentation HOWTO")
as part of the next Chado release.

## <span id="Table:_cell_line_feature" class="mw-headline">Table: **`cell_line_feature`**</span>

\<protect\>

|             |                         |
|-------------|-------------------------|
| **Table:**  | **`cell_line_feature`** |
| **Module:** | ****Cell Line****       |

  

<table class="wikitable chadotable">
<caption><strong><code>cell_line_feature</code></strong>
columns</caption>
<colgroup>
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
</colgroup>
<thead>
<tr class="header">
<th><a href="Glossary#Foreign_Key" title="Glossary">FK</a></th>
<th>Name</th>
<th>Type</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td></td>
<td>cell_line_feature_id</td>
<td>serial</td>
<td><em>PRIMARY KEY</em><br />
</td>
</tr>
<tr class="even">
<td><a href="Chado_Cell_Line_Module#Table:_cell_line"
title="Chado Cell Line Module"><strong><code>cell_line</code></strong></a></td>
<td>cell_line_id</td>
<td>integer</td>
<td><em>UNIQUE#1</em><br />
&#10;<p><em>NOT NULL</em><br />
</p></td>
</tr>
<tr class="odd">
<td><a href="Chado_Sequence_Module#Table:_feature"
title="Chado Sequence Module"><strong><code>feature</code></strong></a></td>
<td>feature_id</td>
<td>integer</td>
<td><em>UNIQUE#1</em><br />
&#10;<p><em>NOT NULL</em><br />
</p></td>
</tr>
<tr class="even">
<td><a href="Chado_Publication_Module#Table:_pub"
title="Chado Publication Module"><strong><code>pub</code></strong></a></td>
<td>pub_id</td>
<td>integer</td>
<td><em>UNIQUE#1</em><br />
&#10;<p><em>NOT NULL</em><br />
</p>
<p><br />
</p></td>
</tr>
</tbody>
</table>

**`cell_line_feature`** columns

Tables referencing **`cell_line_feature`** via [foreign
key](Glossary#Foreign_Key "Glossary") constraints:

- None.\</protect\>

**`cell_line_feature`** **Additional Comments:**

Add your comments here and they will be integrated into the [schema
documentation](Chado_Schema_Documentation_HOWTO "Chado Schema Documentation HOWTO")
as part of the next Chado release.

## <span id="Table:_cell_line_cvtermprop" class="mw-headline">Table: **`cell_line_cvtermprop`**</span>

\<protect\>

|             |                            |
|-------------|----------------------------|
| **Table:**  | **`cell_line_cvtermprop`** |
| **Module:** | ****Cell Line****          |

  

<table class="wikitable chadotable">
<caption><strong><code>cell_line_cvtermprop</code></strong>
columns</caption>
<colgroup>
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
</colgroup>
<thead>
<tr class="header">
<th><a href="Glossary#Foreign_Key" title="Glossary">FK</a></th>
<th>Name</th>
<th>Type</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td></td>
<td>cell_line_cvtermprop_id</td>
<td>serial</td>
<td><em>PRIMARY KEY</em><br />
</td>
</tr>
<tr class="even">
<td><a href="Chado_Cell_Line_Module#Table:_cell_line_cvterm"
title="Chado Cell Line Module"><strong><code>cell_line_cvterm</code></strong></a></td>
<td>cell_line_cvterm_id</td>
<td>integer</td>
<td><em>UNIQUE#1</em><br />
&#10;<p><em>NOT NULL</em><br />
</p></td>
</tr>
<tr class="odd">
<td><a href="Chado_CV_Module#Table:_cvterm"
title="Chado CV Module"><strong><code>cvterm</code></strong></a></td>
<td>type_id</td>
<td>integer</td>
<td><em>UNIQUE#1</em><br />
&#10;<p><em>NOT NULL</em><br />
</p></td>
</tr>
<tr class="even">
<td></td>
<td>value</td>
<td>text</td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td>rank</td>
<td>integer</td>
<td><em>UNIQUE#1</em><br />
&#10;<p><em>NOT NULL</em><br />
</p>
<p><br />
</p></td>
</tr>
</tbody>
</table>

**`cell_line_cvtermprop`** columns

Tables referencing **`cell_line_cvtermprop`** via [foreign
key](Glossary#Foreign_Key "Glossary") constraints:

- None.\</protect\>

**`cell_line_cvtermprop`** **Additional Comments:**

Add your comments here and they will be integrated into the [schema
documentation](Chado_Schema_Documentation_HOWTO "Chado Schema Documentation HOWTO")
as part of the next Chado release.

## <span id="Table:_cell_line_pub" class="mw-headline">Table: **`cell_line_pub`**</span>

\<protect\>

|             |                     |
|-------------|---------------------|
| **Table:**  | **`cell_line_pub`** |
| **Module:** | ****Cell Line****   |

  

<table class="wikitable chadotable">
<caption><strong><code>cell_line_pub</code></strong> columns</caption>
<colgroup>
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
</colgroup>
<thead>
<tr class="header">
<th><a href="Glossary#Foreign_Key" title="Glossary">FK</a></th>
<th>Name</th>
<th>Type</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td></td>
<td>cell_line_pub_id</td>
<td>serial</td>
<td><em>PRIMARY KEY</em><br />
</td>
</tr>
<tr class="even">
<td><a href="Chado_Cell_Line_Module#Table:_cell_line"
title="Chado Cell Line Module"><strong><code>cell_line</code></strong></a></td>
<td>cell_line_id</td>
<td>integer</td>
<td><em>UNIQUE#1</em><br />
&#10;<p><em>NOT NULL</em><br />
</p></td>
</tr>
<tr class="odd">
<td><a href="Chado_Publication_Module#Table:_pub"
title="Chado Publication Module"><strong><code>pub</code></strong></a></td>
<td>pub_id</td>
<td>integer</td>
<td><em>UNIQUE#1</em><br />
&#10;<p><em>NOT NULL</em><br />
</p>
<p><br />
</p></td>
</tr>
</tbody>
</table>

**`cell_line_pub`** columns

Tables referencing **`cell_line_pub`** via [foreign
key](Glossary#Foreign_Key "Glossary") constraints:

- None.\</protect\>

**`cell_line_pub`** **Additional Comments:**

Add your comments here and they will be integrated into the [schema
documentation](Chado_Schema_Documentation_HOWTO "Chado Schema Documentation HOWTO")
as part of the next Chado release.

## <span id="Table:_cell_line_library" class="mw-headline">Table: **`cell_line_library`**</span>

\<protect\>

|             |                         |
|-------------|-------------------------|
| **Table:**  | **`cell_line_library`** |
| **Module:** | ****Cell Line****       |

  

<table class="wikitable chadotable">
<caption><strong><code>cell_line_library</code></strong>
columns</caption>
<colgroup>
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
</colgroup>
<thead>
<tr class="header">
<th><a href="Glossary#Foreign_Key" title="Glossary">FK</a></th>
<th>Name</th>
<th>Type</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td></td>
<td>cell_line_library_id</td>
<td>serial</td>
<td><em>PRIMARY KEY</em><br />
</td>
</tr>
<tr class="even">
<td><a href="Chado_Cell_Line_Module#Table:_cell_line"
title="Chado Cell Line Module"><strong><code>cell_line</code></strong></a></td>
<td>cell_line_id</td>
<td>integer</td>
<td><em>UNIQUE#1</em><br />
&#10;<p><em>NOT NULL</em><br />
</p></td>
</tr>
<tr class="odd">
<td><a href="Chado_Library_Module#Table:_library"
title="Chado Library Module"><strong><code>library</code></strong></a></td>
<td>library_id</td>
<td>integer</td>
<td><em>UNIQUE#1</em><br />
&#10;<p><em>NOT NULL</em><br />
</p></td>
</tr>
<tr class="even">
<td><a href="Chado_Publication_Module#Table:_pub"
title="Chado Publication Module"><strong><code>pub</code></strong></a></td>
<td>pub_id</td>
<td>integer</td>
<td><em>UNIQUE#1</em><br />
&#10;<p><em>NOT NULL</em><br />
</p>
<p><br />
</p></td>
</tr>
</tbody>
</table>

**`cell_line_library`** columns

Tables referencing **`cell_line_library`** via [foreign
key](Glossary#Foreign_Key "Glossary") constraints:

- None.\</protect\>

**`cell_line_library`** **Additional Comments:**

Add your comments here and they will be integrated into the [schema
documentation](Chado_Schema_Documentation_HOWTO "Chado Schema Documentation HOWTO")
as part of the next Chado release.

</div>

<div class="printfooter">

Retrieved from
"<http://gmod.org/mediawiki/index.php?title=Chado_Cell_Line_Module&oldid=26557>"

</div>

<div id="catlinks" class="catlinks">

<div id="mw-normal-catlinks" class="mw-normal-catlinks">

[Categories](Special:Categories "Special:Categories"):

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

- <span id="ca-nstab-main"><a href="Chado_Cell_Line_Module" accesskey="c"
  title="View the content page [c]">Page</a></span>
- <span id="ca-talk"><a
  href="http://gmod.org/mediawiki/index.php?title=Talk:Chado_Cell_Line_Module&amp;action=edit&amp;redlink=1"
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

<div id="p-views" class="vectorTabs" role="navigation"
aria-labelledby="p-views-label">

### Views

- <span id="ca-view">[Read](Chado_Cell_Line_Module)</span>
- <span id="ca-viewsource"><a
  href="http://gmod.org/mediawiki/index.php?title=Chado_Cell_Line_Module&amp;action=edit"
  accesskey="e" title="This page is protected.
  You can view its source [e]">View source</a></span>
- <span id="ca-history"><a
  href="http://gmod.org/mediawiki/index.php?title=Chado_Cell_Line_Module&amp;action=history"
  accesskey="h" title="Past revisions of this page [h]">View history</a></span>

</div>

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

- <span id="t-whatlinkshere"><a href="Special:WhatLinksHere/Chado_Cell_Line_Module" accesskey="j"
  title="A list of all wiki pages that link here [j]">What links here</a></span>
- <span id="t-recentchangeslinked"><a href="Special:RecentChangesLinked/Chado_Cell_Line_Module"
  accesskey="k"
  title="Recent changes in pages linked from this page [k]">Related
  changes</a></span>
- <span id="t-specialpages"><a href="Special:SpecialPages" accesskey="q"
  title="A list of all special pages [q]">Special pages</a></span>
- <span id="t-print"><a
  href="http://gmod.org/mediawiki/index.php?title=Chado_Cell_Line_Module&amp;printable=yes"
  rel="alternate" accesskey="p"
  title="Printable version of this page [p]">Printable version</a></span>
- <span id="t-permalink">[Permanent
  link](http://gmod.org/mediawiki/index.php?title=Chado_Cell_Line_Module&oldid=26557 "Permanent link to this revision of the page")</span>
- <span id="t-info">[Page
  information](http://gmod.org/mediawiki/index.php?title=Chado_Cell_Line_Module&action=info)</span>
- <span id="t-smwbrowselink"><a href="Special:Browse/Chado_Cell_Line_Module" rel="smw-browse">Browse
  properties</a></span>
- <span id="t-pdf">[Print as
  PDF](http://gmod.org/mediawiki/index.php?title=Special:PdfPrint&page=Chado_Cell_Line_Module)</span>

</div>

</div>

</div>

</div>

<div id="footer" role="contentinfo">

- <span id="footer-info-lastmod">Last updated at 04:32 on 18 February
  2015.</span>
- <span id="footer-info-viewcount">9,743 page views.</span>
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
