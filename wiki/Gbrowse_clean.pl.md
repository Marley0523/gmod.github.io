<div id="mw-page-base" class="noprint">

</div>

<div id="mw-head-base" class="noprint">

</div>

<div id="content" class="mw-body" role="main">

<span id="top"></span>

<div id="mw-js-message" style="display:none;">

</div>



# <span dir="auto">Gbrowse clean.pl</span>

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

------------------------------------------------------------------------

**NAME**

gbrowse_clean.pl - Clean up sessions and other temporary gbrowse2 files

  

------------------------------------------------------------------------

**SYNOPSIS**

From the command line:

    sudo -u www-data gbrowse_clean.pl

Replace "www-data" with the web server account name on your system.

To run automatically under cron, create a crontab file for the web
server user that contains a line like the following:

    # m h  dom mon dow   command
    5 0  *  *  * /usr/bin/gbrowse_clean.pl >>/var/log/gbrowse2/gbrowse_clean.log

  

------------------------------------------------------------------------

**OPTIONS**

    -verbose: Report actions verbosely, printing out each session, file and directory deleted.
    -help   : Print a brief help message and exits.
    -man    : Prints the manual page and exits.

  

------------------------------------------------------------------------

**DESCRIPTION**

GBrowse2 generates a number of temporary files during its operations.
These files include session data, data cache files, and temporary image
files, as well as user upload data from custom tracks.

This script expires these temporary files, releasing unneeded space. The
script honors the following options from the GBrowse.conf master
configuration file:

    Name                   Default Description
    ----                   ------- -----------
    expire session         1M      How long to keep session data
    expire cache           2h      How long to keep cache data
    expire uploads         6w      How long to keep user track data

Time intervals are indicated using a count and a unit:

    Suffix     Time Unit
    ------     ---------
     s         seconds
     m         minutes
     h         hours
     d         days
     w         weeks
     M         months
     y         years

**expire session** controls how long before user session data expires.
Once a session expires, the user's saved settings, such as his preferred
data source, track visibility settings, and custom track uploads are
purged. The expiration interval is measured since the last time the user
*accessed* his session, so simply loading a region in the browser
without changing settings is sufficient to prevent a session from
expiring.

**expire cache** controls how long before cached track data is purged
from the system. Caching for up to a few hours increases performance
because users frequently reload the same region. Caching for longer
periods increases the time between updating the database and tracks
displaying those changes.

**expire uploads** controls how long to keep user uploaded data for
custom tracks on disk. It makes sense to keep it on disk for as long or
longer than the session. Even if the user's session expires, he can
still get at the uploaded data if he bookmarked his session or shared
the uploaded track at any point.

This script should be run periodically, ideally under cron. Once per day
should be adequate for most uses, but heavily-used sites may wish to run
the script more frequently. It is important to run the script under the
same user account as the web server; otherwise the script will be unable
to delete the files created by the web server user during gbrowse
execution. **Do not run this script as root.**

  

------------------------------------------------------------------------

**AUTHOR**

Lincoln D. Stein \<lincoln.stein@gmail.com\> Copyright 2009 Ontario
Institute for Cancer Research

This script is available under either the GNU General Public License or
the Perl Artistic License version 2.0. See LICENSE in the GBrowse source
code distribution for details.

  

------------------------------------------------------------------------

**SEE ALSO**

[GBrowse 2.0 HOWTO](GBrowse_2.0_HOWTO "GBrowse 2.0 HOWTO")

</div>

<div class="printfooter">

Retrieved from
"<http://gmod.org/mediawiki/index.php?title=Gbrowse_clean.pl&oldid=10458>"

</div>

<div id="catlinks" class="catlinks">

<div id="mw-normal-catlinks" class="mw-normal-catlinks">

[Category](Special:Categories "Special:Categories"):

- [GBrowse 2](Category:GBrowse_2 "Category:GBrowse 2")

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

- <span id="ca-nstab-main"><a href="Gbrowse_clean.pl" accesskey="c"
  title="View the content page [c]">Page</a></span>
- <span id="ca-talk"><a
  href="http://gmod.org/mediawiki/index.php?title=Talk:Gbrowse_clean.pl&amp;action=edit&amp;redlink=1"
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


- <span id="t-smwbrowselink"><a href="Special:Browse/Gbrowse_clean.pl" rel="smw-browse">Browse
  properties</a></span>
- <span id="t-pdf">[Print as
  PDF](http://gmod.org/mediawiki/index.php?title=Special:PdfPrint&page=Gbrowse_clean.pl)</span>

</div>

</div>

</div>

</div>

<div id="footer" role="contentinfo">

- <span id="footer-info-lastmod">Last updated at 14:13 on 2 November
  2009.</span>
<!-- - <span id="footer-info-viewcount">18,818 page views.</span> -->
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


<div style="clear:both">

</div>

</div>
