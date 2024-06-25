<div id="mw-page-base" class="noprint">

</div>

<div id="mw-head-base" class="noprint">

</div>

<div id="content" class="mw-body" role="main">

<span id="top"></span>

<div id="mw-js-message" style="display:none;">

</div>



# <span dir="auto">Apollo-Chado Integration at BovineBase: Bugs and Suggestions</span>

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

This was written by Justin Reese in preparation for [Hackathon
2007](Hackathon_2007_info "Hackathon 2007 info").

In preparation for the Bovine Annotation effort, we set up a
<a href="Chado" class="mw-redirect" title="Chado">Chado</a> database
containing annotation evidence, allow annotators to connect via
[Apollo](Apollo.1 "Apollo") and do their annotations (we haven't gotten
Apollo-\>Chado writebacks working yet, but we'd like to eventually).

We thought it might help GMOD developers improve [Apollo/Chado
interoperability](Apollo-Chado "Apollo-Chado") to get some feedback from
the Apollo users (annotators) and developers (the ones who set up our
Chado db). So, below are some bug reports and suggestions that compiled
from annotators and developers involved in the Bovine Genome annotation
effort. I will be fleshing this out in the next 12-24 hours, hopefully
before the hackathon starts hacking, but feel free to contact me if
something isn't clear.

## <span id="Bugs" class="mw-headline">Bugs</span>

- Apollo crashes when opening some genes from the opening Chado dialog
  box. These genes tend to be near scaffold edges, but not all genes
  near edges cause this error. Example - connect to
  genomes.tamu.edu:5432, id: nobody, no pwd, open (by type of region:
  gene) GLEAN_00599. Apollo outputs this on
  stderr:"java.langStringIndexOutOfBoundsException: String index out of
  range:-2858" and either throws up an empty dialog box, or a dialog box
  saying "Can't load region", after which Apollo dies on some machines,
  but continues on on other machines (e.g. my macbook) but in a very
  strange, unusable error state.
- Pulling down a piece of evidence into the annotation tier to start an
  annotation worked fine for most types of evidence, but not for some
  (ESTs, I think were one class that did not work).
- Pulling down a single exon and trying to add it to an existing
  annotation never worked. This is always a bit touchy, because the
  sweet spot (where you must position the exon over the existing
  annotation before dropping it) is a bit small. But I could not get it
  to work for the life of me, and I tried multiple times with various
  different genes, working with various different people.
- When Chado analysis data is opened (via jdbc), and BLAST results are
  layered on top, occasionally, but not always, blast results are on the
  wrong strand, similar to this bug: <a
  href="http://sourceforge.net/tracker/index.php?func=detail&amp;aid=1713046&amp;group_id=27707&amp;atid=462763"
  class="external free"
  rel="nofollow">http://sourceforge.net/tracker/index.php?func=detail&amp;aid=1713046&amp;group_id=27707&amp;atid=462763</a>
- Long timeout (a few minutes) during start up when network is
  unavailable. When Apollo starts, JDBC seems to automatically send a
  query out to the last database (I think to retrieve the chromosome
  names for the pull-down menu). This can result in a very long start up
  if the network is down or if the database in question is unavailable
  for some reason. Is there a way we could delay this db query until the
  user asks for it?

## <span id="A_few_ideas_for_future_improvements" class="mw-headline">A few ideas for future improvements</span>

1.  Move as much Apollo configuration stuff as possible out of conf
    files like `chado-adapter.xml`, and instead query the user or the
    database, e.g:
    - Allow user to enter URLs, id's, password for Chado databases like
      they would in a web browser, rather than having them specified in
      `chado-adapter.xml`
    - Have apollo retrieve "track" information from Chado's 'analysis'
      table, rather than specifying them in `chado-adapter.xml`
      (searchHitPrograms, genePredictionPrograms, etc).

    Our annotators aren't particularly good at installing conf files\*
    and are spread out all over the world, so we can't really do it for
    them. Having things like tracks names and URLs hard-coded in conf
    files forces us to distribute new conf files to our annotators when
    we change something and hope they do it correctly. This hasn't
    always gone smoothly. Ideally, whenever possible, we would just
    change our Chado database (add a track or change our URL for
    example), and Apollo would automatically get hip by querying the
    Chado database or the user.
    \*no offense, if any of you annotators are reading this
2.  Simplify track naming schemes in Apollo conf files - the names of
    the tracks are a little complex and hard to understand for the
    uninitiated developer, and it's not always clear which one to use.
    For example, during my first foray, I naively tried loading
    repeatmasker results under searchHitPrograms, not realizing that
    searchHitPrograms are always alignments between the reference
    sequence and a second sequence. Not sure if I can suggest an
    intelligent improvement, but would it be possible to construct
    tracks like you do in [GBrowse](GBrowse.1 "GBrowse") (using
    aggregators and the names of the things I would like to aggregate,
    like gene/trancript/CDS) or have Apollo construct them automatically
    using some SQL magic (query for a parent, query for it's children,
    query for the children's children, etc?). Just a thought, this is
    probably asking a lot.

</div>

<div class="printfooter">

Retrieved from
"<http://gmod.org/mediawiki/index.php?title=Apollo-Chado_Integration_at_BovineBase:_Bugs_and_Suggestions&oldid=5125>"

</div>

<div id="catlinks" class="catlinks">

<div id="mw-normal-catlinks" class="mw-normal-catlinks">

[Categories](Special:Categories "Special:Categories"):

- [Apollo](Category:Apollo "Category:Apollo")
- [Chado](Category:Chado "Category:Chado")
- [User
  Experiences](Category:User_Experiences "Category:User Experiences")

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

- <span id="ca-nstab-main"><a href="Apollo-Chado_Integration_at_BovineBase:_Bugs_and_Suggestions"
  accesskey="c" title="View the content page [c]">Page</a></span>
- <span id="ca-talk"><a
  href="http://gmod.org/mediawiki/index.php?title=Talk:Apollo-Chado_Integration_at_BovineBase:_Bugs_and_Suggestions&amp;action=edit&amp;redlink=1"
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

- <span id="ca-view">[Read](Apollo-Chado_Integration_at_BovineBase:_Bugs_and_Suggestions)</span>
- <span id="ca-viewsource"><a
  href="http://gmod.org/mediawiki/index.php?title=Apollo-Chado_Integration_at_BovineBase:_Bugs_and_Suggestions&amp;action=edit"
  accesskey="e" title="This page is protected.
  You can view its source [e]">View source</a></span>
- <span id="ca-history"><a
  href="http://gmod.org/mediawiki/index.php?title=Apollo-Chado_Integration_at_BovineBase:_Bugs_and_Suggestions&amp;action=history"
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

- <span id="t-whatlinkshere"><a
  href="Special:WhatLinksHere/Apollo-Chado_Integration_at_BovineBase:_Bugs_and_Suggestions"
  accesskey="j" title="A list of all wiki pages that link here [j]">What
  links here</a></span>
- <span id="t-recentchangeslinked"><a
  href="Special:RecentChangesLinked/Apollo-Chado_Integration_at_BovineBase:_Bugs_and_Suggestions"
  accesskey="k"
  title="Recent changes in pages linked from this page [k]">Related
  changes</a></span>
- <span id="t-specialpages"><a href="Special:SpecialPages" accesskey="q"
  title="A list of all special pages [q]">Special pages</a></span>
- <span id="t-print"><a
  href="http://gmod.org/mediawiki/index.php?title=Apollo-Chado_Integration_at_BovineBase:_Bugs_and_Suggestions&amp;printable=yes"
  rel="alternate" accesskey="p"
  title="Printable version of this page [p]">Printable version</a></span>
- <span id="t-permalink">[Permanent
  link](http://gmod.org/mediawiki/index.php?title=Apollo-Chado_Integration_at_BovineBase:_Bugs_and_Suggestions&oldid=5125 "Permanent link to this revision of the page")</span>
- <span id="t-info">[Page
  information](http://gmod.org/mediawiki/index.php?title=Apollo-Chado_Integration_at_BovineBase:_Bugs_and_Suggestions&action=info)</span>
- <span id="t-smwbrowselink"><a
  href="Special:Browse/Apollo-2DChado_Integration_at_BovineBase:_Bugs_and_Suggestions"
  rel="smw-browse">Browse properties</a></span>
- <span id="t-pdf">[Print as
  PDF](http://gmod.org/mediawiki/index.php?title=Special:PdfPrint&page=Apollo-Chado_Integration_at_BovineBase:_Bugs_and_Suggestions)</span>

</div>

</div>

</div>

</div>

<div id="footer" role="contentinfo">

- <span id="footer-info-lastmod">Last updated at 15:04 on 25 March
  2008.</span>
- <span id="footer-info-viewcount">11,499 page views.</span>
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
