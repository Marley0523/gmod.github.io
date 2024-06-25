<div id="mw-page-base" class="noprint">

</div>

<div id="mw-head-base" class="noprint">

</div>

<div id="content" class="mw-body" role="main">

<span id="top"></span>

<div id="mw-js-message" style="display:none;">

</div>



# <span dir="auto">Template:ChadoTable cv</span>

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

This template is a
*<a href="Chado" class="mw-redirect" title="Chado">Chado</a> Table
Template*. It defines a single table from the
<a href="Chado" class="mw-redirect" title="Chado">Chado</a> schema, and
every Chado table has a template like this one. This template is
automatically included in two places:

1.  The module page for the module the table is a part of. This is where
    updates and comments should be posted.
2.  The [Chado Tables](Chado_Tables "Chado Tables") page, which lists
    all tables.

You can include this template anywhere you want to show the table
description.

------------------------------------------------------------------------

|             |                                             |
|-------------|---------------------------------------------|
| **Table:**  | **`cv`**                                    |
| **Module:** | **[CV](Chado_CV_Module "Chado CV Module")** |

A controlled vocabulary or ontology. A cv is composed of cvterms (AKA
terms, classes, types, universals - relations and properties are also
stored in cvterm) and the relationships between them.

<table class="wikitable chadotable">
<caption><strong><code>cv</code></strong> columns</caption>
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
<td>cv_id</td>
<td>serial</td>
<td><em>PRIMARY KEY</em><br />
</td>
</tr>
<tr class="even">
<td></td>
<td>name</td>
<td>character varying(255)</td>
<td><em>UNIQUE</em><br />
&#10;<p><em>NOT NULL</em><br />
The name of the ontology. This corresponds to the obo-format
-namespace-. cv names uniquely identify the cv. In OBO file format, the
cv.name is known as the namespace.</p></td>
</tr>
<tr class="odd">
<td></td>
<td>definition</td>
<td>text</td>
<td>A text description of the criteria for
<p>membership of this ontology.</p></td>
</tr>
</tbody>
</table>

**`cv`** columns

Tables referencing **`cv`** via [foreign
key](Glossary#Foreign_Key "Glossary") constraints:

- [**`cvterm`**](Chado_CV_Module#Table:_cvterm "Chado CV Module")
- [**`cvtermpath`**](Chado_CV_Module#Table:_cvtermpath "Chado CV Module")

</div>

<div class="printfooter">

Retrieved from
"<http://gmod.org/mediawiki/index.php?title=Template:ChadoTable_cv&oldid=15705>"

</div>

<div id="catlinks" class="catlinks catlinks-allhidden">

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

- <span id="ca-nstab-template"><a href="Template:ChadoTable_cv" accesskey="c"
  title="View the template [c]">Template</a></span>
- <span id="ca-talk"><a
  href="http://gmod.org/mediawiki/index.php?title=Template_talk:ChadoTable_cv&amp;action=edit&amp;redlink=1"
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


- <span id="t-pdf">[Print as
  PDF](http://gmod.org/mediawiki/index.php?title=Special:PdfPrint&page=Template:ChadoTable_cv)</span>

</div>

</div>

</div>

</div>

<div id="footer" role="contentinfo">

- <span id="footer-info-lastmod">Last updated at 19:59 on 24 November
  2010.</span>
<!-- - <span id="footer-info-viewcount">6,536 page views.</span> -->
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


<div style="clear:both">

</div>

</div>
