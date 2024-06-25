<div id="mw-page-base" class="noprint">

</div>

<div id="mw-head-base" class="noprint">

</div>

<div id="content" class="mw-body" role="main">

<span id="top"></span>

<div id="mw-js-message" style="display:none;">

</div>



# <span dir="auto">User talk:Girlwithglasses</span>

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

<div id="toc" class="toc">

<div id="toctitle">

## Contents

</div>

- [<span class="tocnumber">1</span> <span class="toctext">GMOD website
  feedback extension</span>](#GMOD_website_feedback_extension)
  - [<span class="tocnumber">1.1</span> <span class="toctext">In
    brief</span>](#In_brief)
  - [<span class="tocnumber">1.2</span> <span class="toctext">Possible
    plug in uses</span>](#Possible_plug_in_uses)
  - [<span class="tocnumber">1.3</span>
    <span class="toctext">Details</span>](#Details)

</div>

## <span id="GMOD_website_feedback_extension" class="mw-headline">GMOD website feedback extension</span>

### <span id="In_brief" class="mw-headline">In brief</span>

A tool to allow anyone to submit a comment or feedback on any page of
the GMOD wiki.

### <span id="Possible_plug_in_uses" class="mw-headline">Possible plug in uses</span>

- Rate this page - give feedback on how easy/difficult a tutorial or
  piece of documentation is to follow
- Geographic location - two possible uses:

1.  1.  Express interest in having a GMOD workshop/meeting in a certain
        area
    2.  Add your DB and location to the [GMOD
        Users](GMOD_Users "GMOD Users") list

- Generic feedback - send a message to GMOD help if something is broken
  (e.g. OpenID login!) or a mistake is found

### <span id="Details" class="mw-headline">Details</span>

- clicking a link/button/icon brings up a form for submitting feedback
  - use jQuery to bring up form as a modal dialogue box

<!-- -->

- the extension should allow anyone, whether they are a member of the
  wiki or not, to give feedback
  - if the person is a logged-in wiki member, record their name
  - ask for name/email otherwise

<!-- -->

- form should be configurable
  - store the form in a Template page on the wiki? Or in its own
    namespace? See Mediawiki Widgets for examples of widgets in their
    own namespace
  - embed a locally-stored form (i.e. store the form html on the server
    and present it in an iframe)?
  - have the form content dynamically created from some sort of
    shorthand specification? e.g.

<!-- -->

     <feedback>
     [{ label = 'Name',
        name = username,
        type = text,
        value = ,
        required = true,
      },
      { label = 'Rate the contents of this page',
        name = page_rating,
        type = radio,
        value = ['poor','ok','good'],
        required = true,
      }]
     </feedback>

- how do we stop users from sabotaging the form, either accidentally or
  deliberately?
  - security risks?

<!-- -->

- some method for blocking automated submissions is required -- i.e. a
  captcha

<!-- -->

- submitting and storing form data:
  - how/where to store it?
    - in the wiki itself
      - investigate how existing ratings extensions store their data
    - in a local text file or database
    - in a remote text file or db, e.g. in Google docs
    - email the data

<!-- -->

- can the plugin appear on every page in a category without having to
  manually add it to each page?

</div>

<div class="printfooter">

Retrieved from
"<http://gmod.org/mediawiki/index.php?title=User_talk:Girlwithglasses&oldid=23755>"

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

- <span id="ca-nstab-user"><a href="User:Girlwithglasses" accesskey="c"
  title="View the user page [c]">User page</a></span>
- <span id="ca-talk"><a href="User_talk:Girlwithglasses" accesskey="t"
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

- <span id="t-whatlinkshere"><a href="Special:WhatLinksHere/User_talk:Girlwithglasses" accesskey="j"
  title="A list of all wiki pages that link here [j]">What links here</a></span>
- <span id="t-recentchangeslinked"><a href="Special:RecentChangesLinked/User_talk:Girlwithglasses"
  accesskey="k"
  title="Recent changes in pages linked from this page [k]">Related
  changes</a></span>
- <span id="t-contributions">[User
  contributions](Special:Contributions/Girlwithglasses "A list of contributions of this user")</span>
- <span id="t-log">[Logs](Special:Log/Girlwithglasses)</span>
- <span id="t-specialpages"><a href="Special:SpecialPages" accesskey="q"
  title="A list of all special pages [q]">Special pages</a></span>
- <span id="t-print"><a
  href="http://gmod.org/mediawiki/index.php?title=User_talk:Girlwithglasses&amp;printable=yes"
  rel="alternate" accesskey="p"
  title="Printable version of this page [p]">Printable version</a></span>
- <span id="t-permalink">[Permanent
  link](http://gmod.org/mediawiki/index.php?title=User_talk:Girlwithglasses&oldid=23755 "Permanent link to this revision of the page")</span>
- <span id="t-info">[Page
  information](http://gmod.org/mediawiki/index.php?title=User_talk:Girlwithglasses&action=info)</span>
- <span id="t-pdf">[Print as
  PDF](http://gmod.org/mediawiki/index.php?title=Special:PdfPrint&page=User_talk:Girlwithglasses)</span>

</div>

</div>

</div>

</div>

<div id="footer" role="contentinfo">

- <span id="footer-info-lastmod">Last updated at 14:15 on 1 July
  2013.</span>
- <span id="footer-info-viewcount">35,056 page views.</span>
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
