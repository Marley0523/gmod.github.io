<div id="mw-page-base" class="noprint">

</div>

<div id="mw-head-base" class="noprint">

</div>

<div id="content" class="mw-body" role="main">

<span id="top"></span>

<div id="mw-js-message" style="display:none;">

</div>



# <span dir="auto">Modifying the mediawiki footer</span>

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

To modify the footer in MediaWiki pages, I had to edit
skins/MonoBook.php. I added this line:

    <p><table><tr><td><img src="/w/images/e/ef/Nihlogo.gif" alt="National Institutes of Health"></td><td>GMOD is supported by a specific cooperative agreement from the USDA Agricultural Research Service, and by NIH grants co-funded from the National Human Genome Research Institute and the National Institute of General Medical Sciences.</td><td><img src="/w/images/7/7e/ARSlogo.jpg" alt="USDA Agricultural Research Service"></td></tr></table><hr /></p>

Here is what the surrounding code looked like:

                    </div><!-- end of the left (by default at least) column -->
                            <div class="visualClear"></div>
                            <div id="footer">
    <?php
                    if($this->data['poweredbyico']) { ?>
                                    <div id="f-poweredbyico"><?php $this->html('poweredbyico') ?></div>
    <?php   }
                    if($this->data['copyrightico']) { ?>
                                    <div id="f-copyrightico"><?php $this->html('copyrightico') ?></div>
    <?php   }

                    // Generate additional footer links
    ?>
    <!--#######INSERT FOOTER HERE###########-->

                            <ul id="f-list">
    <?php
                    $footerlinks = array(
                            'lastmod', 'viewcount', 'numberofwatchingusers', 'credits', 'copyright',
                            'privacy', 'about', 'disclaimer', 'tagline',
                    );
                    foreach( $footerlinks as $aLink ) {
                            if( isset( $this->data[$aLink] ) && $this->data[$aLink] ) {
    ?>                              <li id="<?php echo$aLink?>"><?php $this->html($aLink) ?></li>

</div>

<div class="printfooter">

Retrieved from
"<http://gmod.org/mediawiki/index.php?title=Modifying_the_mediawiki_footer&oldid=6034>"

</div>

<div id="catlinks" class="catlinks">

<div id="mw-normal-catlinks" class="mw-normal-catlinks">

[Category](Special:Categories "Special:Categories"):

- [Wiki Tools](Category%3AWiki_Tools "Category%3AWiki Tools")

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
  href="http://gmod.org/mediawiki/index.php?title=Talk:Modifying_the_mediawiki_footer&amp;action=edit&amp;redlink=1"
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
- <span id="n-FAQs">[FAQs](Category%3AFAQ)</span>
- <span id="n-HOWTOs">[HOWTOs](Category%3AHOWTO)</span>
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


- <span id="t-smwbrowselink"><a href="Special%3ABrowse/Modifying_the_mediawiki_footer"
  rel="smw-browse">Browse properties</a></span>


</div>

</div>

</div>

</div>

<div id="footer" role="contentinfo">

- <span id="footer-info-lastmod">Last updated at 18:22 on 27 August
  2008.</span>
<!-- - <span id="footer-info-viewcount">17,239 page views.</span> -->
- <span id="footer-info-copyright">Content is available under
  <a href="http://www.gnu.org/licenses/fdl-1.3.html" class="external"
  rel="nofollow">a GNU Free Documentation License</a> unless otherwise
  noted.</span>

<!-- -->

- <span id="footer-places-about">[About
  GMOD](GMOD:About "GMOD:About")</span>

<!-- -->






</div>
