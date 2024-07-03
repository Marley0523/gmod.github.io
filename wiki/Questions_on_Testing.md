<div id="mw-page-base" class="noprint">

</div>

<div id="mw-head-base" class="noprint">

</div>

<div id="content" class="mw-body" role="main">

<span id="top"></span>

<div id="mw-js-message" style="display:none;">

</div>



# <span dir="auto">Questions on Testing</span>

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

*By <a
href="http://gmod.org/mediawiki/index.php?title=Chris_Mungall&amp;action=edit&amp;redlink=1"
class="new" title="Chris Mungall (page does not exist)">Chris
Mungall</a>.*

I wholeheartedly agree with the need for tests and test-driven
development

A significant portion of GMOD code will be either user-interface or
middleware. What strategies should we use for testing these?

For UI code I am talking scenarios such as complex editing operations in
Apollo. I have no idea what the best approach is.

UI is, indeed, difficult. The basic things you'd want are the ability to
drive it through injecting events, and the ability to query what state
the UI is in, and what state the stuff the UI alters is in. All this
means you ideally want to build your system from the ground-up so that
it is broken out into components like that. See, for example, anything
talking about "Model/View/Controller". (If you find yourself in a world
of code that hasn't been designed to make the testing easier, then there
are various crazy and application-specific things you can do.)

I have written a lot of middleware code, and always use extensive
tests - see go-db-perl for an example. However, I find my testing
strategy is very ad-hoc. For example:

- load test file into test database
- use API to fetch objects from database
- check objects contain expected values

This strategy is flawed, because it is difficult to be sure there are no
"holes" in the test suite in which errors can live. Filling these holes
is a sisyphean task - especially when the model is in flux.

Another approach I use is that roundtrip approach - take a sample data
file, slurp it in, pass it through every adapter available and save it
back in the original format, then diff it. The problem here is that the
diffing strategy may be sensitive to irrelevant differences -
whitespace, ordering of XML elements, presence/absence of default
values, etc. I suspect the solution here is some kind of generic diffing
algorithm based on a formal specification (relational, XML-Schema,
UML+OCL, ontologies) of the data. I'm not sure if such a thing exists.
If it does, it would be useful for all GMOD apps that have a middleware
component, regardless of programming langauge.

</div>

<div class="printfooter">

Retrieved from
"<http://gmod.org/mediawiki/index.php?title=Questions_on_Testing&oldid=2066>"

</div>

<div id="catlinks" class="catlinks">

<div id="mw-normal-catlinks" class="mw-normal-catlinks">

[Category](Special%3ACategories "Special%3ACategories"):

- [GMOD Developers](Category%3AGMOD_Developers "Category%3AGMOD Developers")

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
  href="http://gmod.org/mediawiki/index.php?title=Talk:Questions_on_Testing&amp;action=edit&amp;redlink=1"
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


- <span id="t-smwbrowselink"><a href="Special%3ABrowse/Questions_on_Testing" rel="smw-browse">Browse
  properties</a></span>


</div>

</div>

</div>

</div>

<div id="footer" role="contentinfo">

- <span id="footer-info-lastmod">Last updated at 17:16 on 5 April
  2007.</span>
<!-- - <span id="footer-info-viewcount">9,037 page views.</span> -->
- <span id="footer-info-copyright">Content is available under
  <a href="http://www.gnu.org/licenses/fdl-1.3.html" class="external"
  rel="nofollow">a GNU Free Documentation License</a> unless otherwise
  noted.</span>

<!-- -->

- <span id="footer-places-about">[About
  GMOD](GMOD%3AAbout "GMOD%3AAbout")</span>

<!-- -->






</div>
