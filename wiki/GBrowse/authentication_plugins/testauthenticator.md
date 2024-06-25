<div id="mw-page-base" class="noprint">

</div>

<div id="mw-head-base" class="noprint">

</div>

<div id="content" class="mw-body" role="main">

<span id="top"></span>

<div id="mw-js-message" style="display:none;">

</div>



# <span dir="auto">Gbrowse/authentication plugins/testauthenticator</span>

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

The TestAuthenticator plugin is used for testing the GBrowse
authentication system. The entire module's code looks like this:

<div class="mw-geshi mw-code mw-content-ltr" dir="ltr">

<div class="perl source-perl">

``` de1
 package Bio::Graphics::Browser2::Plugin::TestAuthenticator;
 use strict;
 use base 'Bio::Graphics::Browser2::Plugin::AuthPlugin';
 
 sub authenticate {
    my $self = shift;
    my ($name,$password) = $self->credentials;
    return unless $name eq 'lincoln' && $password eq 'foobar';
    return ($name,'Lincoln Stein');  # username, fullname
 }
 
 1;
```

</div>

</div>

The idea is very simple. The module inherits from
Bio::Graphics::Browser2::Plugin::AuthPlugin, a "template" module that
does the hard work. It then overrides the authenticate() method, which
does the actual matching of username and password. The call to
\$self-\>credentials() returns a username and password previously
entered into the login dialog box. We return false unless the username
is "lincoln" and the password is "foobar". Otherwise, we return a
two-element list consisting of the username and the user's full name.

Run **perldoc Bio::Graphics::Browser2::Plugin::AuthPlugin** for
information on how to write more sophisticated authentication plugins.

</div>

<div class="printfooter">

Retrieved from
"<http://gmod.org/mediawiki/index.php?title=Gbrowse/authentication_plugins/testauthenticator&oldid=22106>"

</div>

<div id="catlinks" class="catlinks">

<div id="mw-normal-catlinks" class="mw-normal-catlinks">

[Categories](../../Special:Categories "Special:Categories"):

- [GBrowse](../../Category:GBrowse "Category:GBrowse")
- [GBrowse
  Plugins](../../Category:GBrowse_Plugins "Category:GBrowse Plugins")

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

- <span id="ca-nstab-main"><a href="testauthenticator" accesskey="c"
  title="View the content page [c]">Page</a></span>
- <span id="ca-talk"><a
  href="http://gmod.org/mediawiki/index.php?title=Talk:Gbrowse/authentication_plugins/testauthenticator&amp;action=edit&amp;redlink=1"
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

<a href="../../Main_Page"
style="background-image: url(../../../images/GMOD-cogs.png);"
title="Visit the main page"></a>

</div>

<div id="p-Navigation" class="portal" role="navigation"
aria-labelledby="p-Navigation-label">

### Navigation

<div class="body">

- <span id="n-GMOD-Home">[GMOD Home](../../Main_Page)</span>
- <span id="n-Software">[Software](../../GMOD_Components)</span>
- <span id="n-Categories-.2F-Tags">[Categories /
  Tags](../../Categories)</span>
- <span id="n-View-all-pages">[View all
  pages](../../Special:AllPages)</span>

</div>

</div>

<div id="p-Documentation" class="portal" role="navigation"
aria-labelledby="p-Documentation-label">

### Documentation

<div class="body">

- <span id="n-Overview">[Overview](../../Overview)</span>
- <span id="n-FAQs">[FAQs](../../Category:FAQ)</span>
- <span id="n-HOWTOs">[HOWTOs](../../Category:HOWTO)</span>
- <span id="n-Glossary">[Glossary](../../Glossary)</span>

</div>

</div>

<div id="p-Community" class="portal" role="navigation"
aria-labelledby="p-Community-label">

### Community

<div class="body">

- <span id="n-GMOD-News">[GMOD News](../../GMOD_News)</span>
- <span id="n-Training-.2F-Outreach">[Training /
  Outreach](../../Training_and_Outreach)</span>
- <span id="n-Support">[Support](../../Support)</span>
- <span id="n-GMOD-Promotion">[GMOD
  Promotion](../../GMOD_Promotion)</span>
- <span id="n-Meetings">[Meetings](../../Meetings)</span>
- <span id="n-Calendar">[Calendar](../../Calendar)</span>

</div>

</div>

<div id="p-tb" class="portal" role="navigation"
aria-labelledby="p-tb-label">

### Tools

<div class="body">


- <span id="t-smwbrowselink"><a
  href="../../Special:Browse/Gbrowse-2Fauthentication_plugins-2Ftestauthenticator"
  rel="smw-browse">Browse properties</a></span>


</div>

</div>

</div>

</div>

<div id="footer" role="contentinfo">

- <span id="footer-info-lastmod">Last updated at 20:06 on 8 October
  2012.</span>
<!-- - <span id="footer-info-viewcount">16,383 page views.</span> -->
- <span id="footer-info-copyright">Content is available under
  <a href="http://www.gnu.org/licenses/fdl-1.3.html" class="external"
  rel="nofollow">a GNU Free Documentation License</a> unless otherwise
  noted.</span>

<!-- -->

- <span id="footer-places-about">[About
  GMOD](../../GMOD:About "GMOD:About")</span>

<!-- -->






</div>
