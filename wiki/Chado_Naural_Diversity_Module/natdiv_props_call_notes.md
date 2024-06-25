<div id="mw-page-base" class="noprint">

</div>

<div id="mw-head-base" class="noprint">

</div>

<div id="content" class="mw-body" role="main">

<span id="top"></span>

<div id="mw-js-message" style="display:none;">

</div>



# <span dir="auto">Chado Naural Diversity Module/natdiv props call notes</span>

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

## <span id="Date" class="mw-headline">Date</span>

June 1st 2011, 12PM EST

  

## <span id="participants" class="mw-headline">participants</span>

- Maren
- Seth
- Scott
- Yuri
- Rob
- Naama
- Sook (first 30 min)
- Lukas (first 30 min)

  

## <span id="Notes" class="mw-headline">Notes</span>

--Seth :

leave the phenotype module for later

--Yuri:

2 new prop tables ( in the genotype module) environmentprop
phenstatementprop

- wants to add cvalue_id to these prop tables for post-composing terms
  (type_id=NaCl treatment, value=100 cvalue_id = mM )

--Naama:

the question is how do we use the property tables. What should go in
there, and do we want to structure the values by attaching cvterm FKs to
it.

--Sook:

terms can be post-composed using cvterm_relationship

--Lukas:

postcomposing terms does not include description of the experiment

--Seth:

there is no justification for adding cvalue_id if there is another way
in Chado to post-compose terms. the values in these 2 prop tables could
be stored elsewhere in the ND schema (these are props of the
experiment). Since nobody in this group, besides Yuri and Maren is using
environmentprop and phenstatementprop, this is not the right group for
deciding whether we add these or not.

**Decision**

- there's a majority against adding cvalue_id , no strong objection to
  add the 2 prop table.

Need to send an email to gmod-schema regarding adding the 2 vanilla prop
tables (Yuri will do this).

--Yuri:

nobody has replied to the previous email about these 2 tables

--Scott:

people don't use/ask for these 2 prop tables because they don't need it,
or they are not aware this is an option. I'm inclined to do nothing for
now, but Yuri should send the email because there are now more Chado
users.

  

------------------------------------------------------------------------

--Yuri:

nd_experiment_protocolprop Add nd_experiment_phenotypeprop

- I want to split the value from the description of the phenotype

property of the linking table - applies both to experiment and the
protocol. same for the phenotype .

--Seth:

nd_experiment_protocol :

- Does anyone else uses multiple protocols for a single experiment? No.
- is that any of the use cases in the paper? No

--Yuri:

this allows flexibility in the schema

--Seth:

Can these be 1 protocol with 2 different experimentprops? if you are
testing the reaction of your plant to a substance, this is part of the
nd_experiment (2 separate props within nd_experiment) and the protocol
remains the same.

The only place with a prop table for a linking table is
nd_experiment_stockprop - it was important to provide information on
that relationship - how the link between the stock and the experiment
was made. This is not the case with experiment and protocol. The
stock-experiment value cannot be put anywhere else, because the stock
links to multiple experiments and an experiment can have multiple
stocks.

--Yuri:

I can see somebody wanting to be able to provide the context for these 2
objects but currently nobody does that. I don't have a problem with
adding prop tables because I don't think it clutters the schema (while
Naama and Sook think it does)

--Seth:

adding prop tables to linking tables changes the schema by saying we can
add context to the relationship

--Yuri:

there's also the question of consistency of the prop tables in the ND
module. If we want that, I'm fine with adding cvalue_id to all the prop
tables in ND, or at least to the ones I find useful. It's an optional
field. I find it very useful.

--Naama:

we have here 2 fundamental issues: 1. how do we break the
value-phenotype connection in the phenotype module 2. how do we use the
prop tables? (and cvalue_id, is this needed?)

  
--Yuri:

looked at postcomposition in the phenotype_cvterm table - we need the
value field for some of the data. e.g. we have the date sometimes as
part of the description. 'Stem diameter at ' + a certain date.

--Naama:

Do we change the schema because of the data or do we change the data so
it would fit into the schema?

--Seth:

it's a valid argument. We've run into this last week talking about
postcomposing terms.

Need to solve first the problem with post-composing terms . Solve the
cases when you cannot pre-compose. This is a general problem , and
should be looked into in the cvterm module (cvterm_relationship or
somewhere else) because this is not a specific problem in the phenotype
or the ND module.

--Yuri:

If we use cvterm_relationship we'll need a way to link my object to a
cvterm_relationship table . sometimes I just want to add a unit , and
this seems like making things more complex.

--Seth:

you can just link to the unanimous term. This is the same as adding a
new cvterm and linking to it.

--Naama:

would be good to email the gmod-schema list and see if anyone is using
cvterm_relationship for post composition.

--Scott:

I can imagine this as a Tripal module that can help others.

--Seth:

thinks Phenote allows post-composition of terms (need to check with
ZFin)

--Scott:

Zfin does not use Chado, but they do use the cvterm module. Maybe Nicole
Washington knows, if she still works on Phenote. I'll email her and find
out.

--Naama:

thinks next step should be going back to the gmod-schema list asking
about post-composition of terms

--Seth:

and CC Zfin Flybase helpdesks - most obvious people who might be
post-composing terms. Will send the email.

------------------------------------------------------------------------

**Decisions:**

- Go back to the schema list with the post-composition of terms in a
  generic way (Seth)
- Not adding the suggested prop tables, because there is no agreement,
  and we need to solve first the following major issues:

<!-- -->

    1. decision on post-composing terms . How?
    2. revisit the phenotype module for breaking the value-phenotype ties
    3. better definition of how we use the prop tables

- Need to change the value fields in the ND module to 'text' (Naama will
  do this)
  - Paper is good to go
  - Chado release is good to go.

</div>

<div class="printfooter">

Retrieved from
"<http://gmod.org/mediawiki/index.php?title=Chado_Naural_Diversity_Module/natdiv_props_call_notes&oldid=17772>"

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

- <span id="ca-nstab-main"><a href="natdiv_props_call_notes" accesskey="c"
  title="View the content page [c]">Page</a></span>
- <span id="ca-talk"><a
  href="http://gmod.org/mediawiki/index.php?title=Talk:Chado_Naural_Diversity_Module/natdiv_props_call_notes&amp;action=edit&amp;redlink=1"
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

- <span id="t-whatlinkshere"><a
  href="../Special:WhatLinksHere/Chado_Naural_Diversity_Module/natdiv_props_call_notes"
  accesskey="j" title="A list of all wiki pages that link here [j]">What
  links here</a></span>
- <span id="t-recentchangeslinked"><a
  href="../Special:RecentChangesLinked/Chado_Naural_Diversity_Module/natdiv_props_call_notes"
  accesskey="k"
  title="Recent changes in pages linked from this page [k]">Related
  changes</a></span>
- <span id="t-specialpages"><a href="../Special:SpecialPages" accesskey="q"
  title="A list of all special pages [q]">Special pages</a></span>
- <span id="t-print"><a
  href="http://gmod.org/mediawiki/index.php?title=Chado_Naural_Diversity_Module/natdiv_props_call_notes&amp;printable=yes"
  rel="alternate" accesskey="p"
  title="Printable version of this page [p]">Printable version</a></span>
- <span id="t-permalink">[Permanent
  link](http://gmod.org/mediawiki/index.php?title=Chado_Naural_Diversity_Module/natdiv_props_call_notes&oldid=17772 "Permanent link to this revision of the page")</span>
- <span id="t-info">[Page
  information](http://gmod.org/mediawiki/index.php?title=Chado_Naural_Diversity_Module/natdiv_props_call_notes&action=info)</span>
- <span id="t-smwbrowselink"><a
  href="../Special:Browse/Chado_Naural_Diversity_Module-2Fnatdiv_props_call_notes"
  rel="smw-browse">Browse properties</a></span>
- <span id="t-pdf">[Print as
  PDF](http://gmod.org/mediawiki/index.php?title=Special:PdfPrint&page=Chado_Naural_Diversity_Module/natdiv_props_call_notes)</span>

</div>

</div>

</div>

</div>

<div id="footer" role="contentinfo">

- <span id="footer-info-lastmod">Last updated at 01:27 on 2 June
  2011.</span>
- <span id="footer-info-viewcount">7,260 page views.</span>
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
