<div id="mw-page-base" class="noprint">

</div>

<div id="mw-head-base" class="noprint">

</div>

<div id="content" class="mw-body" role="main">

<span id="top"></span>

<div id="mw-js-message" style="display:none;">

</div>



# <span dir="auto">Apollo-Chado</span>

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

This page is pulled directly from the README.Apollo documentation in the
Chado code repository and is converted to text and dynamically loaded in
this page. The README was most recently changed on **Thursday 21st of
September 2006 01:26:42 PM**

------------------------------------------------------------------------

  

    Reading and Writing to a Chado database with Apollo
        This needs to be better documented, but here is a start:

        In order to use Apollo read/write with chado, here are things that need
        to be done:

        Grant privileges to users to several tables (list here)
            In the absense of a complete list of tables, you can grant access to
            all tables using sqlt and the perl Template::Toolkit template,
            bin/privileges.tmpl

                sqlt -f PostgreSQL -t TTSchema --template bin/privileges.tmpl modules/nofuncs.sql | psql

            You can edit the template to grant privileges to just specific users
            instead of PUBLIC, which of course would be a lot more secure.

        Insert several ad hoc cv terms found in
        modules/sequence/apollo-bridge/cv_inserts.sql.
            This file contains sql commands to insert several controlled
            vocabulary terms that Apollo expects to be in the database. This
            file can be recreated with additional terms as needed by editing the
            file modules/sequence/apollo-bridge/ad_hoc_cv and running the perl
            script modules/sequence/apollo-bridge/insert_ad_doc_cv.pl. The
            resulting sql file can be inserted into the database with this
            command:

                $ psql $DBNAME < modules/sequence/apollo-bridge/cv_inserts.sql

        Insert a few misc items like those found in
        modules/sequence/apollo-bridge/apollo.inserts
            Essentially, Apollo and chado have to agree about what the names of
            the programs in the analysis table are, and there needs to be a few
            terms in the cv table.

            About naming analysis results: there are no restrictions on what you
            name them, however the GFF3 bulk loader will insert them typically
            one of two ways:

            1   If you specify the -a (--analysis) flag with an argument, the
                loader will look for an entry in the analysis table where
                analysis.name is equal to the argument supplied with -a.

            2   If you don't give an argument with -a, the loader will look for
                analysis.name that is equal to the GFF source and type
                concatentated with and underscore between them, ie
                'source_type', eg, 'Rice_cDNA_match'.

            The inserts into the db table are there so that dbxref entries in
            GFF files I typically process. They can be ignored unless you are
            loading GFF files with Dbxref entries.

            Then there is the uniquename_id_generator sequence, for which
            integers for building uniquenames are used. Then there are two
            interts in to cvtermprop for the suffix and prefix for uniquename
            generation. Generated uniquenames with be of the form:

                $prefix . (int from uniquename_id sequence) . $suffix

            For exmple, if you insert 'RICE' for the prefix and 'X' for the
            suffix, the resulting name of the first feature will be
            'RICE000001X';

        Add the functions and triggers to chado.
            Use the perl script:

                % /usr/local/bin/gmod_apollo_triggers.pl create

            Note that this script can also be used to drop and add the triggers
            in case you want to do some bulk loading and want to disactivate the
            triggers for that.

        Modify the Apollo configuration file, chado-adapter.xml.
            IS THERE DOCUMENTATION FOR DOING THAT IN APOLLO'S DOCS? Yes, there
            is a section for connecteding directly to flybase chado in the
            apollo doc directory: doc/html/userguide.html but it is somewhat out
            of date. I need to work with Mark to update it (it will probably
            need me to write it and have Mark proof it).

        I understand that these directions are somewhat vague. Getting Apollo to
        work with chado requires a little hands on tinkering. If you find
        yourself having difficulties, please contact me.

        Scott Cain

        cain@cshl.edu

        4/29/05

  

- [Apollo-Chado example
  database](Apollo-Chado_example_database "Apollo-Chado example database")

</div>

<div class="printfooter">

Retrieved from
"<http://gmod.org/mediawiki/index.php?title=Apollo-Chado&oldid=3723>"

</div>

<div id="catlinks" class="catlinks">

<div id="mw-normal-catlinks" class="mw-normal-catlinks">

[Categories](Special:Categories "Special:Categories"):

- [Apollo](Category:Apollo "Category:Apollo")
- [Chado](Category:Chado "Category:Chado")

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

- <span id="ca-nstab-main"><a href="Apollo-Chado" accesskey="c"
  title="View the content page [c]">Page</a></span>
- <span id="ca-talk"><a
  href="http://gmod.org/mediawiki/index.php?title=Talk:Apollo-Chado&amp;action=edit&amp;redlink=1"
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


- <span id="t-smwbrowselink"><a href="Special:Browse/Apollo-2DChado" rel="smw-browse">Browse
  properties</a></span>
- <span id="t-pdf">[Print as
  PDF](http://gmod.org/mediawiki/index.php?title=Special:PdfPrint&page=Apollo-Chado)</span>

</div>

</div>

</div>

</div>

<div id="footer" role="contentinfo">

- <span id="footer-info-lastmod">Last updated at 18:06 on 28 December
  2007.</span>
- <span id="footer-info-viewcount">17,479 page views.</span>
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
