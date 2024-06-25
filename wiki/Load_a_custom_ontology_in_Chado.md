<div id="mw-page-base" class="noprint">

</div>

<div id="mw-head-base" class="noprint">

</div>

<div id="content" class="mw-body" role="main">

<span id="top"></span>

<div id="mw-js-message" style="display:none;">

</div>



# <span dir="auto">Load a custom ontology in Chado</span>

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

- [<span class="tocnumber">1</span> <span class="toctext">Howto load a
  custom ontology in
  Chado</span>](#Howto_load_a_custom_ontology_in_Chado)
  - [<span class="tocnumber">1.1</span> <span class="toctext">The
    ontology</span>](#The_ontology)
  - [<span class="tocnumber">1.2</span> <span class="toctext">Chado
    xml</span>](#Chado_xml)
  - [<span class="tocnumber">1.3</span> <span class="toctext">Loading
    into Chado</span>](#Loading_into_Chado)

</div>

# <span id="Howto_load_a_custom_ontology_in_Chado" class="mw-headline">Howto load a custom ontology in Chado</span>

We have an ontology that we want to load into Chado. The process to
follow is described in the INSTALL.Chado document.

    If you already have the desired ontology files locally, you
    can execute a command for each file to load it.  Note again that
    the Relationship Ontology is required before all others, and the
    the Sequence Ontology (SO) is absolutely required for proper
    functioning of the database.  The commands to load an ontology are:

          $  go2fmt.pl -p obo_text -w xml /path/to/obofile | \
                go-apply-xslt oboxml_to_chadoxml - > obo_text.xml

    This creates a chadoxml file of the obo file - then execute:

         $ stag-storenode.pl \
         -d 'dbi:Pg:dbname=$CHADO_DB_NAME;host=$CHADO_DB_HOST;port=$CHADO_DB_PORT' \
         --user $CHADO_DB_USERNAME --password $CHADO_DB_PASSWORD obo_text.xml

    If you have other ontology format files, the commands are similar;
    consult the documentation for go2fmt.pl and go-apply-xslt for your
    file format.

Here we explained with more detail.

## <span id="The_ontology" class="mw-headline">The ontology</span>

We have an ontology stored in an obo file. As an example we can try to
load the following ontology.

    format-version: 1.2
    default-namespace: library_type

    [Term]
    id:internal_go_lib:000001
    name: library_type

    [Term]
    id: internal_go_lib:000002
    name: cDNA library
    definition: a collection of complementary DNA fragments
    is_a: cmv_internal_go_lib:000001

    [Typedef]
    id: internal_go_lib:is_a
    name: is_a
    definition: The basic subclassing relationship

    [Typedef]
    id: internal_go_lib:disjoint_from
    name: disjoint_from
    definition: Indicates that two classes are disjoint

    [Typedef]
    id: internal_go_lib:instance_of
    name: instance_of
    definition: Indicates the type of an instance

    [Typedef]
    id: internal_go_lib:inverse_of
    name: inverse_of
    definition: Indicates that one relationship type is the inverse of another

    [Typedef]
    id: internal_go_lib:union_of
    name: union_of
    definition: Indicates that a term is the union of several others

    [Typedef]
    id: internal_go_lib:intersection_of
    name: intersection_of
    definition: Indicates that a term is the intersection of several others [OBO:defs]

  
The name of the file should match the database that will go in the db
table (although I'm not sure about that). I've named this file as
internal_go_lib.

## <span id="Chado_xml" class="mw-headline">Chado xml</span>

To load the ontology into chado we have to create a Chado xml file.
There are two options to do it:

- go2fmt.pl to create a go xml and go-apply-xslt to transform it to
  chado xml (as described in the install).
- go2chadoxml to go from obo to chado xml in one go.

Let's do it with go2chadoxml

    $ go2chadoxml internal_go_lib > internal_go_lib.chado.xml

We have obtained an xml file ready to be loaded into chado.

## <span id="Loading_into_Chado" class="mw-headline">Loading into Chado</span>

Now we can load the xml file into chado with the stag-storenode.pl
command.

    stag-storenode.pl -d 'dbi:Pg:dbname=chado_test;host=localhost;port=5432' --user chado_user --password chado_pass internal_go_lib.chado.xml

Prior to that loading in the cv table I had added library_type and
internal_go_lib in the db table. I don't know if that's required, I
guess that stag-storenode.pl will do it for you anyway.

</div>

<div class="printfooter">

Retrieved from
"<http://gmod.org/mediawiki/index.php?title=Load_a_custom_ontology_in_Chado&oldid=8481>"

</div>

<div id="catlinks" class="catlinks">

<div id="mw-normal-catlinks" class="mw-normal-catlinks">

[Categories](Special:Categories "Special:Categories"):

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

- <span id="ca-nstab-main"><a href="Load_a_custom_ontology_in_Chado" accesskey="c"
  title="View the content page [c]">Page</a></span>
- <span id="ca-talk"><a
  href="http://gmod.org/mediawiki/index.php?title=Talk:Load_a_custom_ontology_in_Chado&amp;action=edit&amp;redlink=1"
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


- <span id="t-smwbrowselink"><a href="Special:Browse/Load_a_custom_ontology_in_Chado"
  rel="smw-browse">Browse properties</a></span>
- <span id="t-pdf">[Print as
  PDF](http://gmod.org/mediawiki/index.php?title=Special:PdfPrint&page=Load_a_custom_ontology_in_Chado)</span>

</div>

</div>

</div>

</div>

<div id="footer" role="contentinfo">

- <span id="footer-info-lastmod">Last updated at 11:01 on 10 June
  2009.</span>
<!-- - <span id="footer-info-viewcount">14,175 page views.</span> -->
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
