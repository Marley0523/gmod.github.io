<div id="mw-page-base" class="noprint">

</div>

<div id="mw-head-base" class="noprint">

</div>

<div id="content" class="mw-body" role="main">

<span id="top"></span>

<div id="mw-js-message" style="display:none;">

</div>



# <span dir="auto">A Brief Guide to Databases</span>

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

A database provides infrastructure for storing, managing, and retrieving
information.

  

<div id="toc" class="toc">

<div id="toctitle">

## Contents

</div>

- [<span class="tocnumber">1</span> <span class="toctext">Tables,
  Records, and Attributes</span>](#Tables.2C_Records.2C_and_Attributes)
  - [<span class="tocnumber">1.1</span>
    <span class="toctext">Example</span>](#Example)
- [<span class="tocnumber">2</span>
  <span class="toctext">Keys</span>](#Keys)
  - [<span class="tocnumber">2.1</span>
    <span class="toctext">Example</span>](#Example_2)

</div>

## <span id="Tables.2C_Records.2C_and_Attributes" class="mw-headline">Tables, Records, and Attributes</span>

Databases store information in **tables**. A database usually has
multiple tables containing data on different types of things.

Each table in the database can be broken down into rows and columns,
like a spreadsheet.

Rows, or **records**, represent one instance of the type of item
described in the table.

Columns, or **attributes**, are the aspects of the item that we are
collecting information on.

### <span id="Example" class="mw-headline">Example</span>

Here's an example of a table in a database containing information about
some books. Each record represents a book, and the attributes that we
are collecting information on are the ISBN, the title, the author, the
publication date, and whether a Kindle version is available.

| Title | Author | ISBN | Publication date | Kindle version |
|----|----|----|----|----|
| Mouse as a Model Organism: From Animals to Cells | Cord Brakebusch and Taina Pihlajaniemi | 9400707495 | Apr 2011 | 1 |
| Evolutionary Ecology of Social and Sexual Systems: Crustaceans As Model Organisms | J. Emmett Duffy and Martin Thiel | 0879698659 | Sep 2007 | 1 |
| Emerging Model Organisms: A Laboratory Manual, Volume 2 | Cold Spring Harbor Laboratory Press | 0879698721 | Apr 2011 | 0 |
| Emerging Model Organisms: A Laboratory Manual, Volume 1 | Cold Spring Harbor Laboratory Press | 0805074589 | Nov 2008 | 0 |
| A Feeling for the Organism, 10th Aniversary Edition: The Life and Work of Barbara McClintock | Evelyn Fox Keller | 0898715547 | Feb 1984 | 0 |

book

  

## <span id="Keys" class="mw-headline">Keys</span>

In a database table, certain attributes (columns) are **keys**. Keys are
used to identify records (rows) and link records together.

A **primary key** uniquely identifies a record in a database table; the
attribute to be the primary key would usually be decided when the
database schema is being designed, rather than waiting until after the
database has been populated. Some database tables contain more than
attribute that can uniquely identify a record. These extra unique keys
are **alternate keys**.

In a relational database, tables are linked together by using the
primary key from one table in a related table. The primary key then
becomes a **foreign** key.

  

### <span id="Example_2" class="mw-headline">Example</span>

Looking at our previous example of the book database, the ISBN is the
primary key in this database table. The title could be used as an
alternate key, but given how common some book titles are, it would not
be a good long term strategy.

| Title | Author | ISBN | Publication date | Kindle version |
|----|----|----|----|----|
| Mouse as a Model Organism: From Animals to Cells | Cord Brakebusch and Taina Pihlajaniemi | 9400707495 | Apr 2011 | 1 |
| Evolutionary Ecology of Social and Sexual Systems: Crustaceans As Model Organisms | J. Emmett Duffy and Martin Thiel | 0879698659 | Sep 2007 | 1 |
| Emerging Model Organisms: A Laboratory Manual, Volume 2 | Cold Spring Harbor Laboratory Press | 0879698721 | Apr 2011 | 0 |
| Emerging Model Organisms: A Laboratory Manual, Volume 1 | Cold Spring Harbor Laboratory Press | 0805074589 | Nov 2008 | 0 |
| A Feeling for the Organism, 10th Aniversary Edition: The Life and Work of Barbara McClintock | Evelyn Fox Keller | 0898715547 | Feb 1984 | 0 |

book

  
If we now imagine a second table with book prices in it:

| ISBN       | Format    | Price (\$) |
|------------|-----------|------------|
| 9400707495 | Hardback  | 189.00     |
| 9400707495 | Ebook     | 151.20     |
| 0879698659 | Hardback  | 59.99      |
| 0879698659 | Paperback | 14.99      |
| 0879698659 | Ebook     | 34.99      |
| 0879698721 | Hardback  | 234.00     |
| 0879698721 | Paperback | 134.00     |
| 0805074589 | Hardback  | 234.00     |
| 0805074589 | Paperback | 129.00     |
| 0898715547 | Hardback  | 64.99      |

price

This table has no primary keys, and the ISBN is acting as a **foreign
key**.

If we look at an individual record from each table, we can see how the
two tables relate to each other.

<div class="zero">

<div style="float: left; width:40em">

|                  |                                                  |
|------------------|--------------------------------------------------|
| Title            | Mouse as a Model Organism: From Animals to Cells |
| Author           | Cord Brakebusch and Taina Pihlajaniemi           |
| ISBN             | 9400707495                                       |
| Publication date | Apr 2011                                         |
| Kindle version   | 1                                                |

book

</div>

<div style="float: left; width:15em">

|        |            |
|--------|------------|
| ISBN   | 9400707495 |
| format | Hardback   |
| price  | 189.00     |

price

</div>

</div>

</div>

<div class="printfooter">

Retrieved from
"<http://gmod.org/mediawiki/index.php?title=A_Brief_Guide_to_Databases&oldid=21594>"

</div>

<div id="catlinks" class="catlinks">

<div id="mw-normal-catlinks" class="mw-normal-catlinks">

[Categories](Special:Categories "Special:Categories"):

- [Documentation](Category:Documentation "Category:Documentation")
- <a
  href="http://gmod.org/mediawiki/index.php?title=Category:Database&amp;action=edit&amp;redlink=1"
  class="new" title="Category:Database (page does not exist)">Database</a>

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

- <span id="ca-nstab-main"><a href="A_Brief_Guide_to_Databases" accesskey="c"
  title="View the content page [c]">Page</a></span>
- <span id="ca-talk"><a
  href="http://gmod.org/mediawiki/index.php?title=Talk:A_Brief_Guide_to_Databases&amp;action=edit&amp;redlink=1"
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


- <span id="t-smwbrowselink"><a href="Special:Browse/A_Brief_Guide_to_Databases"
  rel="smw-browse">Browse properties</a></span>
- <span id="t-pdf">[Print as
  PDF](http://gmod.org/mediawiki/index.php?title=Special:PdfPrint&page=A_Brief_Guide_to_Databases)</span>

</div>

</div>

</div>

</div>

<div id="footer" role="contentinfo">

- <span id="footer-info-lastmod">Last updated at 21:18 on 7 September
  2012.</span>
<!-- - <span id="footer-info-viewcount">19,185 page views.</span> -->
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
