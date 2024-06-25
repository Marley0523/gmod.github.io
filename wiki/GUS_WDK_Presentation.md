<div id="mw-page-base" class="noprint">

</div>

<div id="mw-head-base" class="noprint">

</div>

<div id="content" class="mw-body" role="main">

<span id="top"></span>

<div id="mw-js-message" style="display:none;">

</div>



# <span dir="auto">GUS WDK Presentation</span>

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
  <span class="toctext">Overview</span>](#Overview)
- [<span class="tocnumber">2</span> <span class="toctext">The GUS Perl
  Object Layer</span>](#The_GUS_Perl_Object_Layer)
- [<span class="tocnumber">3</span> <span class="toctext">The GUS
  WDK</span>](#The_GUS_WDK)

</div>

  

  

#### <span id="Overview" class="mw-headline">Overview</span>

Genome databases typically have distinct layers

- batch data production
- data presentation
- curation

<a href="http://www.plasmodb.org" class="external text"
rel="nofollow">PlasmoDB</a>, the Genome Resource for Plasmodium, the
malaria parasite, is a warehouse that integrates a large number of data
sources about Plasmodium. It does not do curation. The experience of
PlasmoDB is that the batch data production back end and the web front
end have very different middleware needs.

The PlasmoDB uses

- backend: the GUS Perl Object Layer
- frontend: the GUS Web Development Kit

#### <span id="The_GUS_Perl_Object_Layer" class="mw-headline">The GUS Perl Object Layer</span>

The GUS Perl Object Layer is an in-house developed O-R layer specific to
GUS databases. It was presented at the caucus only briefly as an example
backend layer.

- Written eight years ago (Mark Gibson/Brian Brunk)
  - There were no Perl O-R tools available

<!-- -->

- One table \<-\> one object (including linking tables)
  - Columns become accessors: getScore(), setScore()
  - Relationships modeled with get/setChild() and get/setParent()
  - Conscious of “one-level” subclassing (GUS style)

<!-- -->

- Cascading retrieve, update, delete
  - Cascade can also follow parent links

<!-- -->

- Default transaction scope: one object graph
  - Or, you can manually control transations

<!-- -->

- Simple object retrieval “language”
  - Equal in power to a single table select
  - Can also retrieve by navigation

<!-- -->

- Code generator

<!-- -->

- Recently evaluated Class::DBI
  - Would have worked nicely, but we didn’t transition
  - Nice subclassing model

#### <span id="The_GUS_WDK" class="mw-headline">The GUS WDK</span>

The GUS WDK is a presentation layer toolkit (for any relational schema).
It uses a M-V-C design. The focus of this caucus is O-R middleware,
which corresponds to the WDK's Model.

The intention of the WDK Model's design is to allow non-programmers to
design coarse grained objects that correspond to the entities presented
to a user in a web UI, and to specify the queries that users can ask
with respect to those entities.

The WDK's Model is configured in XML. The model author specifies

- record classes (eg Gene, SNP)
- queries against those classes
- site content

Here is a sample specification of an ArrayElement entity:

<div class="mw-geshi mw-code mw-content-ltr" dir="ltr">

<div class="xml source-xml">

``` de1
<wdkModel>
<recordClass idPrefix="" name="ArrayElementRecordClass" type="Array Element">
 
  <attributeQueryRef ref="ArrayElementAttributes.ProviderAndOrganism">
     <columnAttribute name="provider" displayName="Provider"/>
     <columnAttribute name="genus_species" displayName="genus_species"/>
     <columnAttribute name="organism" displayName="Organism"/>
     <columnAttribute name="sequence" displayName="Sequence"/>
  </attributeQueryRef>
 
  <table name="GenomicLocations" displayName="Genomic Locations"
               queryRef="ArrayElementTables.GenomicLocations">
    <columnAttribute name="source_id" internal="true"/>
    <linkAttribute name="genomicSequence" displayName="Genomic Sequence"
                   visible="$$source_id$$">
      <url>
        <![CDATA[showRecord.do?name=SequenceRecordClasses.SequenceRecordClass&primary_key=$$source_id$$]]>
      </url>
    </linkAttribute>
    <columnAttribute name="min_subject_start" displayName="Start"/>
    <columnAttribute name="max_subject_end" displayName="End"/>
    <columnAttribute name="gbrowse_start" internal="true"/>
    <columnAttribute name="gbrowse_end" internal="true"/>
    <columnAttribute name="max_subject_end" displayName="End"/>
    <columnAttribute name="is_reversed" displayName="Reversed"/>
    <linkAttribute name="gbrowseLink" displayName="Genome Browser" visible="view">
      <url>
         <![CDATA[@CGI_URL@/gbrowse/plasmodb/?name=$$source_id$$:$$gbrowse_start$$-$$gbrowse_end$$;enable=AnnotatedGenes]]>
      </url>
    </linkAttribute>
  </table>
 
  <table name="Genes" displayName="Mapped Genes" queryRef="ArrayElementTables.Genes">
     <columnAttribute name="source_id" internal="true"/>
     <linkAttribute name="gene" displayName="Gene" visible="$$source_id$$">
       <url>
         <![CDATA[showRecord.do?name=GeneRecordClasses.GeneRecordClass&primary_key=$$source_id$$]]>
       </url>
     </linkAttribute>
  </table>
</recordClass>
 
<querySet name="ArrayElementAttributes">
  <sqlQuery name="ProviderAndOrganism" isCacheable="false">
      <paramRef ref="params.primaryKey"/>
      <column name="provider"/>
      <column name="genus_species"/>
      <column name="sequence"/>
      <column name="organism"/>
      <syntaxhighlight lang="sql">
      <![CDATA[
            SELECT ens.source_id, ed.name as provider, ens.sequence,
                   tn.name as genus_species,
                   SUBSTR(tn.name, 1, 1) || '. '
                   || SUBSTR(tn.name, INSTR(tn.name, ' ', 1, 1) +1) as organism
            FROM sres.ExternalDatabase ed, sres.ExternalDatabaseRelease edr,
                 dots.ExternalNASequence ens, sres.TaxonName tn
            WHERE ens.source_id = '$$primaryKey$$'
              AND ens.external_database_release_id = edr.external_database_release_id
              AND edr.external_database_id = ed.external_database_id
              AND tn.taxon_id = ens.taxon_id
              AND tn.name_class = 'scientific name'
             ]]>
```

</div>

</div>

     </sqlQuery>

\</querySet\>

\<querySet name="ArrayElementTables"\>

     <sqlQuery name="Genes" isCacheable="false">
       <paramRef ref="params.primaryKey"/>
       <column name="source_id" />

<div class="mw-geshi mw-code mw-content-ltr" dir="ltr">

<div class="sql source-sql">

``` de1
    <![CDATA[
              SELECT t.source_id
              FROM dots.Similarity s, dots.Transcript t,
                   dots.ExternalNaSequence ens,
                   core.TableInfo ti1, core.TableInfo ti2
              WHERE ens.source_id = '$$primaryKey$$'
                AND ens.na_sequence_id = s.query_id
                AND 'ExternalNASequence' = ti1.name
                AND ti1.table_id = s.query_table_id
                AND 'Transcript' = ti2.name
                AND ti2.table_id = s.subject_table_id
                AND t.na_feature_id = s.subject_id
             ]]>
```

</div>

</div>

     </sqlQuery>

     <sqlQuery name="GenomicLocations" isCacheable="false">
       <paramRef ref="params.primaryKey"/>
       <column name="source_id" />
       <column name="min_subject_start" />
       <column name="max_subject_end" />
       <column name="gbrowse_start" />
       <column name="gbrowse_end" />
       <column name="is_reversed" />

<div class="mw-geshi mw-code mw-content-ltr" dir="ltr">

<div class="sql source-sql">

``` de1
     <![CDATA[
              SELECT ens2.source_id, s.min_subject_start, s.max_subject_end,
                     s.is_reversed,
                     s.min_subject_start - 25000 AS gbrowse_start,
                     s.min_subject_start + 25000 AS gbrowse_end
              FROM dots.Similarity s,
                   dots.ExternalNaSequence ens1,
                   core.TableInfo ti1,
                   sres.ExternalDatabase ed2,
                   sres.ExternalDatabaseRelease edr2,
                   dots.ExternalNaSequence ens2,
                   core.TableInfo ti2
              WHERE ens1.source_id = '$$primaryKey$$'
                AND ens1.na_sequence_id = s.query_id
                AND 'ExternalNASequence' = ti1.name
                AND ti1.table_id = s.query_table_id
                AND ed2.name IN ('Sanger P. falciparum chromosomes',
                                 'Jane Carlton P. yoelii chromosomes')
                AND ed2.external_database_id = edr2.external_database_id
                AND edr2.external_database_release_id = ens2.external_database_release_id
                AND ens2.na_sequence_id = s.subject_id
                AND 'ExternalNASequence' = ti2.name
                AND ti2.table_id = s.subject_table_id
             ]]>
```

</div>

</div>

     </sqlQuery>

\</querySet\> \</wdkModel\>

\</syntaxhighlight\>

</div>

<div class="printfooter">

Retrieved from
"<http://gmod.org/mediawiki/index.php?title=GUS_WDK_Presentation&oldid=22229>"

</div>

<div id="catlinks" class="catlinks">

<div id="mw-normal-catlinks" class="mw-normal-catlinks">

[Category](Special:Categories "Special:Categories"):

- [ApiDB](Category:ApiDB "Category:ApiDB")

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
  href="http://gmod.org/mediawiki/index.php?title=Talk:GUS_WDK_Presentation&amp;action=edit&amp;redlink=1"
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


- <span id="t-smwbrowselink"><a href="Special:Browse/GUS_WDK_Presentation" rel="smw-browse">Browse
  properties</a></span>


</div>

</div>

</div>

</div>

<div id="footer" role="contentinfo">

- <span id="footer-info-lastmod">Last updated at 21:16 on 9 October
  2012.</span>
<!-- - <span id="footer-info-viewcount">16,698 page views.</span> -->
- <span id="footer-info-copyright">Content is available under
  <a href="http://www.gnu.org/licenses/fdl-1.3.html" class="external"
  rel="nofollow">a GNU Free Documentation License</a> unless otherwise
  noted.</span>

<!-- -->

- <span id="footer-places-about">[About
  GMOD](GMOD:About "GMOD:About")</span>

<!-- -->






</div>
