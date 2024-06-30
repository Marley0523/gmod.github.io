<div id="mw-page-base" class="noprint">

</div>

<div id="mw-head-base" class="noprint">

</div>

<div id="content" class="mw-body" role="main">

<span id="top"></span>

<div id="mw-js-message" style="display:none;">

</div>



# <span dir="auto">GMODTools TestCase</span>

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

This is an example test case for GMOD, loading a GenBank format genome
(chromosome) to Chado database, then dumping it out, including GenBank
submission format with GenBank output to test round-trip agreement.

This is an abbreviated example, current as of May 2008. It uses a
Chado-db template in Postgres, and assumes you have installed/tested
GMOD components available.

     # get AnoGam chrX and load to chado db
     curl -OR ftp://bio-mirror.net/biomirror/ncbigenomes/Anopheles_gambiae/CHR_X/NC_004818.gbk.gz
     or curl -OR ftp://ftp.ncbi.nih.gov/genomes/Anopheles_gambiae/CHR_X/NC_004818.gbk.gz

     set dbname=anogam_x
     $pg/bin/createdb -T chado_01_template $dbname

     # fix Genbank FT to SO type map if needed
     vi  lib/Bio/SeqFeature/Tools/TypeMapper.pm : add pseudogenic tRNA

     # load chromosome X to chado
     gunzip -c NC_004818.gbk.gz |\
      perl bin/bp_genbank2gff3.pl -noCDS -in stdin -out stdout |\
      perl bin/gmod_bulk_load_gff3.pl -dbname $dbname -organism fromdata

     # create GMOD Bulkfiles conf/bulkfiles/anogam.xml from template.xml : dbname, etc. edits
     # see samples to create a new organism/project configuration

     # create standard Bulkfiles outputs for anogam_x
     perl -Ilib bin/bulkfiles.pl -config=anogam  -make >& log.anogam1 &

     # new in progress output, includes regurgitation of GenBank record to compare with original
     # you should check and edit conf/bulkfiles/genbanksubmit.xml before running this part
     perl -Ilib bin/bulkfiles.pl -config=anogam -format=genbanktbl -make

Outputs should include genbanksubmit/ folder with outputs of GMOD
Bulkfiles:

    anogam-all-anogam1.tbl    : feature table  ** new part
    anogam-all-anogam1.fsa    : genome dna     == fasta/chromosome
    anogam-all-anogam1.pep    : protein aa     == fasta/translation

and outputs of NCBI tbl2asn:

    anogam-all-anogam1.sqn : ASN.1 record to submit to NCBI
    anogam-all-anogam1.val : errors & warnings
    anogam-all-anogam1.gbf : Genbank format for review

You will find these sample outputs here <a
href="http://insects.eugenes.org/genome/Anopheles_gambiae_str._PEST/anogam_20080511/"
class="external free"
rel="nofollow">http://insects.eugenes.org/genome/Anopheles_gambiae_str._PEST/anogam_20080511/</a>

There remain caveats on reproducing the original GenBank record this
way. At this writing, the GenbankSubmit function is still in
development, and the Genbank to GFF to Chado loading has some losses.

</div>

<div class="printfooter">

Retrieved from
"<http://gmod.org/mediawiki/index.php?title=GMODTools_TestCase&oldid=5664>"

</div>

<div id="catlinks" class="catlinks">

<div id="mw-normal-catlinks" class="mw-normal-catlinks">

[Categories](Special:Categories "Special:Categories"):

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
  href="http://gmod.org/mediawiki/index.php?title=Talk:GMODTools_TestCase&amp;action=edit&amp;redlink=1"
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


- <span id="t-smwbrowselink"><a href="Special%3ABrowse/GMODTools_TestCase" rel="smw-browse">Browse
  properties</a></span>


</div>

</div>

</div>

</div>

<div id="footer" role="contentinfo">

- <span id="footer-info-lastmod">Last updated at 17:03 on 20 June
  2008.</span>
<!-- - <span id="footer-info-viewcount">16,364 page views.</span> -->
- <span id="footer-info-copyright">Content is available under
  <a href="http://www.gnu.org/licenses/fdl-1.3.html" class="external"
  rel="nofollow">a GNU Free Documentation License</a> unless otherwise
  noted.</span>

<!-- -->

- <span id="footer-places-about">[About
  GMOD](GMOD:About "GMOD:About")</span>

<!-- -->






</div>
