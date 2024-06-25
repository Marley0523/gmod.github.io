<div id="mw-page-base" class="noprint">

</div>

<div id="mw-head-base" class="noprint">

</div>

<div id="content" class="mw-body" role="main">

<span id="top"></span>

<div id="mw-js-message" style="display:none;">

</div>



# <span dir="auto">Fixing Perl on OSX</span>

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

One of the Security Updates to Mac OSX 10.5 caused problems for Perl.
See

- <a
  href="http://www.theregister.co.uk/2009/02/16/apple_update_perl_breakage/"
  class="external free"
  rel="nofollow">http://www.theregister.co.uk/2009/02/16/apple_update_perl_breakage/</a>
- <a href="http://www.macosxhints.com/article.php?story=20090219082024982"
  class="external free"
  rel="nofollow">http://www.macosxhints.com/article.php?story=20090219082024982</a>

What seems to have happened is that Apple replaced some Perl modules
with their older versions. These need to be reinstalled from source to
get cpan and other things to work. Which modules need to be replaced
seems to depend on what was updated on your system and when. Generally,
you can figure out which modules you need by examining the error
messages you get when installing. I had to manually reinstall IO,
Scalar-List-Utils, Compress-Raw-Zlib, and Compress-Zlib from the tar
distributions.

The general process is illustrated by how to reinstall IO

      mkdir -p /SourceCache
      cd /SourceCache
      curl -O http://cpan.mirror.solnet.ch/authors/id/G/GB/GBARR/IO-1.2301.tar.gz
      tar xzf IO-1.2301.tar.gz
      cd IO-1.2301
      perl Makefile.PL
      make
      make install

This was copied from an Apple discussion forum. There's nothing special
about using /SourceCache as the directory for the downloaded modules. I
did have some problems with cpan mirrors failing to download the needed
code modules via curl. In most cases you can get these via ftp.

See:

- <a href="http://www.cpan.org/SITES.html" class="external free"
  rel="nofollow">http://www.cpan.org/SITES.html</a>

</div>

<div class="printfooter">

Retrieved from
"<http://gmod.org/mediawiki/index.php?title=Fixing_Perl_on_OSX&oldid=8475>"

</div>

<div id="catlinks" class="catlinks">

<div id="mw-normal-catlinks" class="mw-normal-catlinks">

[Categories](Special:Categories "Special:Categories"):

- [Perl](Category:Perl "Category:Perl")
- [Mac OS X](Category:Mac_OS_X "Category:Mac OS X")

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
  href="http://gmod.org/mediawiki/index.php?title=Talk:Fixing_Perl_on_OSX&amp;action=edit&amp;redlink=1"
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


- <span id="t-smwbrowselink"><a href="Special:Browse/Fixing_Perl_on_OSX" rel="smw-browse">Browse
  properties</a></span>


</div>

</div>

</div>

</div>

<div id="footer" role="contentinfo">

- <span id="footer-info-lastmod">Last updated at 02:50 on 9 June
  2009.</span>
<!-- - <span id="footer-info-viewcount">11,746 page views.</span> -->
- <span id="footer-info-copyright">Content is available under
  <a href="http://www.gnu.org/licenses/fdl-1.3.html" class="external"
  rel="nofollow">a GNU Free Documentation License</a> unless otherwise
  noted.</span>

<!-- -->

- <span id="footer-places-about">[About
  GMOD](GMOD:About "GMOD:About")</span>

<!-- -->






</div>
