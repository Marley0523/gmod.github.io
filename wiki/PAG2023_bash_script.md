<div id="mw-page-base" class="noprint">

</div>

<div id="mw-head-base" class="noprint">

</div>

<div id="content" class="mw-body" role="main">

<span id="top"></span>

<div id="mw-js-message" style="display:none;">

</div>



# <span dir="auto">PAG2023 bash script</span>

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

    #!/bin/bash

    jbrowse create public_html --force

    cd public_html

    jbrowse add-assembly data/c_elegans.PRJNA13758.WS286.genomic.fa.gz \
             --displayName "C. elegans N2" \
             --name c_elegans_PRJNA13758 \
             --type bgzipFasta \
             --load inPlace \
             --refNameAliases test_data/ce_aliases.txt

    jbrowse add-track data/c_elegans.genes.sorted.gff3.gz \
             --name Genes \
             --description "Curated genes from WormBase" \
             --load inPlace 
     
    jbrowse text-index --attributes=Name,ID,locus --tracks c_elegans.genes.sorted.gff3

    jbrowse add-track https://s3.amazonaws.com/agrjbrowse/MOD-jbrowses/WormBase/WS286/c_elegans_PRJNA13758/tracks/Curated%20Genes%20\(protein%20coding\)/{refseq}/trackData.jsonz \
       --name "Protein coding genes" \
       --description "Only protein coding genes from WormBase" 

    jbrowse add-track https://s3.amazonaws.com/wormbase-modencode/test/CeNDR/CB4854.bam \
           --name "CeNDR BAM"

    jbrowse add-track https://storage.googleapis.com/elegansvariation.org/releases/current/WI.current.soft-filtered.vcf.gz \
             --name Variants

    jbrowse add-track https://data.broadinstitute.org/compbio1/PhyloCSFtracks/ce11/latest/PhyloCSF+1.bw \
       --name "Frame 1 usage"

    jbrowse add-track-json '{"type":"MultiQuantitativeTrack","trackId":"multiwiggle_phylo","name":"Forward PhyloCSF","assemblyNames":["c_elegans_PRJNA13758"],"adapter":{"type":"MultiWiggleAdapter", "bigWigs":["https://data.broadinstitute.org/compbio1/PhyloCSFtracks/ce11/latest/PhyloCSF+1.bw", "https://data.broadinstitute.org/compbio1/PhyloCSFtracks/ce11/latest/PhyloCSF+2.bw", "https://data.broadinstitute.org/compbio1/PhyloCSFtracks/ce11/latest/PhyloCSF+3.bw"]}, "displays":[{"type": "MultiLinearWiggleDisplay","displayId": "multiwiggle_phylo-MultiLinearWiggleDisplay"}]}'

    jbrowse add-assembly data/c_briggsae.PRJNA10731.WS287.genomic.fa.gz \
            --displayName "C. briggsae" \
            --name c_briggsae_PRJNA10731 \
            --type bgzipFasta \
            --load inPlace 

    jbrowse add-track data/c_elegans.c_briggsae.paf \
         --assemblyNames c_briggsae_PRJNA10731,c_elegans_PRJNA13758 \
         --description "A minimap2 comparison of C. elegans and C. briggsae" \
         --load inPlace \
         --name "C. elegans/C. briggsae Synteny" 

    jbrowse add-track https://s3.amazonaws.com/agrjbrowse/MOD-jbrowses/WormBase/WS287/c_briggsae_PRJNA10731/tracks/Curated_Genes/{refseq}/trackData.jsonz \
         --assemblyNames c_briggsae_PRJNA10731 \
         --name "C. briggsae Genes" \
         --trackId c_briggsae_genes
     
    jbrowse add-track https://s3.amazonaws.com/wormbase-modencode/test/maroilley/candidateSV.vcf.gz \
           --name "Structural Variant Candidates VCF" \
           --assemblyNames c_elegans_PRJNA13758 \
           --category "Structural Variants"

    jbrowse add-track https://s3.amazonaws.com/wormbase-modencode/test/maroilley/VC109_Het_trim_bwaMEM_sort.bam \
           --name "VC109 BAM" \
           --assemblyNames c_elegans_PRJNA13758 \
           --category "Structural Variants"

</div>

<div class="printfooter">

Retrieved from
"<http://gmod.org/mediawiki/index.php?title=PAG2023_bash_script&oldid=28551>"

</div>

<div id="catlinks" class="catlinks catlinks-allhidden">

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

- <span id="ca-nstab-main"><a href="PAG2023_bash_script" accesskey="c"
  title="View the content page [c]">Page</a></span>
- <span id="ca-talk"><a
  href="http://gmod.org/mediawiki/index.php?title=Talk:PAG2023_bash_script&amp;action=edit&amp;redlink=1"
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

- <span id="t-whatlinkshere"><a href="Special:WhatLinksHere/PAG2023_bash_script" accesskey="j"
  title="A list of all wiki pages that link here [j]">What links here</a></span>
- <span id="t-recentchangeslinked"><a href="Special:RecentChangesLinked/PAG2023_bash_script" accesskey="k"
  title="Recent changes in pages linked from this page [k]">Related
  changes</a></span>
- <span id="t-specialpages"><a href="Special:SpecialPages" accesskey="q"
  title="A list of all special pages [q]">Special pages</a></span>
- <span id="t-print"><a
  href="http://gmod.org/mediawiki/index.php?title=PAG2023_bash_script&amp;printable=yes"
  rel="alternate" accesskey="p"
  title="Printable version of this page [p]">Printable version</a></span>
- <span id="t-permalink">[Permanent
  link](http://gmod.org/mediawiki/index.php?title=PAG2023_bash_script&oldid=28551 "Permanent link to this revision of the page")</span>
- <span id="t-info">[Page
  information](http://gmod.org/mediawiki/index.php?title=PAG2023_bash_script&action=info)</span>
- <span id="t-smwbrowselink"><a href="Special:Browse/PAG2023_bash_script" rel="smw-browse">Browse
  properties</a></span>
- <span id="t-pdf">[Print as
  PDF](http://gmod.org/mediawiki/index.php?title=Special:PdfPrint&page=PAG2023_bash_script)</span>

</div>

</div>

</div>

</div>

<div id="footer" role="contentinfo">

- <span id="footer-info-lastmod">Last updated at 18:34 on 10 January
  2024.</span>
- <span id="footer-info-viewcount">2,369 page views.</span>
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
