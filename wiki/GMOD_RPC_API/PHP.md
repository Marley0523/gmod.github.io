<div id="mw-page-base" class="noprint">

</div>

<div id="mw-head-base" class="noprint">

</div>

<div id="content" class="mw-body" role="main">

<span id="top"></span>

<div id="mw-js-message" style="display:none;">

</div>



# <span dir="auto">GMOD RPC API/PHP</span>

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

Plans/Architecture for the PHP tools for implementing gmod-rpc

<div id="toc" class="toc">

<div id="toctitle">

## Contents

</div>

- [<span class="tocnumber">1</span>
  <span class="toctext">Components</span>](#Components)
  - [<span class="tocnumber">1.1</span>
    <span class="toctext">index.php</span>](#index.php)
  - [<span class="tocnumber">1.2</span>
    <span class="toctext">class.myDomDocument.php</span>](#class.myDomDocument.php)
  - [<span class="tocnumber">1.3</span> <span class="toctext">version
    directories</span>](#version_directories)
    - [<span class="tocnumber">1.3.1</span>
      <span class="toctext">gmod-rpc/v1/rpc.php</span>](#gmod-rpc.2Fv1.2Frpc.php)
    - [<span class="tocnumber">1.3.2</span>
      <span class="toctext">gmod-rpc/v1/sources/</span>](#gmod-rpc.2Fv1.2Fsources.2F)
    - [<span class="tocnumber">1.3.3</span>
      <span class="toctext">gmod-rpc/v1/services/</span>](#gmod-rpc.2Fv1.2Fservices.2F)
    - [<span class="tocnumber">1.3.4</span>
      <span class="toctext">gmod-rpc/v1/class.View.php</span>](#gmod-rpc.2Fv1.2Fclass.View.php)

</div>

## <span id="Components" class="mw-headline">Components</span>

### <span id="index.php" class="mw-headline">index.php</span>

    gmod-rpc/index.php

Use mod_rewrite so that gmod-rpc URLs all go to this script

    <IfModule mod_rewrite.c>   
    RewriteEngine on  
    RewriteRule ^/gmod-rpc/.*$ /gmod-rpc/index.php  
    </IfModule>

index.php looks for a version directory based on the URL.

### <span id="class.myDomDocument.php" class="mw-headline">class.myDomDocument.php</span>

Very small class from Joe Grissom at Oklahoma for making XML. There is
probably something more sophisticated that could be used in the future,
but this works.

### <span id="version_directories" class="mw-headline">version directories</span>

put everything else in a directory based on the version, e.g. v1

#### <span id="gmod-rpc.2Fv1.2Frpc.php" class="mw-headline">gmod-rpc/v1/rpc.php</span>

All this does is parse the URL to instantiate a contoller object for the
desired service and a view object. The class files live in

#### <span id="gmod-rpc.2Fv1.2Fsources.2F" class="mw-headline">gmod-rpc/v1/sources/</span>

This will be where data source adaptors live class.SourceName.php/

#### <span id="gmod-rpc.2Fv1.2Fservices.2F" class="mw-headline">gmod-rpc/v1/services/</span>

This directory holds a file defining a base class

    class.Service.php

implement additional services by adding object classes that extend this
base class e.g. class.Organisms.php:

<div class="mw-geshi mw-code mw-content-ltr" dir="ltr">

<div class="php source-php">

``` de1
class Organisms extends Service{
...
```

</div>

</div>

Service class names should be ucfirst.

#### <span id="gmod-rpc.2Fv1.2Fclass.View.php" class="mw-headline">gmod-rpc/v1/class.View.php</span>

A views object to generate xml or json

</div>

<div class="printfooter">

Retrieved from
"<http://gmod.org/mediawiki/index.php?title=GMOD_RPC_API/PHP&oldid=22196>"

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

- <span id="ca-nstab-main"><a href="PHP" accesskey="c" title="View the content page [c]">Page</a></span>
- <span id="ca-talk"><a
  href="http://gmod.org/mediawiki/index.php?title=Talk:GMOD_RPC_API/PHP&amp;action=edit&amp;redlink=1"
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

<a href="../Main_Page"
style="background-image: url(../../images/GMOD-cogs.png);"
title="Visit the main page"></a>

</div>

<div id="p-Navigation" class="portal" role="navigation"
aria-labelledby="p-Navigation-label">

### Navigation

<div class="body">

- <span id="n-GMOD-Home">[GMOD Home](../Main_Page)</span>
- <span id="n-Software">[Software](../GMOD_Components)</span>
- <span id="n-Categories-.2F-Tags">[Categories /
  Tags](../Categories)</span>
- <span id="n-View-all-pages">[View all
  pages](../Special:AllPages)</span>

</div>

</div>

<div id="p-Documentation" class="portal" role="navigation"
aria-labelledby="p-Documentation-label">

### Documentation

<div class="body">

- <span id="n-Overview">[Overview](../Overview)</span>
- <span id="n-FAQs">[FAQs](../Category:FAQ)</span>
- <span id="n-HOWTOs">[HOWTOs](../Category:HOWTO)</span>
- <span id="n-Glossary">[Glossary](../Glossary)</span>

</div>

</div>

<div id="p-Community" class="portal" role="navigation"
aria-labelledby="p-Community-label">

### Community

<div class="body">

- <span id="n-GMOD-News">[GMOD News](../GMOD_News)</span>
- <span id="n-Training-.2F-Outreach">[Training /
  Outreach](../Training_and_Outreach)</span>
- <span id="n-Support">[Support](../Support)</span>
- <span id="n-GMOD-Promotion">[GMOD Promotion](../GMOD_Promotion)</span>
- <span id="n-Meetings">[Meetings](../Meetings)</span>
- <span id="n-Calendar">[Calendar](../Calendar)</span>

</div>

</div>

<div id="p-tb" class="portal" role="navigation"
aria-labelledby="p-tb-label">

### Tools

<div class="body">


- <span id="t-smwbrowselink"><a href="../Special:Browse/GMOD_RPC_API-2FPHP" rel="smw-browse">Browse
  properties</a></span>
- <span id="t-pdf">[Print as
  PDF](http://gmod.org/mediawiki/index.php?title=Special:PdfPrint&page=GMOD_RPC_API/PHP)</span>

</div>

</div>

</div>

</div>

<div id="footer" role="contentinfo">

- <span id="footer-info-lastmod">Last updated at 18:12 on 9 October
  2012.</span>
<!-- - <span id="footer-info-viewcount">21,907 page views.</span> -->
- <span id="footer-info-copyright">Content is available under
  <a href="http://www.gnu.org/licenses/fdl-1.3.html" class="external"
  rel="nofollow">a GNU Free Documentation License</a> unless otherwise
  noted.</span>

<!-- -->

- <span id="footer-places-about">[About
  GMOD](../GMOD:About "GMOD:About")</span>

<!-- -->

- <span id="footer-copyrightico">[<img src="http://www.gnu.org/graphics/gfdl-logo-small.png" width="88"
  height="31" alt="a GNU Free Documentation License" />](http://www.gnu.org/licenses/fdl-1.3.html)</span>
- <span id="footer-poweredbyico">[<img
  src="../../mediawiki/skins/common/images/poweredby_mediawiki_88x31.png"
  width="88" height="31" alt="Powered by MediaWiki" />](http://www.mediawiki.org/)
  [<img
  src="../../mediawiki/extensions/SemanticMediaWiki/resources/images/smw_button.png"
  width="88" height="31" alt="Powered by Semantic MediaWiki" />](https://www.semantic-mediawiki.org/wiki/Semantic_MediaWiki)</span>

<div style="clear:both">

</div>

</div>
