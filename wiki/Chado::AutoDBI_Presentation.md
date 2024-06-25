<div id="mw-page-base" class="noprint">

</div>

<div id="mw-head-base" class="noprint">

</div>

<div id="content" class="mw-body" role="main">

<span id="top"></span>

<div id="mw-js-message" style="display:none;">

</div>



# <span dir="auto">Chado::AutoDBI Presentation</span>

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

This Wiki section is an edited version of
<a href="../mediawiki/images/3/34/AutoDBI.pdf" class="internal"
title="AutoDBI.pdf">Brian O'Connor's presentation</a>.

<div id="toc" class="toc">

<div id="toctitle">

## Contents

</div>

- [<span class="tocnumber">1</span> <span class="toctext">Relation to
  Turnkey</span>](#Relation_to_Turnkey)
- [<span class="tocnumber">2</span> <span class="toctext">Technical
  Overview</span>](#Technical_Overview)
- [<span class="tocnumber">3</span> <span class="toctext">Project
  Overview</span>](#Project_Overview)
- [<span class="tocnumber">4</span> <span class="toctext">Technical
  Overview</span>](#Technical_Overview_2)
- [<span class="tocnumber">5</span> <span class="toctext">Technical
  Overview</span>](#Technical_Overview_3)
- [<span class="tocnumber">6</span> <span class="toctext">Technical
  Overview</span>](#Technical_Overview_4)
- [<span class="tocnumber">7</span> <span class="toctext">Technical
  Overview</span>](#Technical_Overview_5)
- [<span class="tocnumber">8</span> <span class="toctext">Technical
  Overview</span>](#Technical_Overview_6)
- [<span class="tocnumber">9</span> <span class="toctext">Technical
  Overview</span>](#Technical_Overview_7)
- [<span class="tocnumber">10</span> <span class="toctext">Problem
  1</span>](#Problem_1)
- [<span class="tocnumber">11</span> <span class="toctext">Problem
  2</span>](#Problem_2)
- [<span class="tocnumber">12</span> <span class="toctext">Problems 3,
  4, & 5</span>](#Problems_3.2C_4.2C_.26_5)
- [<span class="tocnumber">13</span> <span class="toctext">Things
  Chado::AutoDBI does well</span>](#Things_Chado::AutoDBI_does_well)
- [<span class="tocnumber">14</span> <span class="toctext">For More
  Information</span>](#For_More_Information)

</div>

##### <span id="Relation_to_Turnkey" class="mw-headline">Relation to Turnkey</span>

Turnkey is a package that auto-generates Web sites given a relational
schema, based on SQL::Translator

- Turnkey authors: Allen Day, Scott Cain, Brian O'Connor
- Turnkey and Chado::AutoDBI objects are essentially the same

##### <span id="Technical_Overview" class="mw-headline">Technical Overview</span>

- Code Generation

##### <span id="Project_Overview" class="mw-headline">Project Overview</span>

Convert SQL Queries/Inserts/Deletes -\> Object Calls

<div class="mw-geshi mw-code mw-content-ltr" dir="ltr">

<div class="sql source-sql">

``` de1
  INSERT INTO feature (organism_id, name)
                                  VALUES (1, 'foo');
```

</div>

</div>

To:

<div class="mw-geshi mw-code mw-content-ltr" dir="ltr">

<div class="perl source-perl">

``` de1
    my $feature = Turnkey::Model::Feature->find_or_create({
                       organism_id => $organism,
                   name => 'xfile', uniquename => 'xfile',
                   type_id => $mrna_cvterm,
                   is_analysis => 'f', is_obsolete => 'f'
                   });
```

</div>

</div>

##### <span id="Technical_Overview_2" class="mw-headline">Technical Overview</span>

- Database connection: use a base class
- Set up base object and connect, then create a *table object* to access
  primary key.
- Class::DBI can find and insert records into other table, based on
  foreign key.

<div class="mw-geshi mw-code mw-content-ltr" dir="ltr">

<div class="perl source-perl">

``` de1
use base qw(Class::DBI::Pg);
 
my ($dsn, $name, $pass);
$dsn = "dbi:Pg:host=localhost;dbname=chado;port=5432";
$name = "postgres";
$pass = "";
 
Turnkey::Model::DBI->set_db('Main', $dsn, $name, $pass, {AutoCommit => 1});
```

</div>

</div>

##### <span id="Technical_Overview_3" class="mw-headline">Technical Overview</span>

- Basic [ORM](Glossary#ORM "Glossary") Object: Feature

<div class="mw-geshi mw-code mw-content-ltr" dir="ltr">

<div class="perl source-perl">

``` de1
package Turnkey::Model::Feature;
use base 'Turnkey::Model::DBI';
 
Turnkey::Model::Feature->set_up_table('feature');
 
#
# Primary key accessors
#
 
sub id { shift->feature_id }
sub feature { shift->feature_id }
```

</div>

</div>

- data field accessors by Class::Accessor

##### <span id="Technical_Overview_4" class="mw-headline">Technical Overview</span>

- Basic ORM Object: Feature
  - has_a

<div class="mw-geshi mw-code mw-content-ltr" dir="ltr">

<div class="perl source-perl">

``` de1
#
# has_a
#
Turnkey::Model::Feature->has_a( type_id => "Turnkey::Model::Cvterm" );
sub cvterm { return shift->type_id; }
```

</div>

</div>

- Basic ORM Object: Feature
  - has_many

<div class="mw-geshi mw-code mw-content-ltr" dir="ltr">

<div class="perl source-perl">

``` de1
#
# has_many
#
Turnkey::Model::Feature->has_many('feature_synonym_feature_id', 
           'Turnkey::Model::Feature_Synonym' => 'feature_id');
sub feature_synonyms { return shift->feature_synonym_feature_id; }
 
Turnkey::Model::Feature->has_many('featureprop_feature_id', 
           'Turnkey::Model::Featureprop' => 'feature_id');
sub featureprops { return shift->featureprop_feature_id; }
```

</div>

</div>

- Can traverse tables, such as going from FEATURE to FEATUREPROP
  - Tell base object that the *table object* has_a() or has_many() keys
    corresponding to some key in other *table object*

##### <span id="Technical_Overview_5" class="mw-headline">Technical Overview</span>

- Basic ORM Object: Feature
  - skipping linker tables for has_many

<div class="mw-geshi mw-code mw-content-ltr" dir="ltr">

<div class="perl source-perl">

``` de1
# skip over feature_synonym table
#
# method 1
#
sub synonyms { my $self = shift; return map $_->synonym_id, $self->feature_synonyms; }
#
# method 2
#
Turnkey::Model::Feature->has_many( synonyms2 =>
                      ['Turnkey::Model::Feature_Synonym' => 'synonym_id']);
```

</div>

</div>

##### <span id="Technical_Overview_6" class="mw-headline">Technical Overview</span>

- Transactions
  - Chado::AutoDBI supports transactions, and one can wrap the
    transaction in an eval()

<div class="mw-geshi mw-code mw-content-ltr" dir="ltr">

<div class="perl source-perl">

``` de1
  sub do_transaction {
    my $class = shift;
    my ( $code ) = @_;
    # Turn off AutoCommit for this scope.
    # A commit will occur at the exit of this block automatically,
    # when the local AutoCommit goes out of scope.
    local $class->db_Main->{ AutoCommit };
 
    # Execute the required code inside the transaction.
    eval { $code->() };
    if ( $@ ) {
      my $commit_error = $@;
      eval { $class->dbi_rollback }; # might also die!
      die $commit_error;
    }
  }
```

</div>

</div>

##### <span id="Technical_Overview_7" class="mw-headline">Technical Overview</span>

- Lazy Loading
  - One can either do automated creation of objects or explicitly
    dictate which fields are incorporated into object

<div class="mw-geshi mw-code mw-content-ltr" dir="ltr">

<div class="perl source-perl">

``` de1
Turnkey::Model::Feature->columns( Primary => qw/feature_id/ );
Turnkey::Model::Feature->columns( Essential => qw/name organism_id type_id/ );
Turnkey::Model::Feature->columns( Others => qw/residues .../ );
```

</div>

</div>

Typically:

<div class="mw-geshi mw-code mw-content-ltr" dir="ltr">

<div class="perl source-perl">

``` de1
Turnkey::Model::Feature->set_up_table('feature');
```

</div>

</div>

##### <span id="Problem_1" class="mw-headline">Problem 1</span>

- Create Feature & Add Description

<div class="mw-geshi mw-code mw-content-ltr" dir="ltr">

<div class="perl source-perl">

``` de1
# now create mRNA feature
 
my $feature = Turnkey::Model::Feature->find_or_create({
                       organism_id => $organism,
                   name => 'xfile', uniquename => 'xfile',
                   type_id => $mrna_cvterm,
                   is_analysis => 'f', is_obsolete => 'f'
                   });
 
# create description
 
my $featureprop = Turnkey::Model::Featureprop->find_or_create({
                           value => 'A test gene for GMOD meeting',
                           feature_id => $feature,
                   type_id => $note_cvterm,
                   });
```

</div>

</div>

##### <span id="Problem_2" class="mw-headline">Problem 2</span>

- Retrieve a Feature via Searching
  - Search using strings or identifiers, a search will return an
    iterator object

<div class="mw-geshi mw-code mw-content-ltr" dir="ltr">

<div class="perl source-perl">

``` de1
# objects for global use
 
# the organism for our new feature
my $organism = Turnkey::Model::Organism->search(abbreviation => "S.cerevisiae")->next;
 
# the cvterm for a "Note"
my $note_cvterm = Turnkey::Model::Cvterm->retrieve(2);
 
# searching name by wildcard
 
my @results = Turnkey::Model::Feature->search_like(name => 'x-%');
```

</div>

</div>

##### <span id="Problems_3.2C_4.2C_.26_5" class="mw-headline">Problems 3, 4, & 5</span>

- Update a Feature

<div class="mw-geshi mw-code mw-content-ltr" dir="ltr">

<div class="perl source-perl">

``` de1
# update the xfile gene name
 
$feature->name("x-file");
$feature->update();
```

</div>

</div>

- Delete a Feature

<div class="mw-geshi mw-code mw-content-ltr" dir="ltr">

<div class="perl source-perl">

``` de1
# now delete the x-file feature
 
$feature->delete();
```

</div>

</div>

##### <span id="Things_Chado::AutoDBI_does_well" class="mw-headline">Things Chado::AutoDBI does well</span>

- Easy to use
- Easy to port
- Use with other DBs
  - Both Oracle and Postgres used currently
- Autogenerated via Turnkey
- find_or_create method
- Performance is not as bad as you might guess
  - Due to Lazy loading
  - Even whole genome operations are feasible

Note that speed is relative: one can find bad performance using the
wrong SQL and Chado::AutoDBI approach will be speedier.

  

##### <span id="For_More_Information" class="mw-headline">For More Information</span>

- Class::DBI
  - <a href="http://www.class-dbi.com" class="external free"
    rel="nofollow">http://www.class-dbi.com</a>
  - <a href="http://search.cpan.org" class="external free"
    rel="nofollow">http://search.cpan.org</a>

<!-- -->

- Turnkey
  - <a href="http://turnkey.sf.net" class="external free"
    rel="nofollow">http://turnkey.sf.net</a>

<!-- -->

- Biopackages
  - <a href="http://biopackages.net" class="external free"
    rel="nofollow">http://biopackages.net</a>

</div>

<div class="printfooter">

Retrieved from
"<http://gmod.org/mediawiki/index.php?title=Chado::AutoDBI_Presentation&oldid=22155>"

</div>

<div id="catlinks" class="catlinks">

<div id="mw-normal-catlinks" class="mw-normal-catlinks">

[Categories](Special:Categories "Special:Categories"):

- [Chado](Category:Chado "Category:Chado")
- [Middleware](Category:Middleware "Category:Middleware")
- [Perl](Category:Perl "Category:Perl")
- [Turnkey](Category:Turnkey "Category:Turnkey")

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

- <span id="ca-nstab-main"><a href="Chado::AutoDBI_Presentation" accesskey="c"
  title="View the content page [c]">Page</a></span>
- <span id="ca-talk"><a
  href="http://gmod.org/mediawiki/index.php?title=Talk:Chado::AutoDBI_Presentation&amp;action=edit&amp;redlink=1"
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


- <span id="t-smwbrowselink"><a href="Special:Browse/Chado::AutoDBI_Presentation"
  rel="smw-browse">Browse properties</a></span>
- <span id="t-pdf">[Print as
  PDF](http://gmod.org/mediawiki/index.php?title=Special:PdfPrint&page=Chado::AutoDBI_Presentation)</span>

</div>

</div>

</div>

</div>

<div id="footer" role="contentinfo">

- <span id="footer-info-lastmod">Last updated at 23:33 on 8 October
  2012.</span>
<!-- - <span id="footer-info-viewcount">20,372 page views.</span> -->
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
