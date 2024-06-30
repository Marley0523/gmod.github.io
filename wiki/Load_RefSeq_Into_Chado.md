<div id="mw-page-base" class="noprint">

</div>

<div id="mw-head-base" class="noprint">

</div>

<div id="content" class="mw-body" role="main">

<span id="top"></span>

<div id="mw-js-message" style="display:none;">

</div>



# <span dir="auto">Load RefSeq Into Chado</span>

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

This [HOWTO](Category:HOWTO "Category:HOWTO") describes a method for
loading the sequence data in Genbank RefSeq files into the [Chado
database](Chado_-_Getting_Started "Chado - Getting Started").

<div id="toc" class="toc">

<div id="toctitle">

## Contents

</div>

- [<span class="tocnumber">1</span> <span class="toctext">Download the
  Sequence Files</span>](#Download_the_Sequence_Files)
- [<span class="tocnumber">2</span> <span class="toctext">Convert RefSeq
  to GFF3</span>](#Convert_RefSeq_to_GFF3)
- [<span class="tocnumber">3</span> <span class="toctext">Add an Entry
  for Your Organism</span>](#Add_an_Entry_for_Your_Organism)
- [<span class="tocnumber">4</span> <span class="toctext">Load the
  GFF3</span>](#Load_the_GFF3)
- [<span class="tocnumber">5</span> <span class="toctext">More
  Information</span>](#More_Information)
- [<span class="tocnumber">6</span>
  <span class="toctext">Authors</span>](#Authors)

</div>

## <span id="Download_the_Sequence_Files" class="mw-headline">Download the Sequence Files</span>

These steps have been used to load data from genomic RefSeq files. You
can recognize these files by their `NC_` and `NT_` prefixes. First
download the Genbank genome files of interest. A good source for RefSeq
files is <a href="ftp://ftp.ncbi.nih.gov/genomes" class="external text"
rel="nofollow">NCBI's FTP site</a>. This website provides some files in
GFF3 format (suffix `.gff`). Files in the Genbank format have the suffix
`.gbk`.

## <span id="Convert_RefSeq_to_GFF3" class="mw-headline">Convert RefSeq to GFF3</span>

Use the [BioPerl](BioPerl "BioPerl") script `genbank2gff3.pl`, found in
`scripts/Bio-DB-GFF/` within the BioPerl distribution. If you've
actually installed BioPerl then the installed script will have been
renamed `bp_genbank2gff3.pl`. Note that there's also an older
`genbank2gff.pl` script, don't use it.

     >bp_genbank2gff3.pl <filename>

This will create a [GFF3](GFF3 "GFF3") file. It may give several
warnings about *unrecognized feature types*. If the feature types are
not part of
<a href="http://www.sequenceontology.org/" class="external text"
rel="nofollow">SOFA</a>, you will have to hand edit the resulting
[GFF3](GFF3 "GFF3") file to change the feature type. Any skipped
features will be printed at the end. If you want those to be part of the
GFF3 file, you will have to add those manually as well, fixing any
non-SOFA feature types.

## <span id="Add_an_Entry_for_Your_Organism" class="mw-headline">Add an Entry for Your Organism</span>

You will need to have an entry for your species in the [Chado organism
table](Chado_Tables#Table:_organism "Chado Tables"). If you are unsure
if this entry exists log into your database and execute this
[SQL](Glossary#SQL "Glossary") command:

<div class="mw-geshi mw-code mw-content-ltr" dir="ltr">

<div class="sql source-sql">

``` de1
SELECT genus,species,common_name FROM organism;
```

</div>

</div>

If you do not see your organism listed, execute a command equivalent to
this:

<div class="mw-geshi mw-code mw-content-ltr" dir="ltr">

<div class="sql source-sql">

``` de1
  INSERT INTO organism (abbreviation, genus, species, common_name)
                VALUES ('H.sapiens', 'Homo', 'sapiens', 'Human');
```

</div>

</div>

Substitute in the appropriate values for your own organism.

## <span id="Load_the_GFF3" class="mw-headline">Load the GFF3</span>

Run the `load/bin/gmod_bulk_load_gff3.pl` script from the GMOD
distribution:

      >gmod_bulk_load_gff3.pl --gfffile <your gfffile>

If you didn't specify this organism when installing Chado, (in response
to the question "What is the default organism (common name, or
"none")"), then you'll need to add at least the
`--organism <common_name>` flag to the command. See
`perldoc gmod_bulk_load_gff3.pl` for an explanation of the other options
this script supports.

This will load your data into the [Chado
database](Chado_-_Getting_Started "Chado - Getting Started"). Note that
if there are
non-<a href="http://www.sequenceontology.org/" class="external text"
rel="nofollow">SOFA</a> feature types remaining in the GFF3 file the
load will fail when they are encountered. If that happens, edit the file
to fix the incorrect term and load again. If that happens, the load will
be stopped before the database is touched, so you won't have to worry
about duplicate data.

## <span id="More_Information" class="mw-headline">More Information</span>

Please send questions to the GMOD developers list:

<a href="mailto:gmod-devel@lists.sourceforge.net" class="external text"
rel="nofollow">gmod-devel@lists.sourceforge.net</a>

  

## <span id="Authors" class="mw-headline">Authors</span>

- [Scott Cain](User:Scott "User:Scott")
- <a href="http://www.bioperl.org/wiki/Brian_Osborne" class="extiw"
  title="bp:Brian Osborne">Brian Osborne</a>

</div>

<div class="printfooter">

Retrieved from
"<http://gmod.org/mediawiki/index.php?title=Load_RefSeq_Into_Chado&oldid=26751>"

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


- <span id="ca-talk"><a
  href="http://gmod.org/mediawiki/index.php?title=Talk:Load_RefSeq_Into_Chado&amp;action=edit&amp;redlink=1"
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


- <span id="t-smwbrowselink"><a href="Special%3ABrowse/Load_RefSeq_Into_Chado" rel="smw-browse">Browse
  properties</a></span>


</div>

</div>

</div>

</div>

<div id="footer" role="contentinfo">

- <span id="footer-info-lastmod">Last updated at 21:09 on 15 July
  2015.</span>
<!-- - <span id="footer-info-viewcount">184,658 page views.</span> -->
- <span id="footer-info-copyright">Content is available under
  <a href="http://www.gnu.org/licenses/fdl-1.3.html" class="external"
  rel="nofollow">a GNU Free Documentation License</a> unless otherwise
  noted.</span>

<!-- -->

- <span id="footer-places-about">[About
  GMOD](GMOD:About "GMOD:About")</span>

<!-- -->






</div>
