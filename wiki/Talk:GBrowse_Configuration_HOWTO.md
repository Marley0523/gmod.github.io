<div id="mw-page-base" class="noprint">

</div>

<div id="mw-head-base" class="noprint">

</div>

<div id="content" class="mw-body" role="main">

<span id="top"></span>

<div id="mw-js-message" style="display:none;">

</div>



# <span dir="auto">Talk:GBrowse 1 Configuration HOWTO</span>

<div id="bodyContent">

<div id="siteSub">

From GMOD

</div>

<div id="contentSub">

(Redirected from [Talk:GBrowse Configuration
HOWTO](http://gmod.org/mediawiki/index.php?title=Talk:GBrowse_Configuration_HOWTO&redirect=no "Talk:GBrowse Configuration HOWTO"))

</div>

<div id="jump-to-nav" class="mw-jump">

Jump to: [navigation](#mw-navigation), [search](#p-search)

</div>

<div id="mw-content-text" class="mw-content-ltr" lang="en" dir="ltr">

Hello Reg. GFF file format: I was wondering if the group/region field
has to be (now or in the future) of the format

     ##sequence-region

I think Apollo (but not Artemis) breaks if that is not included.

[Alpapan](User:Alpapan "User:Alpapan")

*The current version of Apollo does require sequence-region, but I just
chatted with the developer and he is removing the requirement that it be
there; he thought it was required by the GFF3 spec. Of course, this
question would probably have been better asked on the Apollo mailing
list: <a href="http://mail.fruitfly.org/mailman/listinfo/apollo"
class="external free"
rel="nofollow">http://mail.fruitfly.org/mailman/listinfo/apollo</a>*
--[Scott](User:Scott "User:Scott") 16:21, 29 January 2008 (EST)

Ah, thanks Scott  
I also was under the impression it was in the
<a href="http://www.sequenceontology.org/gff3.shtml"
class="external text" rel="nofollow">GFF3 spec</a>.

     This element is optional, but strongly encouraged because it allows parsers to perform bounds checking on features.

So I assumed that it was GBrowse that did not follow the spec.
[Alpapan](User:Alpapan "User:Alpapan")

## <span id=".2A_-.3E_h3_for_track_properties.2C_etc.2C_easier_on_the_eyes.3F" class="mw-headline">\* -\> h3 for track properties, etc, easier on the eyes?</span>

I ran a snippet of code...

    s/^\*(.+)\n/===$1===\n/

...to produce the following
<a href="GBrowse_Configuration_HOWTO/bullets2h3" class="mw-redirect"
title="GBrowse Configuration HOWTO/bullets2h3">output</a>. If anyone
cares, I think it lets the track properties - which are currently
bulleted - stand out a bit more, making them easier to find. (check the
General \[SECTION\] for an example.)
--[Stewarta](User:Stewarta "User:Stewarta") 13:43, 14 March 2008 (EDT)

## <span id="Declaring_New_Aggregators" class="mw-headline">Declaring New Aggregators</span>

i think it should be

     aggregators = transcript{....

not

     aggregator = transcript{....

At least with my gbrowse dev branch... I didn't edit it in case i 'm
wrong. [Alpapan](User:Alpapan "User:Alpapan")

*Agreed and fixed. Thanks. [Scott](User:Scott "User:Scott") 23:13, 11
June 2008 (EDT)*

## <span id="Renaming_proposal.3F" class="mw-headline">Renaming proposal?</span>

Hi, I propose that this article is renamed '<a
href="http://gmod.org/mediawiki/index.php?title=Configuring_GBrowse&amp;action=edit&amp;redlink=1"
class="new"
title="Configuring GBrowse (page does not exist)">Configuring
GBrowse</a>', and that we start to split it up into sub documents by
heading. Each sub document would be categorized 'GBrowse configuration'.
It's just so large and unwieldy - I think lots of stuff, especially
advanced functionality could be split out.
--[DanBolser](User:DanBolser "User:DanBolser") 13:41, 22 May 2009 (UTC)

So I started doing this finally (since the discussion reached
consensus). If people want the mega-doc back for some reason, it can be
dynamically re-created from the individual pages on the wiki by
'transcluding' content from the individual pages into another 'calling'
page. For example, to include the content of [GBrowse
Configuration/Balloons](GBrowse_Configuration/Balloons "GBrowse Configuration/Balloons")
in another page, you just type {{:GBrowse Configuration/Balloons}} on
that page. Note the use of the 'noinclude' tags in the above page allows
text (a header) in the individual pages that is not transcluded into the
calling page. --[DanBolser](User:DanBolser "User:DanBolser") 01:13, 10
July 2010 (UTC)

</div>

<div class="printfooter">

Retrieved from
"<http://gmod.org/mediawiki/index.php?title=Talk:GBrowse_1_Configuration_HOWTO&oldid=18555>"

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

- <span id="ca-nstab-main"><a href="GBrowse_1_Configuration_HOWTO" accesskey="c"
  title="View the content page [c]">Page</a></span>
- <span id="ca-talk"><a href="Talk:GBrowse_1_Configuration_HOWTO" accesskey="t"
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




</div>

</div>

</div>

</div>

<div id="footer" role="contentinfo">

- <span id="footer-info-lastmod">Last updated at 16:44 on 15 August
  2011.</span>
<!-- - <span id="footer-info-viewcount">24,377 page views.</span> -->
- <span id="footer-info-copyright">Content is available under
  <a href="http://www.gnu.org/licenses/fdl-1.3.html" class="external"
  rel="nofollow">a GNU Free Documentation License</a> unless otherwise
  noted.</span>

<!-- -->

- <span id="footer-places-about">[About
  GMOD](GMOD:About "GMOD:About")</span>

<!-- -->






</div>
