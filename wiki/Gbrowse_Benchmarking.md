<div id="mw-page-base" class="noprint">

</div>

<div id="mw-head-base" class="noprint">

</div>

<div id="content" class="mw-body" role="main">

<span id="top"></span>

<div id="mw-js-message" style="display:none;">

</div>



# <span dir="auto">Gbrowse Benchmarking</span>

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

# <span id="Using_Javascript_to_Benchmark_Gbrowse_Image_Generation_and_Loading" class="mw-headline">Using Javascript to Benchmark Gbrowse Image Generation and Loading</span>

The following recipe shows how to use existing options, such as
**head**, **html2**, etc., to add javascript functionality to
[GBrowse](GBrowse.1 "GBrowse") via the configuration file. This example
is used for benchmarking page loading and image generation.  
  

<div class="center">

<div class="floatnone">

<a href="File:BenchMark.png" class="image"><img
src="../mediawiki/images/7/7a/BenchMark.png" width="946" height="503"
alt="BenchMark.png" /></a>

</div>

</div>

  

<div style="width:90%;border:1px solid blue;background:gainsboro">

- **Note:** When coding Javascript in GBrowse config files, there are a
  few caveats:
  - The option text gets parsed into a string with no line-breaks, so be
    sure to terminate all javascript statements with a ';'.
  - Do not add javascript style '//' or '/\*\*/' comments to the
    javascript code. They will break the script due to the way the
    configuration file is parsed.
  - You can add comments to your javascript, or anywhere else in the
    configuration file, by starting a new line with '#', which will be
    ignored by the parser and not added to the final javascript.

</div>

### <span id="First_Step:_Adding_a_simple_script_to_the_page_header" class="mw-headline">First Step: Adding a simple script to the page header</span>

- The first bit of javascript goes into the page header using the
  "**head**" option in the \[GENERAL\] section:
- Any text added with the **head** option gets added to the
  \<head\>\</head\> element, before the body of the page is printed.
- In this case, we are initializing a javascript global variable
  'start', which stores the time at which the \<head\>\</head\> element
  was printed, to a precision of .001 seconds.

<!-- -->

    head=  <script type="text/javascript">
             var d = new Date();
             var start = d.getTime()/1000;
            </script>

### <span id="Next_Step:_Inserting_Time_Stamps_into_the_Gbrowse_Output" class="mw-headline">Next Step: Inserting Time Stamps into the Gbrowse Output</span>

- The next steps use the **html*x*** options, where ***x*** = 1-6. These
  options will add HTML to strategic locations in the GBrowse output.
- **html3** and **html4** both add HTML immediately after the 'Overview,
  'Region' (if applicable) and 'Details' panels are printed and can be
  use interchangeably.
- The three panels contains all of the genome browser images.
- Once printed to the browser, the javascript code will execute and
  replace the "placeholder" text with a calculated time interval since
  the \<head\>\</head\> element was printed.
- This gives an approximation of how long it has taken to render or
  un-cache the images.
- It is useful for testing load times of different track combinations,
  new features, etc.

<!-- -->

    html3 = <h1 id=html3>placeholder</h1>
            <script>
              var d  = new Date();
              var e  = d.getTime()/1000 - start;
              var re = Math.round(e*100)/100;
              document.getElementById('html3').innerHTML='Load time '+re+' seconds';
            </script>

</div>

<div class="printfooter">

Retrieved from
"<http://gmod.org/mediawiki/index.php?title=Gbrowse_Benchmarking&oldid=5168>"

</div>

<div id="catlinks" class="catlinks">

<div id="mw-normal-catlinks" class="mw-normal-catlinks">

[Categories](Special:Categories "Special:Categories"):

- [GBrowse](Category:GBrowse "Category:GBrowse")
- [HOWTO](Category:HOWTO "Category:HOWTO")
- [Javascript](Category:Javascript "Category:Javascript")
- [Documentation](Category:Documentation "Category:Documentation")

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

- <span id="ca-nstab-main"><a href="Gbrowse_Benchmarking" accesskey="c"
  title="View the content page [c]">Page</a></span>
- <span id="ca-talk"><a
  href="http://gmod.org/mediawiki/index.php?title=Talk:Gbrowse_Benchmarking&amp;action=edit&amp;redlink=1"
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

<div id="p-views" class="vectorTabs" role="navigation"
aria-labelledby="p-views-label">

### Views

- <span id="ca-view">[Read](Gbrowse_Benchmarking)</span>
- <span id="ca-viewsource"><a
  href="http://gmod.org/mediawiki/index.php?title=Gbrowse_Benchmarking&amp;action=edit"
  accesskey="e" title="This page is protected.
  You can view its source [e]">View source</a></span>
- <span id="ca-history"><a
  href="http://gmod.org/mediawiki/index.php?title=Gbrowse_Benchmarking&amp;action=history"
  accesskey="h" title="Past revisions of this page [h]">View history</a></span>

</div>

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

- <span id="t-whatlinkshere"><a href="Special:WhatLinksHere/Gbrowse_Benchmarking" accesskey="j"
  title="A list of all wiki pages that link here [j]">What links here</a></span>
- <span id="t-recentchangeslinked"><a href="Special:RecentChangesLinked/Gbrowse_Benchmarking" accesskey="k"
  title="Recent changes in pages linked from this page [k]">Related
  changes</a></span>
- <span id="t-specialpages"><a href="Special:SpecialPages" accesskey="q"
  title="A list of all special pages [q]">Special pages</a></span>
- <span id="t-print"><a
  href="http://gmod.org/mediawiki/index.php?title=Gbrowse_Benchmarking&amp;printable=yes"
  rel="alternate" accesskey="p"
  title="Printable version of this page [p]">Printable version</a></span>
- <span id="t-permalink">[Permanent
  link](http://gmod.org/mediawiki/index.php?title=Gbrowse_Benchmarking&oldid=5168 "Permanent link to this revision of the page")</span>
- <span id="t-info">[Page
  information](http://gmod.org/mediawiki/index.php?title=Gbrowse_Benchmarking&action=info)</span>
- <span id="t-smwbrowselink"><a href="Special:Browse/Gbrowse_Benchmarking" rel="smw-browse">Browse
  properties</a></span>
- <span id="t-pdf">[Print as
  PDF](http://gmod.org/mediawiki/index.php?title=Special:PdfPrint&page=Gbrowse_Benchmarking)</span>

</div>

</div>

</div>

</div>

<div id="footer" role="contentinfo">

- <span id="footer-info-lastmod">Last updated at 02:17 on 4 April
  2008.</span>
- <span id="footer-info-viewcount">31,585 page views.</span>
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
