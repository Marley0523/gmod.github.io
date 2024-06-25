<div id="mw-page-base" class="noprint">

</div>

<div id="mw-head-base" class="noprint">

</div>

<div id="content" class="mw-body" role="main">

<span id="top"></span>

<div id="mw-js-message" style="display:none;">

</div>



# <span dir="auto">GMOD in a Box/Updating</span>

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

To update from one version of GMOD in a Box to another, follow these
steps:

1\. For the old version of GMOD in a Box (GiaB), identify file for the
data partition. For GiaB 2.04, that file will probably be called "GMOD
in a Box 2.04-disk2.vmdk".

2\. Make a copy of this file and rename it if you like. Move it into the
new GiaB's folder.

3\. Start VirtualBox; if you haven't done so already, import the new
version of GiaB.

4\. Open the settings for the instance. Choose the Storage tab.

5\. Right click on the "Controler: SATA", select "Add Hard Disk", click
the "Choose existing disk" button, add the new disk file and click OK to
save the settings.

5a. If you would like to resize the data disk, see the [GMOD in a
Box/Resizing a VirtualBox
Disk](Resizing_a_VirtualBox_Disk "GMOD in a Box/Resizing a VirtualBox Disk")

6\. Start the instance and log in.

7\. In the guest (GMOD in a Box) machine, type `sudo fdisk -l |grep sd`
to identify the device name of the new disk. If you aren't sure which
one it is, you can type `df -h` to see what devices are already mounted,
and the new one is the one not on that list. /dev/sda is the root
partition; the new partition will be something like /dev/sdb1 or
/dev/sdc1.

8\. Shut down any services that rely on the data in the data partition:

    sudo /etc/init.d/apache2 stop
    sudo /etc/init.d/postgresql stop
    sudo /etc/init.d/tomcat7 stop

9\. Unmount the old data partion and mount the new one (assuming the
device name is /dev/sdc):

    sudo umount /data
    sudo mount -v -t ext4 /dev/sdc1 /data

Verify that the drive was correctly mounted by doing "ls /data".

9\. Run the update script: sudo
~/GMODintheCloud/gmod_update_data_partiion.pl. This will add any files
that the new version of GiaB requires.

10\. Restart the services stopped above:

    sudo /etc/init.d/apache2 start
    sudo /etc/init.d/postgresql start
    sudo /etc/init.d/tomcat7 start

11\. After verifying that the services (GBrowse, JBrowse, WebApollo and
Tripal) are working correctly, edit /etc/fstab to make sure the new
partition mounts at the /data mount point when the machine reboots. Do
this by changing the line that has the old device name (like /dev/sdb)
to the new device name (like /dev/sdc).

12\. To verify that everything is working correctly, reboot the
instance.

</div>

<div class="printfooter">

Retrieved from
"<http://gmod.org/mediawiki/index.php?title=GMOD_in_a_Box/Updating&oldid=24926>"

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

- <span id="ca-nstab-main"><a href="Updating" accesskey="c"
  title="View the content page [c]">Page</a></span>
- <span id="ca-talk"><a
  href="http://gmod.org/mediawiki/index.php?title=Talk:GMOD_in_a_Box/Updating&amp;action=edit&amp;redlink=1"
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

- <span id="t-whatlinkshere"><a href="../Special:WhatLinksHere/GMOD_in_a_Box/Updating" accesskey="j"
  title="A list of all wiki pages that link here [j]">What links here</a></span>
- <span id="t-recentchangeslinked"><a href="../Special:RecentChangesLinked/GMOD_in_a_Box/Updating"
  accesskey="k"
  title="Recent changes in pages linked from this page [k]">Related
  changes</a></span>
- <span id="t-specialpages"><a href="../Special:SpecialPages" accesskey="q"
  title="A list of all special pages [q]">Special pages</a></span>
- <span id="t-print"><a
  href="http://gmod.org/mediawiki/index.php?title=GMOD_in_a_Box/Updating&amp;printable=yes"
  rel="alternate" accesskey="p"
  title="Printable version of this page [p]">Printable version</a></span>
- <span id="t-permalink">[Permanent
  link](http://gmod.org/mediawiki/index.php?title=GMOD_in_a_Box/Updating&oldid=24926 "Permanent link to this revision of the page")</span>
- <span id="t-info">[Page
  information](http://gmod.org/mediawiki/index.php?title=GMOD_in_a_Box/Updating&action=info)</span>
- <span id="t-smwbrowselink"><a href="../Special:Browse/GMOD_in_a_Box-2FUpdating"
  rel="smw-browse">Browse properties</a></span>
- <span id="t-pdf">[Print as
  PDF](http://gmod.org/mediawiki/index.php?title=Special:PdfPrint&page=GMOD_in_a_Box/Updating)</span>

</div>

</div>

</div>

</div>

<div id="footer" role="contentinfo">

- <span id="footer-info-lastmod">Last updated at 03:26 on 12 December
  2013.</span>
- <span id="footer-info-viewcount">10,900 page views.</span>
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
