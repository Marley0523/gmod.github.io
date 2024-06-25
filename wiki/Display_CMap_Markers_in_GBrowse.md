<div id="mw-page-base" class="noprint">

</div>

<div id="mw-head-base" class="noprint">

</div>

<div id="content" class="mw-body" role="main">

<span id="top"></span>

<div id="mw-js-message" style="display:none;">

</div>



# <span dir="auto">Display CMap Markers in GBrowse</span>

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

This proposal came out of a presentation by Erick Antezana and Frederic
Potier at the [August 2009 GMOD
Meeting](August_2009_GMOD_Meeting "August 2009 GMOD Meeting") titled:

- [GBrowse: Lessons Learned and Statement of
  Interest](August_2009_GMOD_Meeting#GBrowse:_Lessons_Learned_and_Statement_of_Interest "August 2009 GMOD Meeting")

  
From Frederic and Erick:

<div class="quotebox">

We were thinking about having [CMap](CMap.1 "CMap") features displayed
in [GBrowse](GBrowse.1 "GBrowse") in one or more dedicated tracks. Using
now the fact that GBrowse can be connected to multiple datasources, the
GBrowse config file could be for example:

<div class="mw-geshi mw-code mw-content-ltr" dir="ltr">

<div class="perl source-perl">

``` de1
#################################
# database definitions
#################################
# Database for genome annotations.
[GGB_TIGR_RICE_V5:database]
db_adaptor    = Bio::DB::GFF
db_args       = -adaptor  dbi::mysql
    -dsn dbi:mysql:GGB_TIGR_RICE_V5:localhost:3306
    -user ...
    -pass ...
 
# Database for NGS
[bamtest:database]
db_adaptor    = Bio::DB::Sam
db_args       = -fasta  sequence.fasta
                  -bam   bam_file.bam
 
# Database for genetic markers
[CMAP_TIGR_RICE_V5:database]
db_adaptor    = specific CMAP adaptor or maybe an already existing one  ???
db_args       = -adaptor  dbi::Oracle
    -dsn dbi:Oracle:CMAP_TIGR_RICE_V5:localhost:
    -user ...
    -pass ...
 
...
### TRACK CONFIGURATION ####
...
 
[Pair]
feature       = read_pair
glyph         = segments
database      = bamtest
draw_target   = 1
show_mismatch = 1
bgcolor      = sub {
                      my $f = shift;
                 return $f->get_tag_values('M_UNMAPPED') ? 'red' : 'green';
               }
fgcolor       = green
height        = 3
label         = sub {shift->display_name}
label density = 50
bump          = fast
connector     = dashed
key          = Read Pairs
 
[AFLP_RICE]
feature = aflp
database = CMAP_TIGR_RICE_V5
map_set = tigr_rice_v5
key = CMAP AFLP markers
category = Molecular Mapping
 
[SSR_RICE]
feature = aflp
database = CMAP_TIGR_RICE_V5
map_set = tigr_rice_v5
key = CMAP SSR markers.
category = Molecular Mapping
....
```

</div>

</div>

As you can see, both AFLP_RICE and SSR_Rice are pulled out from the CMap
database and displayed in dedicated tracks.

Then the idea is to manage the links to CMap via an url in the popup
ballon.

This configuration should be very convenient to integrate CMap/GBrowse
without requiring a lot a maintenance and administration.

</div>

</div>

<div class="printfooter">

Retrieved from
"<http://gmod.org/mediawiki/index.php?title=Display_CMap_Markers_in_GBrowse&oldid=22089>"

</div>

<div id="catlinks" class="catlinks">

<div id="mw-normal-catlinks" class="mw-normal-catlinks">

[Categories](Special:Categories "Special:Categories"):

- [Proposals](Category:Proposals "Category:Proposals")
- [CMap](Category:CMap "Category:CMap")
- [GBrowse](Category:GBrowse "Category:GBrowse")

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

- <span id="ca-nstab-main"><a href="Display_CMap_Markers_in_GBrowse" accesskey="c"
  title="View the content page [c]">Page</a></span>
- <span id="ca-talk"><a
  href="http://gmod.org/mediawiki/index.php?title=Talk:Display_CMap_Markers_in_GBrowse&amp;action=edit&amp;redlink=1"
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


- <span id="t-smwbrowselink"><a href="Special:Browse/Display_CMap_Markers_in_GBrowse"
  rel="smw-browse">Browse properties</a></span>


</div>

</div>

</div>

</div>

<div id="footer" role="contentinfo">

- <span id="footer-info-lastmod">Last updated at 20:05 on 8 October
  2012.</span>
<!-- - <span id="footer-info-viewcount">11,444 page views.</span> -->
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




</div>
