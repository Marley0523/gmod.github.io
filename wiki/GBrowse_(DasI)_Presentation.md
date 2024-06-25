<div id="mw-page-base" class="noprint">

</div>

<div id="mw-head-base" class="noprint">

</div>

<div id="content" class="mw-body" role="main">

<span id="top"></span>

<div id="mw-js-message" style="display:none;">

</div>



# <span dir="auto">GBrowse (DasI) Presentation</span>

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

This Wiki page is an edited version of
<a href="../mediawiki/images/d/d8/DasI_middleware.pdf" class="internal"
title="DasI middleware.pdf">Scott's presentation</a>.

<div id="toc" class="toc">

<div id="toctitle">

## Contents

</div>

- [<span class="tocnumber">1</span> <span class="toctext">Create the
  database</span>](#Create_the_database)
- [<span class="tocnumber">2</span> <span class="toctext">Problem 1 -
  Loading Data</span>](#Problem_1_-_Loading_Data)
- [<span class="tocnumber">3</span> <span class="toctext">Adaptor
  Components</span>](#Adaptor_Components)
- [<span class="tocnumber">4</span> <span class="toctext">Use
  Bio::DB::Das::Chado</span>](#Use_Bio::DB::Das::Chado)
- [<span class="tocnumber">5</span> <span class="toctext">Problem 2 -
  Use Some Accessors</span>](#Problem_2_-_Use_Some_Accessors)
- [<span class="tocnumber">6</span> <span class="toctext">Bulk
  Output</span>](#Bulk_Output)
- [<span class="tocnumber">7</span>
  <span class="toctext">Advantages</span>](#Advantages)
- [<span class="tocnumber">8</span>
  <span class="toctext">Conclusion</span>](#Conclusion)

</div>

##### <span id="Create_the_database" class="mw-headline">Create the database</span>

    $ perl Makefile.PL
    $ make
    $ sudo make install
    $ make load_schema
    $ make prepdb             # now with Xenopus!
    $ make ontologies        # load rel, SO, featureprop

##### <span id="Problem_1_-_Loading_Data" class="mw-headline">Problem 1 - Loading Data</span>

Create some [GFF3](GFF3 "GFF3") from the specifications:

    fake_chromosome example chromosome 1  15017 .  .  . ID=fake_chromosome;Name=fake_chromosome
    fake_chromosome example gene   13691  14720 .  +  . ID=xfile;Name=xfile;Alias=mulder,scully;Note=A test gene for GMOD meeting
    fake_chromosome example mRNA   13691  14720 .  +  . ID=xfile_mRNA;Parent=xfile
    fake_chromosome example exon   13691  13767 .  +  . Parent=xfile_mRNA
    fake_chromosome example exon   14687  14720 .  +  . Parent=xfile_mRNA
    fake_chromosome example gene   12648  13136 .  +  . ID=x-men

Gene inserted as GFF3 using a standard bulk loader:

`$ gmod_bulk_load_gff3.pl -g sample.gff3`

*...lots of output...*

##### <span id="Adaptor_Components" class="mw-headline">Adaptor Components</span>

- Bio::DB::Das::Chado
  - Database connection object
- Bio::DB::Das::Chado::Segment
  - Object for any range of DNA
- Bio::DB::Das::Chado::Segment::Feature

##### <span id="Use_Bio::DB::Das::Chado" class="mw-headline">Use Bio::DB::Das::Chado</span>

<div class="mw-geshi mw-code mw-content-ltr" dir="ltr">

<div class="perl source-perl">

``` de1
use Bio::DB::Das::Chado;
 
my $chado = Bio::DB::Das::Chado->new(
      -dsn => "dbi:Pg:dbname=test",
      -user=> "scott",
      -pass=> "" ) || die "no new chado";
 
my $gene_name = 'xfile';
 
my ($gene_fo) = $chado->get_features_by_name($gene_name);
```

</div>

</div>

##### <span id="Problem_2_-_Use_Some_Accessors" class="mw-headline">Problem 2 - Use Some Accessors</span>

<div class="mw-geshi mw-code mw-content-ltr" dir="ltr">

<div class="perl source-perl">

``` de1
print "symbol: "      .  $gene_fo->display_name."\n";
print "synonyms: "  .  join(', ',$gene_fo->synonyms)."\n";
print "description: " . $gene_fo->notes."\n";
print "type: "        .     $gene_fo->type."\n";
 
my ($mRNA) = $gene_fo->sub_SeqFeature();
my @exons  = $mRNA->sub_SeqFeature();
 
for my $exon (@exons) {
    next unless ($exon->type->method eq 'exon');
    $exon_count++;
    print "exon$exon_count start: " . $exon->start."\n";
    print "exon$exon_count end: "  . $exon->end.  "\n";
    $cds_seq .= $exon->seq->seq; # the first seq call returns a Bio::Seq object, the second gets the DNA string from Bio::Seq
}
```

</div>

</div>

##### <span id="Bulk_Output" class="mw-headline">Bulk Output</span>

<div class="mw-geshi mw-code mw-content-ltr" dir="ltr">

<div class="perl source-perl">

``` de1
 my $gene_name = 'x-*';
 
 my @genes = $chado->get_features_by_name(
                 -name => $gene_name,
                 -class=> 'gene' );
 
 for my $gene (@genes) {
     print join("\t",
                $gene->feature_id,
                $gene->display_name,
                $gene->organism),"\n";
 }
```

</div>

</div>

Or see your report in [GBrowse](GBrowse.1 "GBrowse")

##### <span id="Advantages" class="mw-headline">Advantages</span>

- Comes 'for free' with GBrowse
  - GBrowse will run with any DasI-compatible interface
- Uses 'familiar' BioPerl idioms, very similar to widely used
  Bio::DB::GFF (though with fewer methods)

  

##### <span id="Conclusion" class="mw-headline">Conclusion</span>

- Not suitable as a 'general'
  [middleware](Glossary#Middleware "Glossary") layer
  - May be suitable for some applications, particularly if they are
    similar to [GBrowse](GBrowse.1 "GBrowse") or other uses of
    Bio::DB::GFF

</div>

<div class="printfooter">

Retrieved from
"<http://gmod.org/mediawiki/index.php?title=GBrowse_(DasI)_Presentation&oldid=22093>"

</div>

<div id="catlinks" class="catlinks">

<div id="mw-normal-catlinks" class="mw-normal-catlinks">

[Categories](Special:Categories "Special:Categories"):

- [GBrowse](Category:GBrowse "Category:GBrowse")
- [Perl](Category:Perl "Category:Perl")
- [Middleware
  Presentations](Category:Middleware_Presentations "Category:Middleware Presentations")
- [BioPerl](Category:BioPerl "Category:BioPerl")

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

- <span id="ca-nstab-main"><a href="GBrowse_(DasI)_Presentation" accesskey="c"
  title="View the content page [c]">Page</a></span>
- <span id="ca-talk"><a
  href="http://gmod.org/mediawiki/index.php?title=Talk:GBrowse_(DasI)_Presentation&amp;action=edit&amp;redlink=1"
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


- <span id="t-smwbrowselink"><a href="Special:Browse/GBrowse_(DasI)_Presentation"
  rel="smw-browse">Browse properties</a></span>
- <span id="t-pdf">[Print as
  PDF](http://gmod.org/mediawiki/index.php?title=Special:PdfPrint&page=GBrowse_(DasI)_Presentation)</span>

</div>

</div>

</div>

</div>

<div id="footer" role="contentinfo">

- <span id="footer-info-lastmod">Last updated at 20:05 on 8 October
  2012.</span>
- <span id="footer-info-viewcount">16,851 page views.</span>
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
