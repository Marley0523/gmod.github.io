<div id="mw-page-base" class="noprint">

</div>

<div id="mw-head-base" class="noprint">

</div>

<div id="content" class="mw-body" role="main">

<span id="top"></span>

<div id="mw-js-message" style="display:none;">

</div>



# <span dir="auto">Installing Chado on Ubuntu HOWTO</span>

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
> href="http://gmod.org/mediawiki/index.php?title=Installing_Chado_on_Ubuntu_HOWTO&amp;action=edit"
> class="external text" rel="nofollow">editing this page</a></span> to
> add your revisions or additions.</span>

## <span id="Ubuntu_version" class="mw-headline">Ubuntu version</span>

This method has been tested on Ubuntu 8.4 with PostgreSQL 8.1 and on
Ubuntu 11.10 and 12.04 with PostgreSQL 9.1. Note also that starting with
the 12.10 Ubuntu release (October, 2012) this became even easier since a
Debian package for Chado (libchado-perl) was added to the official
repository making installation a real snap. That package is available
for Debian installations as well.

## <span id="Notes" class="mw-headline">Notes</span>

Installing prereqs with Synaptic:

- postgresql
- postgresql-client
- postgresql-contrib
- postgresql-plperl
- libpq-dev
- libdbd-pg-perl
- libtemplate-perl -- Template toolkit
- libxml-simple-perl
- liblog-log4perl-perl
- ant
- libparse-recdescent-perl \# needed by DBIx::DBStag
- xsltproc
- bioperl

<!-- -->

    sudo apt-get install postgresql postgresql-client postgresql-contrib postgresql-plperl libpq-dev libdbd-pg-perl libtemplate-perl libxml-simple-perl liblog-log4perl-perl ant libparse-recdescent-perl xsltproc bioperl

Create a db user for yourself - your Ubuntu username:

     $ sudo su - postgres
     $ createuser <username>
     Shall the new role be a superuser? (y/n) y
     CREATE ROLE
     $ vi /etc/postgresql/9.1/main/pg_hba.conf
     #changed "local all all" and "host all all" lines from ident sameuser to trust
     $ exit
     $ sudo /etc/init.d/postgresql restart

It is useful to actually have a password, even using trust, otherwise
problems with DBD::Pg pop up telling you that no password was supplied.

     $ sudo su - postgres
     $ psql -d template1
     $ alter USER <username> with password '<password>';
     $ exit #from psql
     $ exit #from sudo

Installing prereqs with cpan shell:

- install Bio%3A%3AChado%3A%3ASchema
- install GO::Parser (go-perl)
- install DBIx::DBSchema \# needed by DBIx::DBStag

  

Installed DBIx::DBStag 'by hand':

(Note that if you have the cpan shell set up to do "sudo make" rather
than running the whole shell as root (via "sudo cpan"), you can install
DBIx::DBStag from the cpan shell.)

     wget http://search.cpan.org/CPAN/authors/id/C/CM/CMUNGALL/DBIx-DBStag-0.10.tar.gz
     tar zxvf DBIx-DBStag-0.10.tar.gz
     cd DBIx-DBStag-0.10
     createdb test   # needed for the make test step
     perl Makefile.PL
     make
     make test  #all tests pass
     sudo make install

  
Create the file ~/.gmod_profile, with the contents:

     export GMOD_ROOT=/usr/local/gmod
     export CHADO_DB_NAME=chado
     export CHADO_DB_USER=<username>
     export CHADO_DB_PASS=<password>
     export CHADO_DB_HOST=localhost
     export CHADO_DB_PORT=5432
     export GO_ROOT=/usr/local/share/perl/5.8.8/GO

and add this line to the end of ~/.bash_profile:

     . ~/.gmod_profile   #sources the gmod profile on login

If you haven't already, download gmod, either from

    http://sourceforge.net/projects/gmod/files/gmod/

or via <a href="SVN" class="mw-redirect" title="SVN">SVN</a>.

Then, in the gmod directory

     perl Makefile.PL
     make
     sudo make install
     make load_schema
     make prepdb
     make ontologies  #selected 1,2,3,4

Get and load yeast [GFF3](GFF3 "GFF3") file:

      wget http://downloads.yeastgenome.org/sequence/S288C_reference/genome_releases/S288C_reference_genome_Current_Release.tgz

      gmod_bulk_load_gff3.pl --analysis --organism=yeast -g saccharomyces_cerevisiae.gff --noexon

- Note you may have to install the perl module "version::vxs" for some
  reason--it is not a prerequisite for any GMOD software, but must be an
  undeclared prereq for something that GMOD software depends on.
  Hopefully this will be fixed by the author soon.

</div>

<div class="printfooter">

Retrieved from
"<http://gmod.org/mediawiki/index.php?title=Installing_Chado_on_Ubuntu_HOWTO&oldid=23769>"

</div>

<div id="catlinks" class="catlinks">

<div id="mw-normal-catlinks" class="mw-normal-catlinks">

[Categories](Special:Categories "Special:Categories"):

- [Needs Editing](Category:Needs_Editing "Category:Needs Editing")
- [HOWTO](Category:HOWTO "Category:HOWTO")
- [Chado](Category:Chado "Category:Chado")
- [Linux](Category:Linux "Category:Linux")

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
  href="http://gmod.org/mediawiki/index.php?title=Talk:Installing_Chado_on_Ubuntu_HOWTO&amp;action=edit&amp;redlink=1"
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


- <span id="t-smwbrowselink"><a href="Special%3ABrowse/Installing_Chado_on_Ubuntu_HOWTO"
  rel="smw-browse">Browse properties</a></span>


</div>

</div>

</div>

</div>

<div id="footer" role="contentinfo">

- <span id="footer-info-lastmod">Last updated at 16:37 on 12 July
  2013.</span>
<!-- - <span id="footer-info-viewcount">76,188 page views.</span> -->
- <span id="footer-info-copyright">Content is available under
  <a href="http://www.gnu.org/licenses/fdl-1.3.html" class="external"
  rel="nofollow">a GNU Free Documentation License</a> unless otherwise
  noted.</span>

<!-- -->

- <span id="footer-places-about">[About
  GMOD](GMOD:About "GMOD:About")</span>

<!-- -->






</div>
