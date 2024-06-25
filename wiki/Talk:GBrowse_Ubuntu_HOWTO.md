<div id="mw-page-base" class="noprint">

</div>

<div id="mw-head-base" class="noprint">

</div>

<div id="content" class="mw-body" role="main">

<span id="top"></span>

<div id="mw-js-message" style="display:none;">

</div>



# <span dir="auto">Talk:GBrowse Ubuntu HOWTO</span>

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

I don't want to add this to the official doc, but I think somebody who
understands the pre-req's better could cull my list of packages down to
the correct set.

From the instructions on the page, I didn't have success. I went on to
use this set of packages (from <a
href="http://www.bioperl.org/wiki/Installing_BioPerl_on_Ubuntu_Server"
class="external free"
rel="nofollow">http://www.bioperl.org/wiki/Installing_BioPerl_on_Ubuntu_Server</a>):

    lynx unzip zip ncftp gcc libc6-dev make mysql-server apache2
    perl libgd-gd2-perl libcgi-session-perl libclass-base-perl

and threw this package in for good measure:

    libmodule-build-perl

...and it worked!

I'm tempted to add everything here (other than lynx) to the package list
on the page, but I suspect it might include more packages than are
really necessary.

  

------------------------------------------------------------------------

When I installed GBrowse using the script gbrowse_netinstall.pl, I got
the error message as follows;

    Force getting a BioPerl nightly build; the most recent release is too old

    *** Installing BioPerl ***
    Downloading bioperl-live...
    Failed to get nightly bioperl-live file: 

The reason of the error is the typo in a line of the
gbrowse_netinstall.pl script

               my $url = BIOPERL_LIVE_URL."/$filename";

must be changed to

               my $url = BIOPERL_LIVE_URL."$filename";

Then, the script can download the nightly bioperl-live file correctly
and install it.

--<a
href="http://gmod.org/mediawiki/index.php?title=User:Mgenome&amp;action=edit&amp;redlink=1"
class="new" title="User:Mgenome (page does not exist)">Mgenome</a>
09:56, 18 March 2009 (UTC)

</div>

<div class="printfooter">

Retrieved from
"<http://gmod.org/mediawiki/index.php?title=Talk:GBrowse_Ubuntu_HOWTO&oldid=8032>"

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

- <span id="ca-nstab-main"><a href="GBrowse_Ubuntu_HOWTO" accesskey="c"
  title="View the content page [c]">Page</a></span>
- <span id="ca-talk"><a href="Talk:GBrowse_Ubuntu_HOWTO" accesskey="t"
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

- <span id="footer-info-lastmod">Last updated at 09:56 on 18 March
  2009.</span>
<!-- - <span id="footer-info-viewcount">7,830 page views.</span> -->
- <span id="footer-info-copyright">Content is available under
  <a href="http://www.gnu.org/licenses/fdl-1.3.html" class="external"
  rel="nofollow">a GNU Free Documentation License</a> unless otherwise
  noted.</span>

<!-- -->

- <span id="footer-places-about">[About
  GMOD](GMOD:About "GMOD:About")</span>

<!-- -->






</div>
