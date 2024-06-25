<div id="mw-page-base" class="noprint">

</div>

<div id="mw-head-base" class="noprint">

</div>

<div id="content" class="mw-body" role="main">

<span id="top"></span>

<div id="mw-js-message" style="display:none;">

</div>



# <span dir="auto">Talk:GBrowse Install HOWTO</span>

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

- [<span class="tocnumber">1</span>
  <span class="toctext">Layout</span>](#Layout)
- [<span class="tocnumber">2</span> <span class="toctext">Question about
  gbrowse_netinstall.pl</span>](#Question_about_gbrowse_netinstall.pl)
- [<span class="tocnumber">3</span> <span class="toctext">CPAN as
  non-root?</span>](#CPAN_as_non-root.3F)
- [<span class="tocnumber">4</span> <span class="toctext">Question about
  **Optional Perl
  modules**</span>](#Question_about_Optional_Perl_modules)
- [<span class="tocnumber">5</span> <span class="toctext">GBrowse Quick
  Install</span>](#GBrowse_Quick_Install)

</div>

## <span id="Layout" class="mw-headline">Layout</span>

It would be good if the content of this page could be re-organized, as
it seems to jump around a bit, and I think several sections could be
placed on other (sub) pages. I'd do it... but I'm lazy, no wait, what I
mean is that I don't want to start cutting and hacking away before I
know what I am doing. --[DanBolser](User:DanBolser "User:DanBolser")
12:21, 28 October 2008 (UTC)

  

## <span id="Question_about_gbrowse_netinstall.pl" class="mw-headline">Question about gbrowse_netinstall.pl</span>

Looking at:

<a
href="http://gmod.cvs.sourceforge.net/*checkout*/gmod/Generic-Genome-Browser/bin/gbrowse_netinstall.pl"
class="external free"
rel="nofollow">http://gmod.cvs.sourceforge.net/*checkout*/gmod/Generic-Genome-Browser/bin/gbrowse_netinstall.pl</a>

  
I wonder if its possible to install 'non-root' using this PL? Seems like
appropriate use of the '--install_param_str' could allow a non-root
install via this package... would it be something like

    perl gbrowse_netinstall.pl --install_param_str PREFIX=~/build

  

At least part of the answer to this question is: "Yes, you can use
gbrowse_netinstall.pl as 'non-root', however, you should have your cpan
configuration set up so that you can install Perl modules as a non-root
user. It seems that mostly gbrowse_netinstall.pl uses cpan, so lets
see... --[DanBolser](User:DanBolser "User:DanBolser") 15:00, 28 October
2008 (UTC)

  

I found this error so far... Using the following command:

    ./gbrowse_netinstall.pl -d --install_param_str="PREFIX=~/test"

    Manifying blib/lib/Bio/DB/Qual.pm -> blib/libdoc/Bio::DB::Qual.3pm
    !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
    ERROR: Can't create '/usr/bin'
    Do not have write permissions on '/usr/bin'
    !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
      at /tmp/vbXS2SeDDc/bioperl-live/ModuleBuildBioperl.pm line 812

    *** Installing Generic-Genome-Browser ***

## <span id="CPAN_as_non-root.3F" class="mw-headline">CPAN as non-root?</span>

See: <a href="http://sial.org/howto/perl/life-with-cpan/non-root/"
class="external free"
rel="nofollow">http://sial.org/howto/perl/life-with-cpan/non-root/</a>

More importantly see:
<a href="http://search.cpan.org/search?query=local-lib"
class="external free"
rel="nofollow">http://search.cpan.org/search?query=local-lib</a>
--[DanBolser](User:DanBolser "User:DanBolser") 15:36, 14 January 2009
(UTC)

## <span id="Question_about_Optional_Perl_modules" class="mw-headline">Question about **Optional Perl modules**</span>

Are the Bio:: Perl modules listed in this section not part of BioPerl?
Why are these modules listed separately from BioPerl?
--[DanBolser](User:DanBolser "User:DanBolser") 15:35, 14 January 2009
(UTC)

## <span id="GBrowse_Quick_Install" class="mw-headline">GBrowse Quick Install</span>

Assuming:

- You have Apache installed and working in a way in which you understand
  ...
- You have Perl and BioPerl installed ...

<!-- -->

    # Local Perl modules:
    # /opt/perl/5.8.8/lib/perl5/

    # Local BioPerl modules:
    # /opt/bioperl/bioperl-live/lib/perl5/

    export PERL5LIB=/opt/perl/5.8.8/lib/perl5:/opt/bioperl/bioperl-live/lib/perl5

    perl Makefile.PL \
      NOROOT=1 \
      SELINUX=1 \
      APACHE=$HOME/httpd \
      GBROWSE_ROOT=gbrowse \
      LIB=$HOME/perl5/lib/perl5

    ## Aparently unused
      BIN=$HOME/perl5/bin

--[DanBolser](User:DanBolser "User:DanBolser") 13:35, 16 January 2009
(UTC)

</div>

<div class="printfooter">

Retrieved from
"<http://gmod.org/mediawiki/index.php?title=Talk:GBrowse_Install_HOWTO&oldid=7187>"

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

- <span id="ca-nstab-main"><a href="GBrowse_Install_HOWTO" accesskey="c"
  title="View the content page [c]">Page</a></span>
- <span id="ca-talk"><a href="Talk:GBrowse_Install_HOWTO" accesskey="t"
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

- <span id="t-whatlinkshere"><a href="Special:WhatLinksHere/Talk:GBrowse_Install_HOWTO" accesskey="j"
  title="A list of all wiki pages that link here [j]">What links here</a></span>
- <span id="t-recentchangeslinked"><a href="Special:RecentChangesLinked/Talk:GBrowse_Install_HOWTO"
  accesskey="k"
  title="Recent changes in pages linked from this page [k]">Related
  changes</a></span>
- <span id="t-specialpages"><a href="Special:SpecialPages" accesskey="q"
  title="A list of all special pages [q]">Special pages</a></span>
- <span id="t-print"><a
  href="http://gmod.org/mediawiki/index.php?title=Talk:GBrowse_Install_HOWTO&amp;printable=yes"
  rel="alternate" accesskey="p"
  title="Printable version of this page [p]">Printable version</a></span>
- <span id="t-permalink">[Permanent
  link](http://gmod.org/mediawiki/index.php?title=Talk:GBrowse_Install_HOWTO&oldid=7187 "Permanent link to this revision of the page")</span>
- <span id="t-info">[Page
  information](http://gmod.org/mediawiki/index.php?title=Talk:GBrowse_Install_HOWTO&action=info)</span>
- <span id="t-pdf">[Print as
  PDF](http://gmod.org/mediawiki/index.php?title=Special:PdfPrint&page=Talk:GBrowse_Install_HOWTO)</span>

</div>

</div>

</div>

</div>

<div id="footer" role="contentinfo">

- <span id="footer-info-lastmod">Last updated at 13:35 on 16 January
  2009.</span>
- <span id="footer-info-viewcount">15,091 page views.</span>
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
