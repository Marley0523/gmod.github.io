<div id="mw-page-base" class="noprint">

</div>

<div id="mw-head-base" class="noprint">

</div>

<div id="content" class="mw-body" role="main">

<span id="top"></span>

<div id="mw-js-message" style="display:none;">

</div>



# <span dir="auto">Extending Embedding and Customizing JBrowse</span>

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

Result of discussions at GMOD satellite meeting, March 2011

Potential upcoming changes to JSON format:

<a href="http://biowiki.org/view/JBrowse/JsonFormatStabilization"
class="external free"
rel="nofollow">http://biowiki.org/view/JBrowse/JsonFormatStabilization</a>

TODO/wishlist for JBrowse:

- namespace CSS
- putting track list into separate DOM element (e.g., Drupal "block")
- "Browser" API: anything you can do manually

<!-- -->

- Hooks:
  - featureCreate: has access to: feature data, feature HTML element,
    can:
    - style the element, and
    - add callbacks to the element
  - featureEventHooks:

<!-- -->

    { click: function(feature array, HTML element, getAttr, event)
     mouseover: function(...
     mouseout: ...
     [DOM event name]: [callback function]
    }

    current approach:

    fields:
    { "start": 1,
      "end": 2,
      "strand": 3,
      ...
    }

    changing to: getAttr

- - access to region selections (e.g., for creation of lists of
    features)
  - function that: takes currently visible sequence, PSSM or set of
    regexes, returns: set of regions

"Browser" API extensions:

Browser.iterateFeaturesInTrack("gene", function(feature, elem, getAttr)
{if (getAttr(feature, "id") == "foo")
{elem.style.backgroundColor="red"}})

?Browser.filterTrackBy("gene", function(feature, elem, getAttr { return
(getAttr(feature, "id") == "foo") });

e.g.,

- all genes in a given pathway with expression \> 2 s.d. above average
- all genes tagged with a given GO term

sequence logos for summarizing overlapping alignments

common GBrowse glyphs not currently reproducible in JBrowse:

- LD plot? (not common)
- GBrowse uses gene-\>mRNA relationships to layout ("bump") transcripts
  for a given gene together.
- GBrowse shows different representation of break between read pairs and
  gaps within individual reads
- Glyph/image.pm (associates images with seqfeatures)

  
General JBrowse feature requests:

- "no data" screen a la GBrowse
- example data to browse included distribution
- region selection

</div>

<div class="printfooter">

Retrieved from
"<http://gmod.org/mediawiki/index.php?title=Extending_Embedding_and_Customizing_JBrowse&oldid=17217>"

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

- <span id="ca-nstab-main"><a href="Extending_Embedding_and_Customizing_JBrowse" accesskey="c"
  title="View the content page [c]">Page</a></span>
- <span id="ca-talk"><a
  href="http://gmod.org/mediawiki/index.php?title=Talk:Extending_Embedding_and_Customizing_JBrowse&amp;action=edit&amp;redlink=1"
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



<div id="p-cactions" class="vectorMenu emptyPortlet" role="navigation"
aria-labelledby="p-cactions-label">

### Actions[](#)

<div class="menu">

</div>

</div>

<div id="p-search" role="search">

### Search

<div id="simpleSearch">

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

- <span id="t-whatlinkshere"><a
  href="Special:WhatLinksHere/Extending_Embedding_and_Customizing_JBrowse"
  accesskey="j" title="A list of all wiki pages that link here [j]">What
  links here</a></span>
- <span id="t-recentchangeslinked"><a
  href="Special:RecentChangesLinked/Extending_Embedding_and_Customizing_JBrowse"
  accesskey="k"
  title="Recent changes in pages linked from this page [k]">Related
  changes</a></span>
- <span id="t-specialpages"><a href="Special:SpecialPages" accesskey="q"
  title="A list of all special pages [q]">Special pages</a></span>
- <span id="t-print"><a
  href="http://gmod.org/mediawiki/index.php?title=Extending_Embedding_and_Customizing_JBrowse&amp;printable=yes"
  rel="alternate" accesskey="p"
  title="Printable version of this page [p]">Printable version</a></span>
- <span id="t-permalink">[Permanent
  link](http://gmod.org/mediawiki/index.php?title=Extending_Embedding_and_Customizing_JBrowse&oldid=17217 "Permanent link to this revision of the page")</span>
- <span id="t-info">[Page
  information](http://gmod.org/mediawiki/index.php?title=Extending_Embedding_and_Customizing_JBrowse&action=info)</span>
- <span id="t-smwbrowselink"><a href="Special:Browse/Extending_Embedding_and_Customizing_JBrowse"
  rel="smw-browse">Browse properties</a></span>
- <span id="t-pdf">[Print as
  PDF](http://gmod.org/mediawiki/index.php?title=Special:PdfPrint&page=Extending_Embedding_and_Customizing_JBrowse)</span>

</div>

</div>

</div>

</div>

<div id="footer" role="contentinfo">

- <span id="footer-info-lastmod">Last updated at 22:23 on 7 March
  2011.</span>
- <span id="footer-info-viewcount">23,476 page views.</span>
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
