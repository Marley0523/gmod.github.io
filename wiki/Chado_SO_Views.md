<div id="mw-page-base" class="noprint">

</div>

<div id="mw-head-base" class="noprint">

</div>

<div id="content" class="mw-body" role="main">

<span id="top"></span>

<div id="mw-js-message" style="display:none;">

</div>



# <span dir="auto">Chado SO Views</span>

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

Starting with the GMOD 1.1 release, Chado has a set of views to make
querying the feature table for specific SO types (eg, gene, transcript,
region) easier. These views are a schema called "so"; as a result, to
using them in a query, you generally need to identify the schema in the
query.

# <span id="How_the_views_are_defined" class="mw-headline">How the views are defined</span>

For each cvterm in the Sequence Ontology, a view is created with that
terms name (except when the length of the name would exceed the length
of allowable relation names in PostgreSQL). The views form a join
between the cvterm table and the feature table such that if a feature is
identified as having a feature.type_id of the name of the view, or a
type_id that IS_A type child of the name of the view, it is found.

For example, the following view is for all exons in the feature table:

<div class="mw-geshi mw-code mw-content-ltr" dir="ltr">

<div class="sql source-sql">

``` de1
CREATE VIEW exon AS
  SELECT
    feature_id AS exon_id,
    feature.*
  FROM
    feature INNER JOIN cvterm ON (feature.type_id = cvterm.cvterm_id)
  WHERE cvterm.name = 'coding_exon' OR 
        cvterm.name = 'noncoding_exon' OR 
        cvterm.name = 'interior_exon' OR
        cvterm.name = 'exon_of_single_exon_gene' OR
        cvterm.name = 'interior_coding_exon' OR
        cvterm.name = 'five_prime_coding_exon' OR
        cvterm.name = 'three_prime_coding_exon' OR
        cvterm.name = 'three_prime_noncoding_exon' OR
        cvterm.name = 'five_prime_noncoding_exon' OR
        cvterm.name = 'exon';
```

</div>

</div>

Essentially, it is a way of taking advantage of the structure of the
ontology without calculating the
[closure](Chado_CV_Module#Transitive_Closure "Chado CV Module"). Of
course, a downside of this approach is that it is hard coded for a
particular version of the Sequence Ontology, and if it changes, the
views will need to be updated as well.

# <span id="Some_example_queries" class="mw-headline">Some example queries</span>

</div>

<div class="printfooter">

Retrieved from
"<http://gmod.org/mediawiki/index.php?title=Chado_SO_Views&oldid=22163>"

</div>

<div id="catlinks" class="catlinks">

<div id="mw-normal-catlinks" class="mw-normal-catlinks">

[Categories](Special%3ACategories "Special%3ACategories"):

- [Chado](Category%3AChado "Category%3AChado")
- [Database Tools](Category%3ADatabase_Tools "Category%3ADatabase Tools")

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
  href="http://gmod.org/mediawiki/index.php?title=Talk:Chado_SO_Views&amp;action=edit&amp;redlink=1"
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


- <span id="t-smwbrowselink"><a href="Special%3ABrowse/Chado_SO_Views" rel="smw-browse">Browse
  properties</a></span>


</div>

</div>

</div>

</div>

<div id="footer" role="contentinfo">

- <span id="footer-info-lastmod">Last updated at 23:34 on 8 October
  2012.</span>
<!-- - <span id="footer-info-viewcount">16,151 page views.</span> -->
- <span id="footer-info-copyright">Content is available under
  <a href="http://www.gnu.org/licenses/fdl-1.3.html" class="external"
  rel="nofollow">a GNU Free Documentation License</a> unless otherwise
  noted.</span>

<!-- -->

- <span id="footer-places-about">[About
  GMOD](GMOD:About "GMOD:About")</span>

<!-- -->






</div>
