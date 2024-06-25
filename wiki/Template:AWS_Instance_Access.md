<div id="mw-page-base" class="noprint">

</div>

<div id="mw-head-base" class="noprint">

</div>

<div id="content" class="mw-body" role="main">

<span id="top"></span>

<div id="mw-js-message" style="display:none;">

</div>



# <span dir="auto">Template:AWS Instance Access</span>

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

### <span id="Instance_Access" class="mw-headline">Instance Access</span>

We can now test out our instance. Clicking on **Instances** shows us the
list of all the instances we have running.

<a href="File:Screen_shot_2012-08-25_at_11.40.52.png" class="image"
title="Instances window"><img
src="../mediawiki/images/thumb/2/25/Screen_shot_2012-08-25_at_11.40.52.png/750px-Screen_shot_2012-08-25_at_11.40.52.png"
srcset="../mediawiki/images/thumb/2/25/Screen_shot_2012-08-25_at_11.40.52.png/1125px-Screen_shot_2012-08-25_at_11.40.52.png 1.5x, ../mediawiki/images/2/25/Screen_shot_2012-08-25_at_11.40.52.png 2x"
width="750" height="482" alt="Instances window" /></a>

  
Go to the instance and right-click to bring up a contextual menu. Choose
**Connect**.

<a href="File:Screen_shot_2012-08-25_at_11.41.56.png" class="image"
title="Contextual menu for the instance"><img
src="../mediawiki/images/thumb/f/f5/Screen_shot_2012-08-25_at_11.41.56.png/750px-Screen_shot_2012-08-25_at_11.41.56.png"
srcset="../mediawiki/images/thumb/f/f5/Screen_shot_2012-08-25_at_11.41.56.png/1125px-Screen_shot_2012-08-25_at_11.41.56.png 1.5x, ../mediawiki/images/f/f5/Screen_shot_2012-08-25_at_11.41.56.png 2x"
width="750" height="482" alt="Contextual menu for the instance" /></a>

  
We can test the HTTP connection using the information from the dialogue
box that comes up. Copy the public DNS address, found under the open
heading **Connect from your browser using the Java SSH Client (Java
Required)**.

<a href="File:Screen_shot_2012-08-25_at_11.42.44.png" class="image"
title="Getting the DNS address"><img
src="../mediawiki/images/thumb/0/02/Screen_shot_2012-08-25_at_11.42.44.png/750px-Screen_shot_2012-08-25_at_11.42.44.png"
srcset="../mediawiki/images/thumb/0/02/Screen_shot_2012-08-25_at_11.42.44.png/1125px-Screen_shot_2012-08-25_at_11.42.44.png 1.5x, ../mediawiki/images/0/02/Screen_shot_2012-08-25_at_11.42.44.png 2x"
width="750" height="482" alt="Getting the DNS address" /></a>

  
Open that address in a new browser window. If everything has gone
correctly, you should see the following screen:

<a href="File:Screen_shot_2012-08-25_at_11.43.52.png" class="image"
title="GMOD in the Cloud... it worked!!"><img
src="../mediawiki/images/thumb/1/1f/Screen_shot_2012-08-25_at_11.43.52.png/750px-Screen_shot_2012-08-25_at_11.43.52.png"
srcset="../mediawiki/images/thumb/1/1f/Screen_shot_2012-08-25_at_11.43.52.png/1125px-Screen_shot_2012-08-25_at_11.43.52.png 1.5x, ../mediawiki/images/1/1f/Screen_shot_2012-08-25_at_11.43.52.png 2x"
width="750" height="482" alt="GMOD in the Cloud... it worked!!" /></a>

  
Now let's check the SSH connection. You can do this through your browser
using the built-in Java client. You will need to change the user name to
**ubuntu** and set the private key path to the location where you saved
the private key that was generated earlier. Click **Launch SSH Client**
to get connected.

<a href="File:Screen_shot_2012-08-25_at_11.50.53.png" class="image"
title="Browser-based SSH"><img
src="../mediawiki/images/thumb/c/ce/Screen_shot_2012-08-25_at_11.50.53.png/750px-Screen_shot_2012-08-25_at_11.50.53.png"
srcset="../mediawiki/images/thumb/c/ce/Screen_shot_2012-08-25_at_11.50.53.png/1125px-Screen_shot_2012-08-25_at_11.50.53.png 1.5x, ../mediawiki/images/c/ce/Screen_shot_2012-08-25_at_11.50.53.png 2x"
width="750" height="482" alt="Browser-based SSH" /></a>

  
Most bioinformaticists worth their salt prefer a nice command line
option, so click on **Connect with a standalone SSH client** to view the
connection information. The first task is to change the file access
permissions on the downloaded private key file.

<a href="File:Screen_shot_2012-08-25_at_11.57.05.png" class="image"
title="Changing key file permissions"><img
src="../mediawiki/images/thumb/c/cf/Screen_shot_2012-08-25_at_11.57.05.png/750px-Screen_shot_2012-08-25_at_11.57.05.png"
srcset="../mediawiki/images/thumb/c/cf/Screen_shot_2012-08-25_at_11.57.05.png/1125px-Screen_shot_2012-08-25_at_11.57.05.png 1.5x, ../mediawiki/images/c/cf/Screen_shot_2012-08-25_at_11.57.05.png 2x"
width="750" height="482" alt="Changing key file permissions" /></a>

  
As with the Java browser-based SSH client, you'll need to change the
user name from **root** to **ubuntu**. Copy the command given,
substituting in the correct path to your private key file and the user
name **ubuntu**.

<a href="File:Screen_shot_2012-08-25_at_11.57.18.png" class="image"
title="Command line command"><img
src="../mediawiki/images/thumb/e/e9/Screen_shot_2012-08-25_at_11.57.18.png/750px-Screen_shot_2012-08-25_at_11.57.18.png"
srcset="../mediawiki/images/thumb/e/e9/Screen_shot_2012-08-25_at_11.57.18.png/1125px-Screen_shot_2012-08-25_at_11.57.18.png 1.5x, ../mediawiki/images/e/e9/Screen_shot_2012-08-25_at_11.57.18.png 2x"
width="750" height="482" alt="Command line command" /></a>

  
If all goes well, you should log in to the server and get a welcome
message:

<a href="File:Screen_shot_2012-08-25_at_11.48.56.png" class="image"
title="Logged in!"><img
src="../mediawiki/images/thumb/0/07/Screen_shot_2012-08-25_at_11.48.56.png/750px-Screen_shot_2012-08-25_at_11.48.56.png"
srcset="../mediawiki/images/thumb/0/07/Screen_shot_2012-08-25_at_11.48.56.png/1125px-Screen_shot_2012-08-25_at_11.48.56.png 1.5x, ../mediawiki/images/0/07/Screen_shot_2012-08-25_at_11.48.56.png 2x"
width="750" height="482" alt="Logged in!" /></a>

</div>

<div class="printfooter">

Retrieved from
"<http://gmod.org/mediawiki/index.php?title=Template:AWS_Instance_Access&oldid=21697>"

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

- <span id="ca-nstab-template"><a href="Template:AWS_Instance_Access" accesskey="c"
  title="View the template [c]">Template</a></span>
- <span id="ca-talk"><a
  href="http://gmod.org/mediawiki/index.php?title=Template_talk:AWS_Instance_Access&amp;action=edit&amp;redlink=1"
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


- <span id="t-pdf">[Print as
  PDF](http://gmod.org/mediawiki/index.php?title=Special:PdfPrint&page=Template:AWS_Instance_Access)</span>

</div>

</div>

</div>

</div>

<div id="footer" role="contentinfo">

- <span id="footer-info-lastmod">Last updated at 22:52 on 12 September
  2012.</span>
<!-- - <span id="footer-info-viewcount">3,064 page views.</span> -->
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
