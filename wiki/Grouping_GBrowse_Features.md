<div id="mw-page-base" class="noprint">

</div>

<div id="mw-head-base" class="noprint">

</div>

<div id="content" class="mw-body" role="main">

<span id="top"></span>

<div id="mw-js-message" style="display:none;">

</div>



# <span dir="auto">Grouping GBrowse Features</span>

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

[GBrowse](GBrowse.1 "GBrowse") recognizes the concept of a "group" of
related features that are connected by dotted lines. The canonical
example is a pair of ESTs that are related by being from the two ends of
the same cDNA clone. However many feature databases, including the older
Bio::DB::GFF database backends, do not allow for arbitrary hierarchical
grouping. To work around this, you may specify a feature name-based
regular expression that will be used to trigger grouping.

## <span id="The_group_pattern_Option" class="mw-headline">The group_pattern Option</span>

It works like this. Say you are working with EST feature pairs and they
follow the nomenclature 501283.5 and 501283.3, where the suffix is "5"
or "3" depending on whether the read was from the 5' or 3' ends of the
insert. To group these pairs by a dotted line, specify the
"group_pattern" option in the appropriate track section:

         group_pattern =  /\.[53]$/

At render time, GBrowse will strip off this pattern from the names of
all features in the EST track and group those that have a common base
name. Hence 501283.5 and 501283.3 will be grouped together by a dotted
line, because after the pattern is removed, they will share the same
common name "501283".

This works for all embedded pattern, provided that stripping out the
pattern results in related features sharing the same name. For example,
if the convention were "est.for.501283" and "est.rev.501283", then this
grouping pattern would have the desired effect:

         group_pattern = /\.(for|rev)\./

Don't forget to escape regular expression meta-characters and to
consider the various ways in which the regular expression might break.
It is entirely possible to create an invalid regular expression, in
which case gbrowse will crash until you comment out the offending
option.

## <span id="The_group_on_Option" class="mw-headline">The group_on Option</span>

The Bio::DB::SeqFeature::Store database backend has the opposite
problem.It allows features to be hierarchically grouped to an unlimited
extent. However, this is problematic with quantitative data such as
tiling array data in which a feature might extend from one chromosome to
another. For performance reasons, you may not wish to read the entire
chromosome-length feature into memory in order to display a small
portion of it. The **group_on** option allows you to create a database
in which each quantitative data point is a separate feature, but at run
time related features are grouped together to create a composite feature
that can be graphed. The syntax is:

    group_on = grouping_field

Where *grouping_field* is one of the feature's methods. Typically, you
will group on the **display_name** field in order to group features
together by their human-readable name. In this case, the **group_on**
field would read:

    group_on = display_name

For very dense quantitative data, you should use
<a href="http://genome.ucsc.edu/goldenPath/help/wiggle.html"
class="external text" rel="nofollow">wiggle format</a>. Please see
[GBrowse/Uploading Wiggle
Tracks](GBrowse/Uploading_Wiggle_Tracks "GBrowse/Uploading Wiggle Tracks")
for instructions.

</div>

<div class="printfooter">

Retrieved from
"<http://gmod.org/mediawiki/index.php?title=Grouping_GBrowse_Features&oldid=9627>"

</div>

<div id="catlinks" class="catlinks">

<div id="mw-normal-catlinks" class="mw-normal-catlinks">

[Category](Special:Categories "Special:Categories"):

- [GBrowse](Category:GBrowse "Category:GBrowse")

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
  href="http://gmod.org/mediawiki/index.php?title=Talk:Grouping_GBrowse_Features&amp;action=edit&amp;redlink=1"
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


- <span id="t-smwbrowselink"><a href="Special%3ABrowse/Grouping_GBrowse_Features"
  rel="smw-browse">Browse properties</a></span>


</div>

</div>

</div>

</div>

<div id="footer" role="contentinfo">

- <span id="footer-info-lastmod">Last updated at 06:09 on 25 September
  2009.</span>
<!-- - <span id="footer-info-viewcount">16,470 page views.</span> -->
- <span id="footer-info-copyright">Content is available under
  <a href="http://www.gnu.org/licenses/fdl-1.3.html" class="external"
  rel="nofollow">a GNU Free Documentation License</a> unless otherwise
  noted.</span>

<!-- -->

- <span id="footer-places-about">[About
  GMOD](GMOD:About "GMOD:About")</span>

<!-- -->






</div>
