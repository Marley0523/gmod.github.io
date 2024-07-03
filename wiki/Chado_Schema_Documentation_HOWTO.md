<div id="mw-page-base" class="noprint">

</div>

<div id="mw-head-base" class="noprint">

</div>

<div id="content" class="mw-body" role="main">

<span id="top"></span>

<div id="mw-js-message" style="display:none;">

</div>



# <span dir="auto">Chado Schema Documentation HOWTO</span>

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

The <a href="Chado" class="mw-redirect" title="Chado">Chado</a> schema
documentation on this wiki is a mixture of generated content and
material directly entered by GMOD users into this wiki. The generated
part of the documentation consists of the table definitions that are
included on the [Chado module
pages](Template:ChadoModules "Template:ChadoModules") and on the [Chado
Tables](Chado_Tables "Chado Tables") page, listing all the tables in
Chado.

All of the table descriptions on [Chado module
pages](Template:ChadoModules "Template:ChadoModules") and the [Chado
Tables](Chado_Tables "Chado Tables") page are generated every time there
is a new release of Chado. The column and table details, including
comments, come from the [PostgreSQL](PostgreSQL "PostgreSQL") data
dictionary.

<div id="toc" class="toc">

<div id="toctitle">

## Contents

</div>

- [<span class="tocnumber">1</span> <span class="toctext">Using Module
  and Table Documentation</span>](#Using_Module_and_Table_Documentation)
  - [<span class="tocnumber">1.1</span> <span class="toctext">Showing a
    Table Description</span>](#Showing_a_Table_Description)
  - [<span class="tocnumber">1.2</span> <span class="toctext">Linking to
    Module Documentation</span>](#Linking_to_Module_Documentation)
  - [<span class="tocnumber">1.3</span> <span class="toctext">Linking to
    Table Documentation</span>](#Linking_to_Table_Documentation)
- [<span class="tocnumber">2</span> <span class="toctext">Updating Table
  Documentation Part I</span>](#Updating_Table_Documentation_Part_I)
- [<span class="tocnumber">3</span> <span class="toctext">Updating
  Module and Table Documentation Part
  II</span>](#Updating_Module_and_Table_Documentation_Part_II)
  - [<span class="tocnumber">3.1</span> <span class="toctext">Integrate
    New Comments Into SQL
    DDL</span>](#Integrate_New_Comments_Into_SQL_DDL)
  - [<span class="tocnumber">3.2</span> <span class="toctext">Regenerate
    Wiki Content</span>](#Regenerate_Wiki_Content)
  - [<span class="tocnumber">3.3</span> <span class="toctext">Push
    Regenerated Wiki Text to
    GMOD.org</span>](#Push_Regenerated_Wiki_Text_to_GMOD.org)
    - [<span class="tocnumber">3.3.1</span> <span class="toctext">Update
      Table Templates</span>](#Update_Table_Templates)
    - [<span class="tocnumber">3.3.2</span> <span class="toctext">Update
      Module Pages</span>](#Update_Module_Pages)
    - [<span class="tocnumber">3.3.3</span> <span class="toctext">Update
      Chado Tables Page</span>](#Update_Chado_Tables_Page)
- [<span class="tocnumber">4</span> <span class="toctext">Why is this
  complicated?</span>](#Why_is_this_complicated.3F)
- [<span class="tocnumber">5</span>
  <span class="toctext">Internals</span>](#Internals)
  - [<span class="tocnumber">5.1</span>
    <span class="toctext">wiki.tmpl</span>](#wiki.tmpl)

</div>

## <span id="Using_Module_and_Table_Documentation" class="mw-headline">Using Module and Table Documentation</span>

This section describes how to *use* the Chado Schema Documentation when
updating/creating content on this wiki.

### <span id="Showing_a_Table_Description" class="mw-headline">Showing a Table Description</span>

To show the information about any table, use the *Chado Table Template*
for that table:

     {{ChadoTable_tablename}}

For example,

     {{ChadoTable_cv}}

will show the table description for **`cv`**:

<div class="indent">

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

### <span id="Linking_to_Module_Documentation" class="mw-headline">Linking to Module Documentation</span>

To link to a module page from another wiki page use:

     {{ChadoModuleLink|Module Name|text to show}}

For example:

     {{ChadoModuleLink|Publication|pub module}}

Which is shown as:

[pub module](Chado_Publication_Module "Chado Publication Module")

### <span id="Linking_to_Table_Documentation" class="mw-headline">Linking to Table Documentation</span>

To link to a specific table's description on a wiki page, use one of
these:

     {{ChadoModuleTableLink|Module Name|table_name}}
     {{ChadoTableLink|table_name}}

For example:

     {{ChadoModuleTableLink|Sequence|feature}}
     {{ChadoTableLink|feature}}

will result in:

|  |  |
|----|----|
| [**`feature`**](Chado_Sequence_Module#Table:_feature "Chado Sequence Module") | which links to the table on the table's module page |
| [**`feature`**](Chado_Tables#Table:_feature "Chado Tables") | which links to the table on the [Chado Tables](Chado_Tables "Chado Tables") page. |

## <span id="Updating_Table_Documentation_Part_I" class="mw-headline">Updating Table Documentation Part I</span>

*Chado Table Templates* are the building blocks of the Chado schema
documentation. They are also auto-generated, and cannot be directly
updated by editing them on the wiki. Preventing editing of the templates
ensures that user updates are not just written over and lost the next
time the templates are auto-generated.

However, it is possible to update table documentation. It is a two-step
process and you must take the first step. Here's the recipe:

1.  Enter your update on the wiki.
    1.  Login to the wiki
    2.  Go to the [module
        page](Template:ChadoModules "Template:ChadoModules") for the
        module the table is in.
    3.  Click on the \[edit\] link to the right of the table you want to
        comment on.
    4.  Go to the edit window towards the bottom of the page, and add
        your comments below the section "Additional Comments"
    5.  Save the edits.
2.  The next time Chado is released, all the module pages will be
    reviewed for any comments that have been added since the last
    update.
    1.  New comments will be added to the Chado SQL table definitions
        (and probably dropped from the "Additional Comments" sections).
    2.  The table documentation will be regenerated and reposted to the
        wiki as part of the Chado release.

See [Updating Table Documentation Part
II](#Updating_Table_Documentation_Part_II) for more on how step \#2 is
done.

  

## <span id="Updating_Module_and_Table_Documentation_Part_II" class="mw-headline">Updating Module and Table Documentation Part II</span>

Table Templates are themselves a nest of smaller MediaWiki templates.
This means it's hard to figure out how the wiki decides what to show.
However, all this complexity doesn't really matter to the wiki user or
even to the wiki editor. It is all auto-generated, and it is never
directly updated using the wiki interface. The upside of this complexity
is that it is easy to change the appearance of all Chado tables in the
wiki. All you do is modify the appropriate template.

This section describes how to regenerate the Table Templates from a live
Chado database as part of creating a new release of Chado. **If you are
not creating a Chado release, or not a GMOD web site manager, then you
don't care about this section.**

This step is itself a multistep process:

1.  Integrate new comments on module pages with comments in the SQL
    schema.
2.  Regenerate the wiki content
3.  Push new wiki content to GMOD.org.

### <span id="Integrate_New_Comments_Into_SQL_DDL" class="mw-headline">Integrate New Comments Into SQL DDL</span>

This step involves walking through all the [Chado Module
pages](Template:ChadoModules "Template:ChadoModules"), looking at any
"Additional Comments" that have been added since the last Chado release,
and then integrating them with the comments in the SQL DDL definitions
of the tables. Integrated comments should then be removed from the
module pages.

### <span id="Regenerate_Wiki_Content" class="mw-headline">Regenerate Wiki Content</span>

Next regenerate the wiki content after you have created a Chado instance
using the newly updated SQL. This is done with scripts in the Chado
source tree:

    cd chado/doc/wiki

Edit `generateChadoWikiTables.py` and update any of these variables that
you need to:

<div class="mw-geshi mw-code mw-content-ltr" dir="ltr">

<div class="python source-python">

``` de1
# UPDATE THESE 4 BEFORE RUNNING THE PROGRAM.
DB_NAME           = "testdb"
DB_USER           = "gmodhack"
MODULE_TABLE_PATH = "../../modules/module-tables.json"
WIKI_DIR          = "/tmp/ChadoWikiFiles"
```

</div>

</div>

Before you can run this script, make sure that the `postgresql_autodoc`
package is installed. The script won't run without it. Now run:

    $ ./generateChadoWikiTables.py
    Producing testdb.wiki from ./wiki.tmpl
    $

**Note:** This script will run for a *looong* time. It takes 18 minutes
on my laptop.

This script places generated wiki content in the `WIKI_DIR` directory,
which by default is `/tmp/ChadoWikiFiles/`:

<div class="indent">

|  |  |
|----|----|
| `/tmp/ChadoWikiFiles/` | Determined by what `WIKI_DIR` is set to. |
| ` Modules/` | Contains one file per module. These become the "Tables" sections of the [Chado module pages](Template:ChadoModules "Template:ChadoModules") |
| ` Tables/` | Contains one file per table; these will become Table Templates. |
| ` allTables.wiki` | List of all tables; will become the module/table list on [Chado Tables](Chado_Tables "Chado Tables"). |

</div>

### <span id="Push_Regenerated_Wiki_Text_to_GMOD.org" class="mw-headline">Push Regenerated Wiki Text to GMOD.org</span>

Now we need to update the wiki itself. First tar/compress the directory
containing all the generated wiki files. Then copy it to the GMOD web
server and unpack it. You'll need shell access to the GMOD web server to
do this. Then update the three types of pages:

- Table Templates
- Module Pages
- [Chado Tables](Chado_Tables "Chado Tables") page

#### <span id="Update_Table_Templates" class="mw-headline">Update Table Templates</span>

On the GMOD web server create this script:

<div class="mw-geshi mw-code mw-content-ltr" dir="ltr">

<div class="python source-python">

``` de1
#!/usr/bin/python
# ===================
#
# Upload all the table templates to the GMOD wiki.
 
IMPORT_TEXT_FILE_PATH = "/var/www/html/w/maintenance/importTextFile.php"
TABLES_DIR = "Tables"
MW_USERNAME = "Your gmod.org MediaWiki Username.  e.g., 'Clements'"
COMMENT = "Table definition  for Chado Version a.b on yyyy/mm/dd"
 
import glob
import os
 
for tablePath in glob.glob(TABLES_DIR + "/*.wiki"):
    tableFile = os.path.split(tablePath)[1]
    tableName = tableFile.split(".")[0]
    command = (
        "/usr/bin/php " + IMPORT_TEXT_FILE_PATH +
        " --title 'Template:ChadoTable_" + tableName +
        "' --user '" + MW_USERNAME + "' --comment '" + COMMENT + "' " +
        tablePath)
    print(command)
    os.system(command)
```

</div>

</div>

Set `MW_USERNAME` and `COMMENT` appropriately. Also set `TABLES_DIR` to
be the relative path from the script to directory containing the Table
Templates.

This script uses the Mediawiki maintenance script
<a href="http://www.mediawiki.org/wiki/Manual:ImportTextFile.php"
class="external text"><code>ImportTextFile.php</code></a> to upload the
Table Templates.

#### <span id="Update_Module_Pages" class="mw-headline">Update Module Pages</span>

We don't yet have an automated way to synchronize the [module
pages](Template:ChadoModules "Template:ChadoModules") with the update.

The *first time* this process is done (the process described on this
page), you'll probably want to do a wholesale replacement of the
"Tables" section of each page. This will replace the current hard-coded
table defs, with the Table Templates. It will also update the table list
to be current.

On subsequent updates, you will only need to touch the module pages if a
table was dropped or added. The Table Templates will take care of the
rest.

#### <span id="Update_Chado_Tables_Page" class="mw-headline">Update [Chado Tables](Chado_Tables "Chado Tables") Page</span>

The [Chado Tables](Chado_Tables "Chado Tables") page lists every table
defined in Chado. Replace this wholesale each time.

## <span id="Why_is_this_complicated.3F" class="mw-headline">Why is this complicated?</span>

With any programatically generated wiki doc we've got conflicting goals:

1.  Keep the doc close to the source. In this case that means in the SQL
    table definitions
2.  Make that doc available on the wiki, where it is easy to find
3.  Keep the wiki doc in sync with the source doc.
4.  Allow users to use the wiki to update doc, and not have it be lost
    every time the wiki doc is regenerated.

We've tackled this for Chado with MediaWiki Templates:

1.  There's a template for each table. (e.g.,
    [Template:ChadoTable_cv](Template:ChadoTable_cv "Template:ChadoTable cv"))
2.  The templates are protected and can't be edited by regular wiki
    users (prevents lost updates)
3.  The [Chado Module
    pages](Template:ChadoModules "Template:ChadoModules") include the
    templates and clearly have a place for additional comments to be
    added. (Encourages updates without requiring SVN update access).
4.  Those comments can be incorporated into the SQL on the next Chado
    update, prior to regenerating the templates.
5.  The Chado Table templates are regenerated and reloaded for every
    Chado release.

## <span id="Internals" class="mw-headline">Internals</span>

Documentation on the internals of how all this is done.

### <span id="wiki.tmpl" class="mw-headline">`wiki.tmpl`</span>

`wiki.tmpl` defines the template used by `postgresql_autodoc` to
generate the initial MediaWiki definitions of the tables. Since it
generates MediaWiki markup and that markup is sensitive to newlines and
blank lines, this template is unreadable. Therefore, a version is
included below that is indented and has newlines. Note that this version
won't work, but hopefully it will make the version that is used be more
readable.

    <!-- TMPL_LOOP name="schemas" -->
      <!-- TMPL_LOOP name="tables" -->
        <!-- TMPL_UNLESS name="view_definition" -->
          __TABLE_START__
          
            <noinclude>{{ChadoTableTemplateHeader}}</noinclude>
            {{ChadoTableDesc
                |__MODULE__
                |<!-- TMPL_VAR ESCAPE="HTML" name="table" -->
                |<!-- TMPL_IF name="table_comment" -->
                   <!-- TMPL_VAR ESCAPE="HTML" name="table_comment" -->
                 <!-- /TMPL_IF name="table_comment" -->
            }}
            {{ChadoColumnsHeader
                |__MODULE__
                |<!-- TMPL_VAR ESCAPE="HTML" name="table" -->
            }}
            <!-- TMPL_LOOP name="columns" -->
              {{ChadoColumnDesc
                |<!-- TMPL_LOOP name="column_constraints" -->
                   <!-- TMPL_VAR name="column_constraints" -->
                   <!-- TMPL_IF name="column_fk" -->
                     {{ChadoModuleTableLink
                         |__FK_MODULE__
                         |<!-- TMPL_VAR ESCAPE="HTML" name="column_fk_table" -->}}
                   <!-- /TMPL_IF name="column_fk" -->
                 <!-- /TMPL_LOOP name="column_constraints" -->
                |<!-- TMPL_VAR ESCAPE="HTML" name="column" -->
                |<!-- TMPL_VAR ESCAPE="HTML" name="column_type" -->
                |<!-- TMPL_LOOP name="column_constraints" -->
                   <!-- TMPL_IF name="column_primary_key" -->
                     ''PRIMARY KEY''<br />
                   <!-- /TMPL_IF name="column_primary_key" -->
                   <!-- TMPL_IF name="column_unique" -->
                     ''UNIQUE
                     <!-- TMPL_IF name="column_unique_keygroup" -->
                       #<!-- TMPL_VAR name="column_unique_keygroup" -->
                     <!-- /TMPL_IF name="column_unique_keygroup" -->''<br />
                   <!-- /TMPL_IF name="column_unique" -->
                 <!-- /TMPL_LOOP name="column_constraints" -->
                 <!-- TMPL_IF name="column_constraint_notnull" -->
                   ''NOT NULL''<br />
                 <!-- /TMPL_IF name="column_constraint_notnull" -->
                 <!-- TMPL_IF name="column_default" -->
                   ''DEFAULT ''<!-- TMPL_VAR ESCAPE="HTML" name="column_default" --><br />
                 <!-- /TMPL_IF name="column_default" -->
                 <!-- TMPL_IF name="column_comment" -->
                   <!-- TMPL_VAR ESCAPE="HTML" name="column_comment" -->
                 <!-- /TMPL_IF name="column_comment" -->
              }}
            <!-- /TMPL_LOOP name="columns" -->
            {{ChadoColumnsFooter}}

            {{ChadoTablesReferencingHeader
                |<!-- TMPL_VAR ESCAPE="HTML" name="table" -->
            }}
            <!-- TMPL_IF name="fk_schemas" -->
              <!-- TMPL_LOOP name="fk_schemas" -->
                {{ChadoReferencingTable
                    |__FK_MODULE__
                    |<!-- TMPL_VAR ESCAPE="HTML" name="fk_table" -->
                }}
              <!-- /TMPL_LOOP name="fk_schemas" -->
            <!-- TMPL_ELSE name="fk_schemas" -->
              * None.
            <!-- /TMPL_IF name="fk_schemas" -->
          
        <!-- /TMPL_UNLESS name="view_definition">
      <!-- /TMPL_LOOP name="tables" -->
    <!-- /TMPL_LOOP name="schemas" -->

There ya go. Clear as mud.

</div>

<div class="printfooter">

Retrieved from
"<http://gmod.org/mediawiki/index.php?title=Chado_Schema_Documentation_HOWTO&oldid=22866>"

</div>

<div id="catlinks" class="catlinks">

<div id="mw-normal-catlinks" class="mw-normal-catlinks">

[Categories](Special%3ACategories "Special%3ACategories"):

- [Chado Modules](Category%3AChado_Modules "Category%3AChado Modules")
- [Chado](Category%3AChado "Category%3AChado")
- [Wiki Tools](Category%3AWiki_Tools "Category%3AWiki Tools")

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
  href="http://gmod.org/mediawiki/index.php?title=Talk:Chado_Schema_Documentation_HOWTO&amp;action=edit&amp;redlink=1"
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


- <span id="t-smwbrowselink"><a href="Special%3ABrowse/Chado_Schema_Documentation_HOWTO"
  rel="smw-browse">Browse properties</a></span>


</div>

</div>

</div>

</div>

<div id="footer" role="contentinfo">

- <span id="footer-info-lastmod">Last updated at 20:28 on 29 January
  2013.</span>
<!-- - <span id="footer-info-viewcount">64,827 page views.</span> -->
- <span id="footer-info-copyright">Content is available under
  <a href="http://www.gnu.org/licenses/fdl-1.3.html" class="external"
  rel="nofollow">a GNU Free Documentation License</a> unless otherwise
  noted.</span>

<!-- -->

- <span id="footer-places-about">[About
  GMOD](GMOD%3AAbout "GMOD%3AAbout")</span>

<!-- -->






</div>
