<div id="mw-page-base" class="noprint">

</div>

<div id="mw-head-base" class="noprint">

</div>

<div id="content" class="mw-body" role="main">

<span id="top"></span>

<div id="mw-js-message" style="display:none;">

</div>



# <span dir="auto">Template:AWS Volume Off</span>

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

### <span id="Volume_Deletion" class="mw-headline">Volume Deletion</span>

Every GMOD in the Cloud instance uses two volumes (disks), one for
applications and the other for data.

<a href="File:16.55.png" class="image"
title="Volumes with a running machine"><img
src="../mediawiki/images/thumb/b/ba/16.55.png/750px-16.55.png"
srcset="../mediawiki/images/thumb/b/ba/16.55.png/1125px-16.55.png 1.5x, ../mediawiki/images/b/ba/16.55.png 2x"
width="750" height="409" alt="Volumes with a running machine" /></a>

  
As these screenshot suggest, only the **Root** volume is deleted when
you shut down your AMI.

<a href="File:12.40.png" class="image" title="Volume setup"><img
src="../mediawiki/images/thumb/8/86/12.40.png/750px-12.40.png"
srcset="../mediawiki/images/8/86/12.40.png 1.5x, ../mediawiki/images/8/86/12.40.png 2x"
width="750" height="520" alt="Volume setup" /></a>

  
Amazon charges for data storage, so unless you need to keep the data on
the Amazon servers, it is best to transfer the data elsewhere and delete
the volume.

<a href="File:16.58.56.png" class="image"
title="Terminate dialog box"><img
src="../mediawiki/images/thumb/7/73/16.58.56.png/750px-16.58.56.png"
srcset="../mediawiki/images/thumb/7/73/16.58.56.png/1125px-16.58.56.png 1.5x, ../mediawiki/images/7/73/16.58.56.png 2x"
width="750" height="409" alt="Terminate dialog box" /></a>

  
Terminate your instance by choosing **Terminate** from **Instance
Actions** or by right-/command-clicking on the instance name and
selecting **Terminate** from the menu.

<a href="File:16.59.17.png" class="image" title="Termination..."><img
src="../mediawiki/images/thumb/7/76/16.59.17.png/750px-16.59.17.png"
srcset="../mediawiki/images/thumb/7/76/16.59.17.png/1125px-16.59.17.png 1.5x, ../mediawiki/images/7/76/16.59.17.png 2x"
width="750" height="409" alt="Termination..." /></a>

  
When the instance has terminated, click on **Volumes**. The Root volume
has been deleted but EBS volume remains. Its status is available as it
is no longer in use by the instance.

<a href="File:17.00.13.png" class="image" title="Volume remaining"><img
src="../mediawiki/images/thumb/5/5a/17.00.13.png/750px-17.00.13.png"
srcset="../mediawiki/images/thumb/5/5a/17.00.13.png/1125px-17.00.13.png 1.5x, ../mediawiki/images/5/5a/17.00.13.png 2x"
width="750" height="409" alt="Volume remaining" /></a>

  
To delete the volume, select it and either choose **Delete volume** or
right-/command-click on the volume name and select **Delete**.

<a href="File:17.00.22.png" class="image" title="Deletion"><img
src="../mediawiki/images/thumb/c/cb/17.00.22.png/750px-17.00.22.png"
srcset="../mediawiki/images/thumb/c/cb/17.00.22.png/1125px-17.00.22.png 1.5x, ../mediawiki/images/c/cb/17.00.22.png 2x"
width="750" height="409" alt="Deletion" /></a>

  
All done!

<a href="File:17.04.00.png" class="image" title="Tabula rasa"><img
src="../mediawiki/images/thumb/1/18/17.04.00.png/750px-17.04.00.png"
srcset="../mediawiki/images/thumb/1/18/17.04.00.png/1125px-17.04.00.png 1.5x, ../mediawiki/images/1/18/17.04.00.png 2x"
width="750" height="409" alt="Tabula rasa" /></a>

</div>

<div class="printfooter">

Retrieved from
"<http://gmod.org/mediawiki/index.php?title=Template:AWS_Volume_Off&oldid=23870>"

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

- <span id="ca-nstab-template"><a href="Template:AWS_Volume_Off" accesskey="c"
  title="View the template [c]">Template</a></span>
- <span id="ca-talk"><a
  href="http://gmod.org/mediawiki/index.php?title=Template_talk:AWS_Volume_Off&amp;action=edit&amp;redlink=1"
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




</div>

</div>

</div>

</div>

<div id="footer" role="contentinfo">

- <span id="footer-info-lastmod">Last updated at 16:05 on 17 July
  2013.</span>
<!-- - <span id="footer-info-viewcount">4,098 page views.</span> -->
- <span id="footer-info-copyright">Content is available under
  <a href="http://www.gnu.org/licenses/fdl-1.3.html" class="external"
  rel="nofollow">a GNU Free Documentation License</a> unless otherwise
  noted.</span>

<!-- -->

- <span id="footer-places-about">[About
  GMOD](GMOD:About "GMOD:About")</span>

<!-- -->






</div>
