<div id="mw-page-base" class="noprint">

</div>

<div id="mw-head-base" class="noprint">

</div>

<div id="content" class="mw-body" role="main">

<span id="top"></span>

<div id="mw-js-message" style="display:none;">

</div>



# <span dir="auto">GBrowse syn AGS Tutorial</span>

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

  

<div class="center">

<div class="floatnone">

<a href="File:GBrowse_syn_logo.png" class="image"
title="GBrowse_syn"><img
src="../mediawiki/images/thumb/4/44/GBrowse_syn_logo.png/250px-GBrowse_syn_logo.png"
srcset="../mediawiki/images/thumb/4/44/GBrowse_syn_logo.png/375px-GBrowse_syn_logo.png 1.5x, ../mediawiki/images/thumb/4/44/GBrowse_syn_logo.png/500px-GBrowse_syn_logo.png 2x"
width="250" height="80" alt="GBrowse_syn" /></a>

</div>

</div>

This [GBrowse_syn](GBrowse_syn.1 "GBrowse syn") tutorial was presented
by [Sheldon McKay, iPlant Collaborative, University of
Arizona](User:Mckays "User:Mckays") at the
<a href="http://www.k-state.edu/agc/symp2011/" class="external text"
rel="nofollow">Arthropod Genomics Symposium 2011</a>, June 2011. The
most recent GBrowse_syn tutorial can be found at the
<a href="GBrowse_syn_Tutorial" class="mw-redirect"
title="GBrowse syn Tutorial">GBrowse_syn Tutorial</a> page.  
[GBrowse_syn](GBrowse_syn.1 "GBrowse syn") is a
[GBrowse](GBrowse.1 "GBrowse")-based
<a href="Synteny" class="mw-redirect" title="Synteny">synteny</a>
browser designed to display multiple genomes, with a central reference
species compared to two or more additional species. It is included with
the standard GBrowse package (version 1.69 and later).

  

<div class="thumb tright">

<div class="thumbinner" style="width:302px;">

<a href="File:Gbrowse_syn2.png" class="image"><img
src="../mediawiki/images/thumb/8/83/Gbrowse_syn2.png/300px-Gbrowse_syn2.png"
class="thumbimage"
srcset="../mediawiki/images/thumb/8/83/Gbrowse_syn2.png/450px-Gbrowse_syn2.png 1.5x, ../mediawiki/images/thumb/8/83/Gbrowse_syn2.png/600px-Gbrowse_syn2.png 2x"
width="300" height="171" /></a>

<div class="thumbcaption">

<div class="magnify">

<a href="File:Gbrowse_syn2.png" class="internal" title="Enlarge"><img
src="../mediawiki/skins/common/images/magnify-clip.png" width="15"
height="11" /></a>

</div>

GBrowse_syn as it looks at The Arabidopsis Information Resource (TAIR)

</div>

</div>

</div>

Working examples of GBrowse_syn can be seen at <a
href="http://www.arabidopsis.org/cgi-bin/gbrowse_syn/arabidopsis/?name=Chr1%3A8367000..8370501;search_src=thaliana"
class="external text" rel="nofollow">TAIR</a> and <a
href="http://dev.wormbase.org/db/seq/gbrowse_syn/compara?search_src=Cele;name=X:1050001..1150000"
class="external text" rel="nofollow">WormBase</a>.

  

<div id="toc" class="toc">

<div id="toctitle">

## Contents

</div>

- [<span class="tocnumber">1</span> <span class="toctext">GBrowse_syn
  Introduction</span>](#GBrowse_syn_Introduction)
- [<span class="tocnumber">2</span> <span class="toctext">Installing
  GBrowse_syn</span>](#Installing_GBrowse_syn)
- [<span class="tocnumber">3</span> <span class="toctext">Setting up the
  sample data</span>](#Setting_up_the_sample_data)
  - [<span class="tocnumber">3.1</span> <span class="toctext">Setting up
    the Alignment Database</span>](#Setting_up_the_Alignment_Database)
  - [<span class="tocnumber">3.2</span> <span class="toctext">Setting up
    the Configuration Files</span>](#Setting_up_the_Configuration_Files)
    - [<span class="tocnumber">3.2.1</span>
      <span class="toctext">Activating the Oryza Data
      Source</span>](#Activating_the_Oryza_Data_Source)
  - [<span class="tocnumber">3.3</span> <span class="toctext">Speeding
    up the Browser</span>](#Speeding_up_the_Browser)
- [<span class="tocnumber">4</span> <span class="toctext">Using
  Non-alignment Data</span>](#Using_Non-alignment_Data)
- [<span class="tocnumber">5</span>
  <span class="toctext">Mercator</span>](#Mercator)
- [<span class="tocnumber">6</span> <span class="toctext">Further
  Reading</span>](#Further_Reading)
  - [<span class="tocnumber">6.1</span>
    <span class="toctext">Citation</span>](#Citation)
  - [<span class="tocnumber">6.2</span> <span class="toctext">A Note on
    Whole Genome Alignments</span>](#A_Note_on_Whole_Genome_Alignments)
  - [<span class="tocnumber">6.3</span>
    <span class="toctext">Documentation</span>](#Documentation)

</div>

## <span id="GBrowse_syn_Introduction" class="mw-headline">GBrowse_syn Introduction</span>

- An introductory talk will be presented using the slides below. Click
  the section to open.

<div id="Introductory_Slides" class="switch">

<a href="File:GBrowse_synSlide1.png" class="image"><img
src="../mediawiki/images/e/e4/GBrowse_synSlide1.png" class="thumbborder"
width="720" height="540" alt="GBrowse synSlide1.png" /></a>  
  
<a href="File:GBrowse_synSlide7.png" class="image"><img
src="../mediawiki/images/9/9b/GBrowse_synSlide7.png" class="thumbborder"
width="720" height="540" alt="GBrowse synSlide7.png" /></a>  
  
<a href="File:GBrowse_synSlide13.png" class="image"><img
src="../mediawiki/images/f/ff/GBrowse_synSlide13.png"
class="thumbborder" width="720" height="540"
alt="GBrowse synSlide13.png" /></a>  
  
<a href="File:GBrowse_synSlide14.png" class="image"><img
src="../mediawiki/images/e/e9/GBrowse_synSlide14.png"
class="thumbborder" width="720" height="540"
alt="GBrowse synSlide14.png" /></a>  
  
<a href="File:GBrowse_synSlide15.png" class="image"><img
src="../mediawiki/images/c/c9/GBrowse_synSlide15.png"
class="thumbborder" width="720" height="540"
alt="GBrowse synSlide15.png" /></a>  
  
<a href="File:GBrowse_synSlide16.png" class="image"><img
src="../mediawiki/images/0/0a/GBrowse_synSlide16.png"
class="thumbborder" width="720" height="540"
alt="GBrowse synSlide16.png" /></a>  
  
<a href="File:GBrowse_synSlide17.png" class="image"><img
src="../mediawiki/images/e/eb/GBrowse_synSlide17.png"
class="thumbborder" width="720" height="540"
alt="GBrowse synSlide17.png" /></a>  
  
<a href="File:GBrowse_synSlide18.png" class="image"><img
src="../mediawiki/images/a/a3/GBrowse_synSlide18.png"
class="thumbborder" width="720" height="540"
alt="GBrowse synSlide18.png" /></a>  
  
<a href="File:GBrowse_synSlide19.png" class="image"><img
src="../mediawiki/images/a/af/GBrowse_synSlide19.png"
class="thumbborder" width="720" height="540"
alt="GBrowse synSlide19.png" /></a>  
  
<a href="File:GBrowse_synSlide20.png" class="image"><img
src="../mediawiki/images/1/1d/GBrowse_synSlide20.png"
class="thumbborder" width="720" height="540"
alt="GBrowse synSlide20.png" /></a>  
  
<a href="File:GBrowse_synSlide21.png" class="image"><img
src="../mediawiki/images/f/fc/GBrowse_synSlide21.png"
class="thumbborder" width="720" height="540"
alt="GBrowse synSlide21.png" /></a>  
  
<a href="File:GBrowse_synSlide22.png" class="image"><img
src="../mediawiki/images/7/76/GBrowse_synSlide22.png"
class="thumbborder" width="720" height="540"
alt="GBrowse synSlide22.png" /></a>  
  
<a href="File:GBrowse_synSlide23.png" class="image"><img
src="../mediawiki/images/7/77/GBrowse_synSlide23.png"
class="thumbborder" width="720" height="540"
alt="GBrowse synSlide23.png" /></a>  
  
<a href="File:GBrowse_synSlide24.png" class="image"><img
src="../mediawiki/images/c/c3/GBrowse_synSlide24.png"
class="thumbborder" width="720" height="540"
alt="GBrowse synSlide24.png" /></a>  

</div>

## <span id="Installing_GBrowse_syn" class="mw-headline">Installing GBrowse_syn</span>

GBrowse_syn is part of the GBrowse 2.0 package and will be pre-installed
with [GBrowse 2.0 installation](GBrowse_2.0_HOWTO "GBrowse 2.0 HOWTO").

<div class="indent">

    $ sudo cpan -i Bio::Graphics::Browser2

</div>

<div class="emphasisbox">

Note: Gbrowse 2 has been pre-installed for this demonstration

</div>

- Now point your browser to
  <a href="http://localhost/cgi-bin/gb2/gbrowse" class="external free"
  rel="nofollow">http://localhost/cgi-bin/gb2/gbrowse</a> to see that
  GBrowse was installed correctly. You should see a page similar to the
  one below, which is the default yeast data source.

<div class="thumb tleft">

<div class="thumbinner" style="width:602px;">

<a href="File:GBrowse2_installed.png" class="image"><img
src="../mediawiki/images/thumb/c/ce/GBrowse2_installed.png/600px-GBrowse2_installed.png"
class="thumbimage"
srcset="../mediawiki/images/c/ce/GBrowse2_installed.png 1.5x, ../mediawiki/images/c/ce/GBrowse2_installed.png 2x"
width="600" height="375" /></a>

<div class="thumbcaption">

<div class="magnify">

<a href="File:GBrowse2_installed.png" class="internal"
title="Enlarge"><img
src="../mediawiki/skins/common/images/magnify-clip.png" width="15"
height="11" /></a>

</div>

This is the welcome screen you should see after installing a new copy of
GBrowse

</div>

</div>

</div>

  

- Point your browser to
  <a href="http://localhost/cgi-bin/gb2/gbrowse_syn" class="external free"
  rel="nofollow">http://localhost/cgi-bin/gb2/gbrowse_syn</a>

<div class="thumb tleft">

<div class="thumbinner" style="width:602px;">

<a href="File:GBrowse_synWelcom.png" class="image"><img
src="../mediawiki/images/thumb/1/16/GBrowse_synWelcom.png/600px-GBrowse_synWelcom.png"
class="thumbimage"
srcset="../mediawiki/images/1/16/GBrowse_synWelcom.png 1.5x, ../mediawiki/images/1/16/GBrowse_synWelcom.png 2x"
width="600" height="375" /></a>

<div class="thumbcaption">

<div class="magnify">

<a href="File:GBrowse_synWelcom.png" class="internal"
title="Enlarge"><img
src="../mediawiki/skins/common/images/magnify-clip.png" width="15"
height="11" /></a>

</div>

This is the welcome screen you should see after installing a new copy of
GBrowse_syn with no configured data sources. It contains instructions on
how to set up the example data source provided with the distribution.

</div>

</div>

</div>

  

## <span id="Setting_up_the_sample_data" class="mw-headline">Setting up the sample data</span>

<div class="emphasisbox" style="width:700px;margin-top:50px">

- Sample data and configuration information for GBrowse_syn come
  pre-packaged with GBrowse.
- The example we will use is a two-species comparison of rice (*Oryza
  sativa*) and one of its wild relatives\*

*\*Data courtesy of Bonnie Hurwitz; sequences and names have been
obfuscated to protect unpublished data*

</div>

### <span id="Setting_up_the_Alignment_Database" class="mw-headline">Setting up the Alignment Database</span>

The alignment, or joining database will contain the sequence alignments
between the two rice species. It will be in a [MySQL](MySQL "MySQL")
database.

1\) Create a MySQL database to hold the alignment data On the virtual
disk, the MySQL root password is gmod

<div class="indent">

    $ mysql -u root -p
    Enter password: ****
    Welcome to the MySQL monitor.  Commands end with ; or \g.
    Your MySQL connection id is 37
    Server version: 5.1.37-1ubuntu5.1 (Ubuntu)

    Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

    mysql> create database rice_synteny;
    Query OK, 1 row affected (0.00 sec)

    mysql>

</div>

2\) Give read-only (SELECT privileges in SQL) to the default apache user
`www-data`. We can do this for all of the MySQL databases, since they
are all for web applications

<div class="indent">

    mysql> GRANT SELECT on *.* TO 'www-data'@'localhost';
    Query OK, 0 rows affected (0.00 sec)

    mysql> quit

</div>

3\) Decompress the sample alignment data and load the database. You need
to have root-level access (be a sudoer) for some of the steps below.

<div class="indent">

    $ cd /var/lib/gbrowse2/databases/gbrowse_syn/alignments/
    $ sudo gunzip rice.aln.gz

Have a look at the first few lines of the data:

    $ head -20 rice.aln
    CLUSTAL W(1.81) multiple sequence alignment W(1.81)


    rice-3(+)/16598648-16600199      ggaggccggccgtctgccatgcgtgagccagacggggcgggccggagacaggccacgtgg
    wild_rice-3(+)/14467855-14469373 gggggccgg------------------------------------agacaggccacgtgg
                                     ** ******                                    ***************


    rice-3(+)/16598648-16600199      ccctgccccgggctgttgacccactggcacccctgtcccgggttgtcgccctcctttccc
    wild_rice-3(+)/14467855-14469373 ccctgccccgggctgttgacccactggcacccctgtcccgggttgtcgccctcctttccc
                                     ************************************************************


    rice-3(+)/16598648-16600199      cgccatgctctaagtttgctcctcttctcgaacttctctctttgattcttcacgtcctct
    wild_rice-3(+)/14467855-14469373 cgccatgctctaagtttgctcctcttctcgaacttctctctttgattcttcacgtcctct
                                     ************************************************************


    rice-3(+)/16598648-16600199      tggagcctccccttctagctcgatcacgctctgctcttccgcttggaggctggcaaaact
    wild_rice-3(+)/14467855-14469373 tggagcctccccttctagctcgatcgcgctctgctcttccgcttggaggctggcaaaact

The format is CLUSTALW. This is a formatting convention; it does not
mean CLUSTALW was used to generate the alignment data. See [Further
Reading](#Further_Reading) below for more information on data loading
and the meta-data in the sequence names

</div>

4\) Load the database with the script
`gbrowse_syn_load_alignments_msa.pl`, which is automatically installed
along with GBrowse. See the
<span class="pops"><a href="GBrowse_syn_Scripts" class="external text"
rel="nofollow">GBrowse_syn scripts</a></span> page for details on the
options for the script.

<div class="indent">

    $ gbrowse_syn_load_alignments_msa.pl -u root -p gmod -d rice_synteny -c -v rice.aln

There are 1800 alignment blocks, so this will take a little while to
run.

</div>

### <span id="Setting_up_the_Configuration_Files" class="mw-headline">Setting up the Configuration Files</span>

<div class="emphasisbox">

- The configuration files required for this data source are
  pre-installed with [GBrowse](GBrowse.1 "GBrowse"), in
  `/etc/gbrowse2/synteny/`.
- There are two species' config files, `rice_synteny.conf` and
  `wild_rice_synteny.conf`, and the joining config file,
  `oryza.synconf`. The latter file has been disabled by appending a
  '.disabled' extension to the file name.

</div>

The joining config file, `oryza.synconf`:

    [GENERAL]
    description =  BLASTZ alignments for Oryza sativa

    ====Sample Configuration Files====
    # The synteny database
    join        = dbi:mysql:database=rice_synteny;host=localhost

    # This option maps the relationship between the species data sources, names and descriptions
    # The value for "name" (the first column) is the symbolic name that gbrowse_syn users to identify each species.
    # This value is also used in two other places in the gbrowse_syn configuration:
    # the species name in the "examples" directive and the species name in the .aln file
    # The value for "conf. file" is the basename of the corresponding gbrowse .conf files.
    # This value is also used to identify the species configuration stanzas at the bottom of the configuration file.

    #                 name          conf. file            Description
    source_map =      rice          rice_synteny          "Domesic Rice (O. sativa)"
                      wild_rice     wild_rice_synteny     "Wild Rice"

    tmpimages     = /tmp/gbrowse2
    imagewidth    = 800
    stylesheet    = /gbrowse2/css/gbrowse_transparent.css
    cache time    = 1

    config_extension = conf

    # example searches to display
    examples = rice 3:16050173..16064974
               wild_rice 3:1..400000

    zoom levels = 5000 10000 25000 50000 100000 200000 400000

    # species-specific databases
    [rice_synteny]
    tracks    = EG
    color     = blue

    [wild_rice_synteny]
    tracks    = EG
    color     = red

A sample species config file, `rice_synteny.conf`:

    [GENERAL]
    description   = Domestic rice chromosome 3
    db_adaptor    = Bio::DB::SeqFeature::Store
    db_args       = -adaptor memory
                    -dir    /var/www/gbrowse2/databases/gbrowse_syn/rice


    # Web site configuration info
    tmpimages   = /tmp/gbrowse2

    [EG]
    feature      = gene:ensembl
    glyph        = gene
    height       = 10
    bgcolor      = peachpuff
    fgcolor      = hotpink
    description  = 0
    label        = 0
    category     = Transcripts
    key          = ensembl gene
    balloon hover = Hello, my name is $name!

<div class="emphasisbox">

Note: the species databases are actually using the [GFF3](GFF3 "GFF3")
flat file, in-memory adapter

</div>

#### <span id="Activating_the_Oryza_Data_Source" class="mw-headline">Activating the Oryza Data Source</span>

1\) Make sure the temporary image directory specified in the config
files exists and is world-writable

<div class="indent">

    $ sudo mkdir /var/www/tmp
    $ sudo mkdir /var/www/tmp/gbrowse2
    $ sudo chmod 777 /var/www/tmp/gbrowse2

</div>

2\) Renaming the configuration file

<div class="indent">

    $ cd /etc/gbrowse2/synteny
    $ sudo mv oryza.synconf.disabled oryza.synconf

</div>

3\) Point your browser to
<a href="http://localhost/cgi-bin/gb2/gbrowse_syn/oryza"
class="external free"
rel="nofollow">http://localhost/cgi-bin/gb2/gbrowse_syn/oryza</a>. You
should see:

<div class="indent">

<div class="floatleft">

<a href="File:GBrowse_synWe_made_it1.png" class="image"><img
src="../mediawiki/images/thumb/8/86/GBrowse_synWe_made_it1.png/800px-GBrowse_synWe_made_it1.png"
srcset="../mediawiki/images/8/86/GBrowse_synWe_made_it1.png 1.5x, ../mediawiki/images/8/86/GBrowse_synWe_made_it1.png 2x"
width="800" height="370" alt="GBrowse synWe made it1.png" /></a>

</div>

  

</div>

4\) Click on the first example, you should (eventually) see:

<div class="indent">

<div class="floatleft">

<a href="File:GBrowse_synWe_made_it2.png" class="image"><img
src="../mediawiki/images/thumb/4/45/GBrowse_synWe_made_it2.png/800px-GBrowse_synWe_made_it2.png"
srcset="../mediawiki/images/4/45/GBrowse_synWe_made_it2.png 1.5x, ../mediawiki/images/4/45/GBrowse_synWe_made_it2.png 2x"
width="800" height="368" alt="GBrowse synWe made it2.png" /></a>

</div>

  

</div>

### <span id="Speeding_up_the_Browser" class="mw-headline">Speeding up the Browser</span>

You can speed up the image loading time by putting your species'
[GFF3](GFF3 "GFF3") data into relational MySQL databases.

1\) Create a database for each of the GFF data files (`rice.gff3` and
`wild_rice.gff3`).

<div class="indent">

    $ mysql -uroot -pgmod

    mysql> create database rice;
    Query OK, 1 row affected (0.00 sec)

    mysql> create database wild_rice;
    Query OK, 1 row affected (0.00 sec)

    mysql> quit

</div>

2\) Populate the databases using the [loading script
`bp_seqfeature_load.pl`](GBrowse_Install_HOWTO#GFF3 "GBrowse Install HOWTO")
(pre-installed as part of [BioPerl](BioPerl "BioPerl") with
[GBrowse](GBrowse.1 "GBrowse")). This will load the GFF3 data into a
MySQL relational database. Note the MySQL user will root-level
privileges.

<div class="indent">

    $ cd /var/www/gbrowse2/databases/gbrowse_syn/rice
    $ bp_seqfeature_load.pl -u root -p gmod -d rice -c -f rice.gff3
    loading rice.gff3...
    Building object tree...
    0.55s0s

    Loading bulk data into database... 0.73s
    load time: 11.99s

     $ cd ../wild_rice
    $ bp_seqfeature_load.pl -u root -p gmod -d wild_rice -c -f wild_rice.gff3
    loading wild_rice.gff3...
    Building object tree...
    0.55s7a

    Loading bulk data into database... 0.69s
    load time: 12.02s

</div>

3\) Modify the following stanza in the file `rice_synteny.conf`. This
will convert your data source from a flat file database to a MySQL
relational database.

<div class="indent">

    # from
    db_args       = -adaptor memory
                    -dir    /var/www/html/gbrowse/databases/gbrowse_syn/rice

  
  

    # to
    db_args       = -dsn dbi:mysql:rice

</div>

4\) repeat for `wild_rice_synteny.conf`

## <span id="Using_Non-alignment_Data" class="mw-headline">Using Non-alignment Data</span>

<div class="emphasisbox">

This example uses gene orthology-based synteny blocks\* based created by
<a href="http://genome.sfu.ca/orthoclusterdb" class="external text"
rel="nofollow">OrthoCluster</a> for three nematode species, *C.
elegans*, *C. briggsae* and *P. pacificus*.

*\*Data courtesy of Jack Chen and Ismael Vergera*

</div>

1\) Download and unpack the data archive file `orthocluster.tar.gz`.

<div class="indent">

    $ cd ~/Documents/Data/gbrowse_syn
    $ tar zxf orthocluster.tar.gz

</div>

2\) Examine the contents of the `ORTHOCLUSTER` directory tree using the
Unix `tree` command. It is not installed by default, so we will have to
get it first.

<div class="indent">

    $ sudo apt-get install tree
    [sudo] password for gmod:
    Reading package lists... Done
    Building dependency tree
    Reading state information... Done
    The following NEW packages will be installed:
      tree
    0 upgraded, 1 newly installed, 0 to remove and 37 not upgraded.
    Need to get 31.1kB of archives.
    After this operation, 98.3kB of additional disk space will be used.
    Get:1 http://us.archive.ubuntu.com karmic/universe tree 1.5.2.2-1 [31.1kB]
    Fetched 31.1kB in 0s (37.0kB/s)
    Selecting previously deselected package tree.
    (Reading database ... 135915 files and directories currently installed.)
    Unpacking tree (from .../tree_1.5.2.2-1_i386.deb) ...
    Processing triggers for man-db ...
    Setting up tree (1.5.2.2-1) ...

Now we can use it

    $ tree ORTHOCLUSTER/
    ORTHOCLUSTER/
    |-- conf
    |   |-- bri.conf
    |   |-- ele.conf
    |   |-- orthocluster.synconf
    |   `-- ppa.conf
    |-- gff
    |   |-- bri.gff
    |   |-- ele.gff
    |   `-- ppa.gff
    `-- orthocluster.txt

    2 directories, 8 files

In the `conf` directory, there are configuration files for the joining
database and each of the three species. They are similar in structure to
the examples shown above, except that the database adapter
<a href="http://search.cpan.org/perldoc?Bio::DB::GFF"
class="external text" rel="nofollow">Bio::DB::GFF</a> and a gene
aggregator are used because the [GFF is version 2](GFF2 "GFF2"). For
example:

    [GENERAL]
    description   = C. briggsae
    db_adaptor    = Bio::DB::GFF
    db_args       = -dsn dbi:mysql:bri

    # This is the GFF2 aggregator that assembles gene models
    # from coding exon features with the same parent
    aggregators = gene{coding_exon}

  
The `gff` directory contains gene annotations for each of the three
species, derived from
<a href="http://www.wormbase.org" class="external text"
rel="nofollow">WormBase</a> (release WS204). The files are in
[GFF2](GFF2 "GFF2") format, which is why the
<a href="http://search.cpan.org/perldoc?Bio::DB::GFF"
class="external text" rel="nofollow">Bio::DB::GFF</a> adapter is
required. A sample is shown here:

    ##gff-version 2
    ##sequence-region I 1 15072421
    ##sequence-region II 1 15279324
    ##sequence-region III 1 13783685
    ##sequence-region IV 1 17493784
    ##sequence-region V 1 20924143
    ##sequence-region X 1 17718854
    I   curated coding_exon 11641   11689   .   +   0   CDS "Y74C9A.2"
    I   curated coding_exon 14951   15160   .   +   2   CDS "Y74C9A.2"
    I   curated coding_exon 16473   16585   .   +   2   CDS "Y74C9A.2"
    I   curated coding_exon 43733   43961   .   +   0   CDS "Y74C9A.1"
    I   curated coding_exon 44030   44234   .   +   2   CDS "Y74C9A.1"
    I   curated coding_exon 44281   44324   .   +   1   CDS "Y74C9A.1"
    I   curated coding_exon 44372   44468   .   +   2   CDS "Y74C9A.1"
    I   curated coding_exon 44521   44677   .   +   1   CDS "Y74C9A.1"
    I   curated coding_exon 47472   47610   .   +   0   CDS "Y48G1C.12"
    I   curated coding_exon 47696   47858   .   +   2   CDS "Y48G1C.12"
    I   curated coding_exon 48348   48530   .   +   1   CDS "Y48G1C.12"
    I   curated coding_exon 49251   49416   .   +   1   CDS "Y48G1C.12"

The file `orthocluster.txt` contains the synteny data. The first few
lines are shown below. The first 12 fields in each row specify
information about the synteny block in each species and the series of
numbers are orthologous gene coordinate pairs that are used for linking
orthologs with grid-lines in the GBrowse_syn display. See 'Alignment
Data' under [Further Reading](#Further_Reading) below for more details
of this loading format.

    bri chrI    176154  183558  +   .   ppa Ppa_Contig88    27212   30786   +   .   176154  27212   177594  30786   182118  27212   183558  30786   |   30786   183558  27212   182118  30786   177594  27212   176154
    bri chrI    778780  799223  +   .   ppa Ppa_Contig88    533454  542961  -   .   778780  539924  786778  542961  789497  533454  799223  538726  |   538726  799223  533454  789497  542961  786778  539924  778780
    bri chrI    986150  994698  +   .   ppa Ppa_Contig77    29481   45600   -   .   986150  37055   989649  45600   991428  29481   994698  36608   |   36608   994698  29481   991428  45600   989649  37055   986150
    bri chrI    1453793 1461931 +   .   ppa Ppa_Contig132   156183  165414  -   .   1453793 163110  1456404 165414  1456712 160849  1457637 162712  1458361 160204  1459245 160815  1459468 159346  1459854 160000  1459962 156183  1461931 159022  |   159022  1461931 156183  1459962 160000  1459854 159346  1459468 160815  1459245 160204  1458361 162712  1457637 160849  1456712 165414  1456404 163110  1453793

</div>

  
3) Set the `$TMP` environmental variable so that the database loading
script knows where to put its temp files.

<div class="indent">

    $ export TMP=/tmp

</div>

4\) Create and load a Bio::DB:GFF database for *C. elegans* (ele). Use
screen so that we can get the time-consuming loading script started
**and then use `Ctrl-A D` to set the screen running in the background**
and move on to other steps.

<div class="indent">

    $ cd ORTHOCLUSTER/gff
    $ mysql -uroot -pgmod -e 'create database ele'
    $ screen bp_fast_load_gff.pl -u root -p gmod -d ele -c ele.gff

</div>

5\) Repeat step 4 for the other two species (bri and ppa).

  
6) Create and load the alignment the alignment database. The
`gbrowse_syn_load_alignment_database.pl` script is pre-installed with
[GBrowse](GBrowse.1 "GBrowse").

<div class="indent">

    $ cd ..
    $ mysql -uroot -pgmod -e 'create database orthocluster'
    $ gbrowse_syn_load_alignment_database.pl -u root -p gmod -d orthocluster -c -v orthocluster.txt

</div>

7\) Copy the configuration files to the required location

<div class="indent">

    $ cd conf
    $ sudo cp *conf /etc/gbrowse2/synteny

</div>

8\) Go back to your browser and reload the rice page. There should now
be a second data source in a pull-down menu.  

<a href="File:GBrowse_synPulldown1.png" class="image"><img
src="../mediawiki/images/4/4a/GBrowse_synPulldown1.png" width="243"
height="77" alt="GBrowse synPulldown1.png" /></a>  

9\) Select the other data source and start browsing!  

<div class="floatleft">

<a href="File:Gbrowse_synEtfinit.png" class="image"><img
src="../mediawiki/images/thumb/5/50/Gbrowse_synEtfinit.png/700px-Gbrowse_synEtfinit.png"
class="thumbborder"
srcset="../mediawiki/images/5/50/Gbrowse_synEtfinit.png 1.5x, ../mediawiki/images/5/50/Gbrowse_synEtfinit.png 2x"
width="700" height="339" alt="Gbrowse synEtfinit.png" /></a>

</div>

  

## <span id="Mercator" class="mw-headline">Mercator</span>

MERCATOR facilitates whole-genome alignments using protein-coding exons
as anchors in the alignment procedure. It creates a map of the synteny
blocks among the genomes compared and can be used for pairwise or
multi-way alignments. The nucleotide sequence for the synteny blocks is
then aligned using alignment software (in this cased Mavid) This
exampled assumes the MERCATOR pipeline has already been run to produce
nucleotide alignment blocks. The results of MERCATOR include several
files and directories. The necessary folder for this procedure is the
alignments directory.

One advantage of MERCATOR is that it can also assemble Contigs into
"Ultracontigs" based on orthology data. For example:

The picture below shows a fragmentary nematode genome aligned with the
complete *C. elegans* genome using PECAN.
<a href="File:JaponicsPEACAN.png" class="image"><img
src="../mediawiki/images/3/3f/JaponicsPEACAN.png" width="858"
height="292" alt="JaponicsPEACAN.png" /></a>

The Picture below is the same genomic region aligned using a MERCATOR
pipeline. <a href="File:JaponicaMERCATOR.png" class="image"><img
src="../mediawiki/images/5/56/JaponicaMERCATOR.png" width="865"
height="334" alt="JaponicaMERCATOR.png" /></a>

  
Example data are taken from pairwise alignments for the species
*Drosophila yakuba* and *D. melanogaster* from the Web site
<a href="http://www.biostat.wisc.edu/∼cdewey/fly" class="external free"
rel="nofollow">http://www.biostat.wisc.edu/∼cdewey/fly</a> CAF1.

1\) Go to the sample data

<div class="indent">

    $ cd ~/Documents/Data/gbrowse_syn/
    $ tar zxf DroYak_CAF1-DroMel_CAF1.tar.gz

IN this case, DroYak_CAF1-DroMel_CAF is the alignments directory.



    $ \ls -1 DroYak_CAF1-DroMel_CAF
    1
    10
    100
    101
    102
    ---  truncated for display purposes
    94
    95
    96
    97
    98
    99
    genomes
    map
    treefile

</div>

There are 112 synteny blocks, one directory for each alignment named
"mavid.mfa". The alignments are converted to a format suitable for
loading:

<div class="indent">

    $ gbrowse_syn_mercatoraln_to_synhits.pl -d DroYak_CAF1-DroMel_CAF1 -a mavid.mfa >mercator.txt

</div>

These data are the result of a MERCATOR and MAVID alignment between
these two fly species. Although MAVID is used for the example data,
other DNA sequence alignment software could be used on the synteny
blocks identified by MERCATOR.

The file mercator.txt is in a tab delimited format designed for direct
loading into the GBrowse syn alignment (or joining) database. The format
has one tab-delimited record/line. Each line represents a synteny block,
or alignment, with 13 fields:

1.  Reference Species
2.  Reference Seqid
3.  Reference Start
4.  Reference End
5.  Reference Strand
6.  Reference Cigar-string (not used; reserved for future use)
7.  Target Species
8.  Target Seqid
9.  Target Start
10. Target End
11. Target Strand
12. Target Cigar-string (not used; reserved for future use)
13. Coordinate map (optional)

The coordinate map is used to save pair-wise nucleotide residue
coordinates for columns in the aligned sequences. It is not necessary to
store coordinates for every column. GBrowse syn usually uses multiples
of 10, typically 100. The purpose of storing the coordinate information
is to position grid lines in the graphical display that will make large
insertions and deletions in the sequences visible and intuitive.

<div class="emphasisbox">

**NOTE:** calculating the coordinate map is computationally intensive
and the script will take a long time to run for the whole genomes

</div>

Load the GBrowse syn alignment database with the script gbrowse_syn_load
alignment database.pl, which is preinstalled and can be run without
specifying the path.

<div class="indent">

\$ <span class="enter">load alignment database.pl -u root -p gmod -d
mercator -v -c mercator.txt</span>

</div>

## <span id="Further_Reading" class="mw-headline">Further Reading</span>

### <span id="Citation" class="mw-headline">Citation</span>

McKay SJ, Vergara IA and Stajich, J. 2010. "Using the Generic Synteny
Browser (Gbrowse_syn)" in Current Protocols in Bioinformatics (Wiley
Interscience) doi: 10.1002/0471250953.bi0912s31

### <span id="A_Note_on_Whole_Genome_Alignments" class="mw-headline">A Note on Whole Genome Alignments</span>

The focus of the section of the course is on dealing with alignment or
synteny data and using [GBrowse_syn](GBrowse_syn.1 "GBrowse syn").
However, how to generate whole genome alignments, identify orthologous
regions, etc, are the subject of considerable interest, so some
background reading is listed below:

- <a
  href="http://www.eecs.berkeley.edu/Pubs/TechRpts/2006/EECS-2006-104.html"
  class="external text" rel="nofollow">Primer on Hierarchical Genome
  Alignment Strategies</a>
- <a
  href="http://www.pubmedcentral.nih.gov/articlerender.fcgi?artid=2577869"
  class="external text" rel="nofollow">article on PECAN and ENREDO</a>
- <a href="http://www.ebi.ac.uk/~bjp/pecan/" class="external text"
  rel="nofollow">all about PECAN</a>
- The gene annotations for each species are in [GFF](GFF "GFF") files.
- The alignment data are in a [constrained CLUSTALW
  format](GBrowse_syn_Database#Clustal_alignment_format "GBrowse syn Database")
  (They were not generated by the program CLUSTALW, which is not
  necessarily suitable for whole genome alignments)
- There are processing steps for the alignment data but it is very
  computationally intensive and we will load pre-processed data to get a
  head start.

### <span id="Documentation" class="mw-headline">Documentation</span>

There is detailed documentation on the GMOD wiki for how to install,
configure and use GBrowse_syn. To get started, browse these pages:

- [GBrowse_syn overview](GBrowse_syn.1 "GBrowse syn")
- [Installation](GBrowse_syn.1#Installation "GBrowse syn")
- [Configuration](GBrowse_syn_Configuration "GBrowse syn Configuration")
- [Alignment Data](GBrowse_syn_Database "GBrowse syn Database")
- [The user interface](GBrowse_syn_Help "GBrowse syn Help")
- [Presentations and
  workshops](GBrowse_syn.1#Presentations_and_Workshops "GBrowse syn")

<div class="floatright">

<a href="File:IPlant.png" class="image"><img
src="../mediawiki/images/5/58/IPlant.png" width="250" height="87"
alt="IPlant.png" /></a>

</div>

</div>

<div class="printfooter">

Retrieved from
"<http://gmod.org/mediawiki/index.php?title=GBrowse_syn_AGS_Tutorial&oldid=21877>"

</div>

<div id="catlinks" class="catlinks">

<div id="mw-normal-catlinks" class="mw-normal-catlinks">

[Categories](Special:Categories "Special:Categories"):

- [Tutorials](Category:Tutorials "Category:Tutorials")
- [GMOD Components](Category:GMOD_Components "Category:GMOD Components")
- [GBrowse syn](Category:GBrowse_syn "Category:GBrowse syn")

</div>

</div>

<div id="mw-data-after-content">

<div class="smwfact">

<span class="smwfactboxhead">Facts about
"<span class="swmfactboxheadbrowse">[GBrowse syn AGS
Tutorial](Special%3ABrowse/GBrowse-20syn-20AGS-20Tutorial "Special%3ABrowse/GBrowse-20syn-20AGS-20Tutorial")</span>"</span><span class="smwrdflink"><span class="rdflink">[RDF
feed](http://gmod.org/wiki/Special:ExportRDF/GBrowse_syn_AGS_Tutorial "Special:ExportRDF/GBrowse syn AGS Tutorial")</span></span>

|  |  |
|----|----|
| [Has topic](Property:Has_topic "Property:Has topic") | [GBrowse syn](GBrowse_syn.1 "GBrowse syn") <span class="smwsearch">[+](Special%3ASearchByProperty/Has-20topic/GBrowse-20syn "Special%3ASearchByProperty/Has-20topic/GBrowse-20syn")</span> |

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
  href="http://gmod.org/mediawiki/index.php?title=Talk:GBrowse_syn_AGS_Tutorial&amp;action=edit&amp;redlink=1"
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


- <span id="t-smwbrowselink"><a href="Special%3ABrowse/GBrowse_syn_AGS_Tutorial"
  rel="smw-browse">Browse properties</a></span>


</div>

</div>

</div>

</div>

<div id="footer" role="contentinfo">

- <span id="footer-info-lastmod">Last updated at 20:52 on 3 October
  2012.</span>
<!-- - <span id="footer-info-viewcount">106,119 page views.</span> -->
- <span id="footer-info-copyright">Content is available under
  <a href="http://www.gnu.org/licenses/fdl-1.3.html" class="external"
  rel="nofollow">a GNU Free Documentation License</a> unless otherwise
  noted.</span>

<!-- -->

- <span id="footer-places-about">[About
  GMOD](GMOD:About "GMOD:About")</span>

<!-- -->






</div>
