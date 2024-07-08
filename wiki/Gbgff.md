



<span id="top"></span>




# <span dir="auto">Gbgff</span>












<a href="File:Gbgff3.png" class="image"><img
src="https://raw.githubusercontent.com/GMOD/gmod.github.io/main/mediawiki/images/7/76/Gbgff3.png" class="thumbimage" width="885"
height="140" /></a>


<a href="File:Gbgff3.png" class="internal" title="Enlarge"><img
src="../mediawiki/skins/common/images/magnify-clip.png" width="15"
height="11" /></a>



FlyBase gene models displayed as remote tracks on Gbrowse, via gbgff



***gbgff*** is a [GFF3](GFF3 "GFF3") dumper script that comes packaged
with [GBrowse](GBrowse.1 "GBrowse") version 1.69 and later.  Its purpose
is to export configured annotations from one instance of GBrowse to
another.

- It is analogous to [DAS](Category%3ADAS "Category%3ADAS"), except that:
  - It supports both server and client-side configuration of glyph
    rendering
  - It supports 3-level gene models and other multi-level features made
    possible by GFF3

# <span id="Installation" class="mw-headline">Installation</span>

- gbgff does not require any special set-up - it is installed with
  GBrowse.
- This application has only been tested with servers using a GFF3
  back-end with <a
  href="http://doc.bioperl.org/releases/bioperl-current/bioperl-live/Bio/DB/SeqFeature/Store.html"
  class="external text" rel="nofollow">Bio::SeqFeature::Store</a>

# <span id="Configuration" class="mw-headline">Configuration</span>

## <span id="Server-side" class="mw-headline">Server-side</span>

- Tracks are configured as normal (see the
  <a href="http://cloud.gmod.org/gbrowse2/tutorial/tutorial.html"
  class="external text" rel="nofollow">GBrowse2 Admin Tutorial</a> and
  the <a href="GBrowse_Configuration_HOWTO" class="mw-redirect"
  title="GBrowse Configuration HOWTO">GBrowse Configuration HOWTO</a>
  for details)
- The config stanza for each feature type is dumped with the
  [GFF3](GFF3 "GFF3")
- The only thing to be aware of is that callbacks are disabled for
  security reasons
  - Any server-side options configured with callbacks will fall through
    to the \[TRACK DEFAULTS\] setting, if available
  - Note: server-side options will be overridden by client-side
    settings, so callbacks can still be used

## <span id="Client-side" class="mw-headline">Client-side</span>

- The GFF3 exported by gbgff can be used like a DAS source.

### <span id="as_a_DAS-lite_remote_feature" class="mw-headline">as a DAS-lite remote feature</span>

- to use the dumper as a DAS source, add the ***remote feature*** option

The URL format follows the same pattern as GBrowse:
**host/cgi-bin/gbgff/data_source?type=type1+type2;ref=\$ref;start=\$start;end=\$end**

    [mygene]
    remote feature = http://remote.host/cgi-bin/gbgff/source?type=gene;ref=$ref;start=$start;end=$end
    glyph          = gene
    bgcolor        = blue
    #etc...

- Note1: that the ***\$ref, \$start*,** and ***\$end*** variables are
  interpolated to the current segment
  - These variables are a required part of the url
- Note2: any options specified in the client-side config file will
  override remote options specified on the server

### <span id="as_a_remote_URL" class="mw-headline">as a remote URL</span>

- To use as a remote uploaded URL, enter a URL with the same structure
  as above into the "remote URL" box on the GBrowse display

<a href="File:Gff_remote_url.png" class="image"><img
src="https://raw.githubusercontent.com/GMOD/gmod.github.io/main/mediawiki/images/d/d3/Gff_remote_url.png" width="1148"
height="103" alt="Gff remote url.png" /></a>

- which will yield a new track:

<a href="File:Gff_remote_track" class="image"><img
src="https://raw.githubusercontent.com/GMOD/gmod.github.io/main/mediawiki/images/f/fe/Gff_remote_track" width="781" height="139"
alt="Gff remote track" /></a>




[Categories](Special%3ACategories "Special%3ACategories"):

- [GMOD Components](Category%3AGMOD_Components "Category%3AGMOD Components")
- [GBrowse](Category%3AGBrowse "Category%3AGBrowse")
- [HOWTO](Category%3AHOWTO "Category%3AHOWTO")






## Navigation menu






### 





### Navigation



- <span id="n-GMOD-Home">[GMOD Home](Main_Page)</span>
- <span id="n-Software">[Software](GMOD_Components)</span>
- <span id="n-Categories-.2F-Tags">[Categories /
  Tags](Categories)</span>




### Documentation



- <span id="n-Overview">[Overview](Overview)</span>
- <span id="n-FAQs">[FAQs](Category%3AFAQ)</span>
- <span id="n-HOWTOs">[HOWTOs](Category%3AHOWTO)</span>
- <span id="n-Glossary">[Glossary](Glossary)</span>




### Community



- <span id="n-GMOD-News">[GMOD News](GMOD_News)</span>
- <span id="n-Training-.2F-Outreach">[Training /
  Outreach](Training_and_Outreach)</span>
- <span id="n-Support">[Support](Support)</span>
- <span id="n-GMOD-Promotion">[GMOD Promotion](GMOD_Promotion)</span>
- <span id="n-Meetings">[Meetings](Meetings)</span>
- <span id="n-Calendar">[Calendar](Calendar)</span>




### Tools

- <span id="t-smwbrowselink"><a href="Special%3ABrowse/Gbgff" rel="smw-browse">Browse properties</a></span>



- <span id="footer-info-lastmod">Last updated at 15:52 on 25 September
  2009.</span>
<!-- - <span id="footer-info-viewcount">95,495 page views.</span> -->
- <span id="footer-info-copyright">Content is available under
  <a href="http://www.gnu.org/licenses/fdl-1.3.html" class="external"
  rel="nofollow">a GNU Free Documentation License</a> unless otherwise
  noted.</span>

<!-- -->

- <span id="footer-places-about">[About
  GMOD](GMOD%3AAbout "GMOD%3AAbout")</span>

<!-- -->




