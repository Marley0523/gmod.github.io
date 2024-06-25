<div id="mw-page-base" class="noprint">

</div>

<div id="mw-head-base" class="noprint">

</div>

<div id="content" class="mw-body" role="main">

<span id="top"></span>

<div id="mw-js-message" style="display:none;">

</div>



# <span dir="auto">Drupal2wiki</span>

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

Perl script written by <a
href="http://gmod.org/mediawiki/index.php?title=Eric_Just&amp;action=edit&amp;redlink=1"
class="new" title="Eric Just (page does not exist)">Eric Just</a> to
copy Drupal nodes to a MediaWiki:

<div class="mw-geshi mw-code mw-content-ltr" dir="ltr">

<div class="perl source-perl">

``` de1
#!/usr/bin/perl -w
 
use strict;
use WWW::Mechanize;
use HTML::TreeBuilder::XPath;
use HTML::WikiConverter;
use Data::Dumper;
 
my $mech = WWW::Mechanize->new();
 
my $wiki_url = "http://wiki.gmod.org/index.php";
 
my @urls = qw (
http://www.gmod.org/face_caucus_apidb_user_studies_and_impact_on_development
http://www.gmod.org/face_caucus_sgn_associating_solanaceae_loci_with_phenotype
http://www.gmod.org/face_caucus_ucsc_user_interface_issues_challenges_in_a_many_organism_database
http://www.gmod.org/january_2007_meeting
http://www.gmod.org/nih_2002_workshop_on_model_organism_databases
http://www.gmod.org/user-interface-caucus
http://www.gmod.org/mod_user_interfaces_outline_of_topics
http://www.gmod.org/mod_user_interfaces_sample_of_several_mod_top_level_functions
);
 
 
foreach my $url_to_convert (@urls) {
 
   $mech->get( $url_to_convert );
 
   warn "could not get page: $url_to_convert" unless $mech->success();
   next unless $mech->success();
 
   my $tree= new HTML::TreeBuilder::XPath();
   $tree->parse( $mech->content() );
 
   #Get title
   my $title = $tree->findvalue( '//h1[@class="title"]')->value();
   if ( !$title ) {
      $title = $tree->findvalue( '//title')->value();
      $title =~ s/ [|].+//g;
   }
   die "could not parse title" if !$title;
 
   # delete navigation links for now
   my $nav_node = $tree->findnodes( '//div[@id="main"]//div[@class="nav"]')->[0];
   $nav_node->delete() if $nav_node;
 
   # delete submitted span
   my $submitted_nodes = $tree->findnodes( '//span[@class="submitted"]');
   map { $_->delete() } @$submitted_nodes;
 
   # delete drupal links section
   my $links_nodes = $tree->findnodes( '//div[@class="links"]');
   map { $_->delete() } @$links_nodes;
 
   my $content_nodes = $tree->findnodes( '//div[@id="main"]//div[@class="content"]');
 
   my $count = 0;
 
   # wiki page text
   my $wiki_text;
   foreach my $node ( @{$content_nodes} ) {
       my $html = $node->as_HTML();
       $html =~ s/ style="{?([^}"]+)}?"//g; # "
 
       # convert to wikimedia format
       my $wc = new HTML::WikiConverter( dialect => 'MediaWiki' );
       my $converted_text = $wc->html2wiki( $html );
 
       # strip out leftover div tags
       $converted_text =~ s/<\/?div[^>]*>//g;
 
       # Now all internal links (not starting with http)
       # change [some link]
       # to:  [[some link]]
       # change [?q=node/71 GBrowse] into [[GBrowse]]
       $converted_text =~ s/\[(?!http)([^\s]*) ([^\]]+)\]/[[$2]]/g;
 
       # append node to new wiki page text
       $wiki_text .= $converted_text."\n";
   }
 
    # now simply find or create the page
    # and paste wiki text into edit box,  
    # submit the form, and there's your new page!
    my $url = $wiki_url."?title=".$title."&action=edit";
    eval {
       warn $url;
       $mech->get($url);
       die unless ($mech->success);
 
       $mech->submit_form(
            form_number => 1,
            fields      => { wpTextbox1 => $wiki_text},
        );
       die unless ($mech->success);
    };
    if($@) {
        print "An error occured : ".$@."\n";
    }
    else {
       print "converted $title\n";
    }
}
```

</div>

</div>

</div>

<div class="printfooter">

Retrieved from
"<http://gmod.org/mediawiki/index.php?title=Drupal2wiki&oldid=22090>"

</div>

<div id="catlinks" class="catlinks">

<div id="mw-normal-catlinks" class="mw-normal-catlinks">

[Category](Special:Categories "Special:Categories"):

- [Wiki Tools](Category:Wiki_Tools "Category:Wiki Tools")

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

- <span id="ca-nstab-main"><a href="Drupal2wiki" accesskey="c"
  title="View the content page [c]">Page</a></span>
- <span id="ca-talk"><a
  href="http://gmod.org/mediawiki/index.php?title=Talk:Drupal2wiki&amp;action=edit&amp;redlink=1"
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


- <span id="t-smwbrowselink"><a href="Special:Browse/Drupal2wiki" rel="smw-browse">Browse
  properties</a></span>
- <span id="t-pdf">[Print as
  PDF](http://gmod.org/mediawiki/index.php?title=Special:PdfPrint&page=Drupal2wiki)</span>

</div>

</div>

</div>

</div>

<div id="footer" role="contentinfo">

- <span id="footer-info-lastmod">Last updated at 20:05 on 8 October
  2012.</span>
<!-- - <span id="footer-info-viewcount">12,982 page views.</span> -->
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
