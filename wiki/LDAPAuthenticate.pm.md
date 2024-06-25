<div id="mw-page-base" class="noprint">

</div>

<div id="mw-head-base" class="noprint">

</div>

<div id="content" class="mw-body" role="main">

<span id="top"></span>

<div id="mw-js-message" style="display:none;">

</div>



# <span dir="auto">LDAPAuthenticate.pm</span>

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
  <span class="toctext">NAME</span>](#NAME)
  - [<span class="tocnumber">1.1</span>
    <span class="toctext">SYNOPSIS</span>](#SYNOPSIS)
  - [<span class="tocnumber">1.2</span>
    <span class="toctext">DESCRIPTION</span>](#DESCRIPTION)
  - [<span class="tocnumber">1.3</span>
    <span class="toctext">CONFIGURATION</span>](#CONFIGURATION)
  - [<span class="tocnumber">1.4</span> <span class="toctext">SEE
    ALSO</span>](#SEE_ALSO)
  - [<span class="tocnumber">1.5</span>
    <span class="toctext">AUTHOR</span>](#AUTHOR)

</div>

# <span id="NAME" class="mw-headline">NAME</span>

Bio::Graphics::Browser2::Plugin::LDAPAuthenticate - Authenticate user
against an LDAP server

## <span id="SYNOPSIS" class="mw-headline">SYNOPSIS</span>

In the GBrowse.conf configuration file:

    authentication plugin = LDAPAuthenticate

    [LDAPAuthenticate:plugin]
    login hint = your foobar corp account
    ldap server = ldap.foobar.com
    people base = ou=People,dc=foobar,dc=ny,dc=usa
    groups base = ou=Groups,dc=foobar,dc=ny,dc=usa
    # the following only needed if the LDAP server forbids anonymous (unbound) searches:
    bind dn    = uid=root,ou=People,dc=foobar,dc=ny,dc=usa
    bind pass  = xyzzy

## <span id="DESCRIPTION" class="mw-headline">DESCRIPTION</span>

This plugin uses hard-coded values to authenticate users against an LDAP
database. Users can log in using their Unix login names and passwords
(LDAP "posixAccount"). Groups are authorized against the posixGroup
memberUID fields.

## <span id="CONFIGURATION" class="mw-headline">CONFIGURATION</span>

For this plugin to work, you must configure an
\[LDAPAuthenticate:plugin\] section in the main GBrowse.conf file. It
will look like this:

    [LDAPAuthenticate:plugin]
    login hint = your foobar corp account
    ldap server = ldap.foobar.com
    people base = ou=People,dc=foobar,dc=ny,dc=usa
    groups base = ou=Groups,dc=foobar,dc=ny,dc=usa

**login hint** (optional) is displayed to the user so that he knows what
account credentials he or she is being asked for.

**ldap server** (required) is the address of the LDAP server you wish to
contact. If the server is running on a non-standard, port, you can
indicate it as "ldap.foobar.com:1118".

**people base** (required) is the search base for the People records
where the provided user id will be found.

**groups base** (required) is the search base for the Group records
where the user's group membership can be determined.

In addition, if your LDAP server requires a username and password to
bind to B\<before\> permitting searches, then you will need to provide:

**bind dn** (optional) the distinguished name of the LDAP user to bind
to. This is often called the LDAP "root" user.

**bind pass** (optional) the password of the LDAP user to bind to.

Note that providing this bind user's account name and password in a file
that is readable by the web server can be considered a security risk.
Consider allowing anonymous searches on the LDAP server, or else create
an unprivileged user account for the initial binding step.

## <span id="SEE_ALSO" class="mw-headline">SEE ALSO</span>

Bio::Graphics::Browser2::Plugin

## <span id="AUTHOR" class="mw-headline">AUTHOR</span>

Lincoln Steinlincoln.stein@oicr.on.ca

Copyright (c) 2011 Ontario Institute for Cancer Research

This library is free software distributed under the Perl Artistic
License v2; you can redistribute it and/or modify it under the same
terms as Perl itself.

</div>

<div class="printfooter">

Retrieved from
"<http://gmod.org/mediawiki/index.php?title=LDAPAuthenticate.pm&oldid=22565>"

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

- <span id="ca-nstab-main"><a href="LDAPAuthenticate.pm" accesskey="c"
  title="View the content page [c]">Page</a></span>
- <span id="ca-talk"><a
  href="http://gmod.org/mediawiki/index.php?title=Talk:LDAPAuthenticate.pm&amp;action=edit&amp;redlink=1"
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


- <span id="t-smwbrowselink"><a href="Special:Browse/LDAPAuthenticate.pm" rel="smw-browse">Browse
  properties</a></span>
- <span id="t-pdf">[Print as
  PDF](http://gmod.org/mediawiki/index.php?title=Special:PdfPrint&page=LDAPAuthenticate.pm)</span>

</div>

</div>

</div>

</div>

<div id="footer" role="contentinfo">

- <span id="footer-info-lastmod">Last updated at 17:05 on 4 December
  2012.</span>
- <span id="footer-info-viewcount">7,658 page views.</span>
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
