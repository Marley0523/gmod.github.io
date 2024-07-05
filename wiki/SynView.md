









<span id="top"></span>







# <span dir="auto">SynView</span>





From GMOD









Jump to: [navigation](#mw-navigation), [search](#p-search)









<a href="File:SynView_Icon.gif" class="image"><img
src="https://raw.githubusercontent.com/GMOD/gmod.github.io/main/mediawiki/images/b/b3/SynView_Icon.gif" width="173" height="66"
alt="SynView Icon.gif" /></a>





  







## Contents



- [<span class="tocnumber">1</span>
  <span class="toctext">Documentation</span>](#Documentation)
  - [<span class="tocnumber">1.1</span>
    <span class="toctext">Publications</span>](#Publications)
  - [<span class="tocnumber">1.2</span>
    <span class="toctext">Presentations</span>](#Presentations)
  - [<span class="tocnumber">1.3</span>
    <span class="toctext">README</span>](#README)





Jessica Kissinger's group at University of Georgia have contributed a
very sophisticated [GBrowse](GBrowse.1 "GBrowse") configuration file
that creates a simple synteny viewer inside of GBrowse, which they have
called SynView. This viewer is in use at
<a href="http://www.plasmodb.org" class="external text"
rel="nofollow">PlasmoDB</a>, and creates views like <a
href="http://plasmodb.org/cgi-bin/gbrowse/plasmodb/?name=Pf3D7_11:1278854..1310722;label=AnnotatedGenes-SyntenySpansVivaxMC-SyntenyGenesVivaxMC-SyntenySpansYoeliiMC-SyntenyGenesYoeliiMC-SyntenySpansChabaudiMC-SyntenyGenesChabaudiMC-SyntenySpansKnowlesiMC-SyntenyGenesKnowlesiMC-SyntenySpansBergheiMC-SyntenyGenesBergheiMC;h_feat=PF11_0344@yellow"
class="external text" rel="nofollow">this one</a>.

SynView is found within the [GBrowse](GBrowse.1 "GBrowse") distribution,
in the gbrowse/contrib/ directory. Also included in the SynView contrib
directory is a GUSdb adaptor for GBrowse, but that is not required for
making SynView work.

  

## <span id="Documentation" class="mw-headline">Documentation</span>

See
<a href="http://www.eupathdb.org/apps/SynView/" class="external free"
rel="nofollow">http://www.eupathdb.org/apps/SynView/</a>.

### <span id="Publications" class="mw-headline">Publications</span>

- <a
  href="http://bioinformatics.oxfordjournals.org/cgi/content/abstract/22/18/2308"
  class="external text" rel="nofollow">SynView: a GBrowse-compatible
  approach to visualizing comparative genome data</a>

### <span id="Presentations" class="mw-headline">Presentations</span>

- <a href="https://raw.githubusercontent.com/GMOD/gmod.github.io/main/mediawiki/images/1/19/SyntenyModeling.pdf" class="internal"
  title="SyntenyModeling.pdf">Modeling and Displaying Synteny w/
  SynView</a> from the [November 2007 GMOD
  Meeting](November_2007_GMOD_Meeting "November 2007 GMOD Meeting").

### <span id="README" class="mw-headline">README</span>

The files in this directory were supplied by Haiming Wang and Jessica
Kissinger at University of Georgia's Center for Tropical & Emerging
Global Diseases & Department of Genetics. There are two components:

1.  A GUSdb adaptor (DAS::GUS) based on Bio::DB::Das::Chado in this
    distribution. This adaptor is written to be reasonably generic, and
    so it may be possible to use this as a template for creating an
    adaptor for any database.
2.  A sample configuration file (plasmodb.conf) that is similar to what
    drives the synteny tracks in the gbrowse installation at
    <a href="http://www.plasmodb.org/" class="external free"
    rel="nofollow">http://www.plasmodb.org/</a>. For an example of what
    the display looks like, see <a
    href="http://plasmodb.org/cgi-bin/gbrowse/plasmodb/?name=Pf3D7_11_v3:380000..398999&amp;label=Gene-Synteny"
    class="external free"
    rel="nofollow">http://plasmodb.org/cgi-bin/gbrowse/plasmodb/?name=Pf3D7_11_v3:380000..398999&amp;label=Gene-Synteny</a>

This synteny view can use any GBrowse data adaptor, including the
Bio::DB::GFF and memory adaptors. Note that SynView requires
Tie::IxHash.

An example dataset is also included in the MAL11 directory; this
directory contains a GFF3 file, fasta file and a GBrowse configuration
file set up to use the memory adaptor.

This of course is a very brief introduction to SynView, for more
information, please see
<a href="http://www.eupathdb.org/apps/SynView/" class="external free"
rel="nofollow">http://www.eupathdb.org/apps/SynView/</a>, contact
Jessica or Haiming, or see their paper in Bioinformatics:

Wang, H., Su, Y., Mackey, A., Kraemer, E., and \*Kissinger, J.C.\*
(2006) SynView: A GBrowse-compatible Approach to Visualizing Comparative
Genome Data. Bioinformatics 22(18), 2308-2309





Retrieved from
"<http://gmod.org/mediawiki/index.php?title=SynView&oldid=21997>"







[Categories](Special%3ACategories "Special%3ACategories"):

- [GMOD Components](Category%3AGMOD_Components "Category%3AGMOD Components")
- [Comparative
  Genomics](Category%3AComparative_Genomics "Category%3AComparative Genomics")
- [GBrowse](Category%3AGBrowse "Category%3AGBrowse")















## Navigation menu









### Namespaces


- <span id="ca-talk"><a
  href="http://gmod.org/mediawiki/index.php?title=Talk:SynView&amp;action=edit&amp;redlink=1"
  accesskey="t"
  title="Discussion about the content page [t]">Discussion</a></span>





### 

### Variants[](#)























<a href="Main_Page"
style="background-image: url(../images/GMOD-cogs.png);"
title="Visit the main page"></a>





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




- <span id="t-smwbrowselink"><a href="Special%3ABrowse/SynView" rel="smw-browse">Browse properties</a></span>












- <span id="footer-info-lastmod">Last updated at 18:55 on 8 October
  2012.</span>
<!-- - <span id="footer-info-viewcount">114,400 page views.</span> -->
- <span id="footer-info-copyright">Content is available under
  <a href="http://www.gnu.org/licenses/fdl-1.3.html" class="external"
  rel="nofollow">a GNU Free Documentation License</a> unless otherwise
  noted.</span>

<!-- -->

- <span id="footer-places-about">[About
  GMOD](GMOD%3AAbout "GMOD%3AAbout")</span>

<!-- -->







