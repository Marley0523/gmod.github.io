<div id="mw-page-base" class="noprint">

</div>

<div id="mw-head-base" class="noprint">

</div>

<div id="content" class="mw-body" role="main">

<span id="top"></span>

<div id="mw-js-message" style="display:none;">

</div>



# <span dir="auto">Installing GBrowse2 in your Home Directory</span>

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

> **This page or section needs to be edited.**
> <span class="small">Please help by <span class="plainlinks"><a
> href="http://gmod.org/mediawiki/index.php?title=Installing_GBrowse2_in_your_Home_Directory&amp;action=edit"
> class="external text" rel="nofollow">editing this page</a></span> to
> add your revisions or additions.</span>

OK. This isn't as hard as most people seem to blather on about. The key
is *understanding*. If you don't want to grok Perl, you should be
talking to your sysadmin right now. Go on... click back right now and go
get help!

  
First, install 'local::lib' <a
href="http://search.cpan.org/~mstrout/local-lib-1.006000/lib/local/lib.pm"
class="external autonumber" rel="nofollow">[1]</a> (assuming you haven't
done that already). It is important that you understand this step in all
it's Perlish detail, otherwise you're not going to understand anything
that follows. We're going to be relying heavily on the 'cpan' installer
(as a non-root user). The magical local::lib is the Perl module designed
to let us do that! Before installing local::lib, You may want to scratch
any ~/.cpan or ~/perl5 stuff you have half-heartedly installed to date.
The magical local::lib is going to help you do that right.

Once you have local::lib correctly installed...

*I believe there must be a trick to configuring cpan at this point that
is left out of this narrative. It is probably in the lib::local docs.*
[Scott](User:Scott "User:Scott") 18:47, 3 June 2011 (UTC)

Test that cpan is working for you as a non-root user (install a random
module or two).

  
Second, install BioPerl via cpan
<a href="http://bioperl.org" class="external autonumber"
rel="nofollow">[2]</a>. This can be painful. The best trick is to
install all the dependencies first, then install BioPerl.

  
Third, follow the GBrowse install instructions (using cpan
again)<a href="GBrowse_2.0_HOWTO" class="external autonumber"
rel="nofollow">[3]</a>. It should be easy to grab any prerequisites
(using cpan).

  
Finally, the trick is to specify 'user' locations for all the
directories that GBrowse expects: Here are some notes I made to help me
keep track of that:

  

    conf for example /etc/gbrowse2
    /home/dan/httpd/conf/gbrowse2

    htdocs for example /var/www/html/gbrowse2
    /home/dan/httpd/htdocs/gbrowse2

    tmp for example /var/tmp/gbrowse2
    /home/dan/httpd/tmp

    databases for example /var/www/html/gbrowse2/databases
    /home/dan/httpd/htdocs/gbrowse2/databases

    cgibin for example /var/www/cgi-bin/gb2
    /home/dan/httpd/cgi-bin/gbrowse2

    modules for example /etc/httpd/modules
    /etc/httpd/modules # /homes/dan/httpd/modules

    wwwuser for example www-data
    dan

  

I forgot to mention, installing Apache is beyond the scope of this
HOWTO.

</div>

<div class="printfooter">

Retrieved from
"<http://gmod.org/mediawiki/index.php?title=Installing_GBrowse2_in_your_Home_Directory&oldid=17909>"

</div>

<div id="catlinks" class="catlinks">

<div id="mw-normal-catlinks" class="mw-normal-catlinks">

[Categories](Special:Categories "Special:Categories"):

- [Needs Editing](Category:Needs_Editing "Category:Needs Editing")
- [BioPerl](Category:BioPerl "Category:BioPerl")
- [HOWTO](Category:HOWTO "Category:HOWTO")
- [GBrowse 2](Category:GBrowse_2 "Category:GBrowse 2")
- [Help](Category:Help "Category:Help")
- [Pages with problems or
  questions](Category:Pages_with_problems_or_questions "Category:Pages with problems or questions")
- [Perl](Category:Perl "Category:Perl")
- [Tutorials](Category:Tutorials "Category:Tutorials")
- [User
  Experiences](Category:User_Experiences "Category:User Experiences")

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
  href="http://gmod.org/mediawiki/index.php?title=Talk:Installing_GBrowse2_in_your_Home_Directory&amp;action=edit&amp;redlink=1"
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


- <span id="t-smwbrowselink"><a href="Special:Browse/Installing_GBrowse2_in_your_Home_Directory"
  rel="smw-browse">Browse properties</a></span>


</div>

</div>

</div>

</div>

<div id="footer" role="contentinfo">

- <span id="footer-info-lastmod">Last updated at 18:47 on 3 June
  2011.</span>
<!-- - <span id="footer-info-viewcount">20,776 page views.</span> -->
- <span id="footer-info-copyright">Content is available under
  <a href="http://www.gnu.org/licenses/fdl-1.3.html" class="external"
  rel="nofollow">a GNU Free Documentation License</a> unless otherwise
  noted.</span>

<!-- -->

- <span id="footer-places-about">[About
  GMOD](GMOD:About "GMOD:About")</span>

<!-- -->






</div>
