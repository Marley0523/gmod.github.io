<div id="mw-page-base" class="noprint">

</div>

<div id="mw-head-base" class="noprint">

</div>

<div id="content" class="mw-body" role="main">

<span id="top"></span>

<div id="mw-js-message" style="display:none;">

</div>



# <span dir="auto">GBrowse syn Tutorial 2012</span>

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

<div class="emphasisbox" style="font-size:36pt">

If you are 2013 GMOD Summer School, you are on the wrong tutorial.  
Use
[GBrowse_syn_Tutorial_2013](GBrowse_syn_Tutorial_2013 "GBrowse syn Tutorial 2013").

</div>

  
This tutorial on [GBrowse syn](GBrowse_syn.1 "GBrowse syn") was taught
by [Sheldon McKay](User:Mckays "User:Mckays") as part of the [2013 GMOD
Summer School](2013_GMOD_Summer_School "2013 GMOD Summer School").

To follow along with the tutorial, you will need to use **AMI ID:
ami-5bab1c32, name: GMOD 2012 day 4 start**, available in the US East
(N. Virginia) region. See the [GMOD Cloud
Tutorial](GMOD_Cloud_Tutorial "GMOD Cloud Tutorial") for information on
how to get this AMI.

- If you are not using the Amazon EC2 instance, the system paths may
  vary from those described below.

 

[GBrowse_syn](GBrowse_syn.1 "GBrowse syn") is a
[GBrowse](GBrowse.1 "GBrowse")-based
<a href="Synteny" class="mw-redirect" title="Synteny">synteny</a>
browser designed to display multiple genomes, with a central reference
species compared to two or more additional species. It is included with
the standard GBrowse package (version 1.69 and later).

<div class="thumb tnone">

<div class="thumbinner" style="width:602px;">

<a href="File:Gbrowse_syn.png" class="image"><img
src="../mediawiki/images/thumb/1/12/Gbrowse_syn.png/600px-Gbrowse_syn.png"
class="thumbimage"
srcset="../mediawiki/images/1/12/Gbrowse_syn.png 1.5x, ../mediawiki/images/1/12/Gbrowse_syn.png 2x"
width="600" height="221" /></a>

<div class="thumbcaption">

<div class="magnify">

<a href="File:Gbrowse_syn.png" class="internal" title="Enlarge"><img
src="../mediawiki/skins/common/images/magnify-clip.png" width="15"
height="11" /></a>

</div>

GBrowse_syn at The Arabidopsis Information Resource (TAIR)

</div>

</div>

</div>

Working examples of GBrowse_syn can be seen at <a
href="http://www.arabidopsis.org/cgi-bin/gbrowse_syn/arabidopsis/?name=Chr1%3A8367000..8370501;search_src=thaliana"
class="external text" rel="nofollow">TAIR</a> and <a
href="http://mckay.cshl.edu/seq/gbrowse_syn/compara?search_src=Cele;name=X:1050001..1150000"
class="external text" rel="nofollow">WormBase</a>.

  

<div id="toc" class="toc">

<div id="toctitle">

## Contents

</div>

- [<span class="tocnumber">1</span> <span class="toctext">GBrowse_syn
  Introduction</span>](#GBrowse_syn_Introduction)
- [<span class="tocnumber">2</span> <span class="toctext">Installing
  GBrowse_syn</span>](#Installing_GBrowse_syn)
- [<span class="tocnumber">3</span> <span class="toctext">Getting
  Started</span>](#Getting_Started)
- [<span class="tocnumber">4</span> <span class="toctext">Setting up the
  sample data</span>](#Setting_up_the_sample_data)
  - [<span class="tocnumber">4.1</span> <span class="toctext">Setting up
    the Alignment Database</span>](#Setting_up_the_Alignment_Database)
  - [<span class="tocnumber">4.2</span> <span class="toctext">Setting up
    the Configuration Files</span>](#Setting_up_the_Configuration_Files)
    - [<span class="tocnumber">4.2.1</span>
      <span class="toctext">Activating the Oryza Data
      Source</span>](#Activating_the_Oryza_Data_Source)
  - [<span class="tocnumber">4.3</span> <span class="toctext">Speeding
    up the Browser</span>](#Speeding_up_the_Browser)
- [<span class="tocnumber">5</span> <span class="toctext">Using
  Non-alignment Data</span>](#Using_Non-alignment_Data)
- [<span class="tocnumber">6</span> <span class="toctext">Further
  Reading</span>](#Further_Reading)
  - [<span class="tocnumber">6.1</span> <span class="toctext">A Note on
    Whole Genome Alignments</span>](#A_Note_on_Whole_Genome_Alignments)
  - [<span class="tocnumber">6.2</span>
    <span class="toctext">Documentation</span>](#Documentation)

</div>

## <span id="GBrowse_syn_Introduction" class="mw-headline">GBrowse_syn Introduction</span>

<a
href="../mediawiki/images/a/a8/Gbrowse_syn_Intro-2012-Summer-School.pptx"
class="internal"
title="Gbrowse syn Intro-2012-Summer-School.pptx">Introductory talk on
GBrowse_syn</a>

## <span id="Installing_GBrowse_syn" class="mw-headline">Installing GBrowse_syn</span>

GBrowse_syn is part of the GBrowse 2.0 package and was pre-installed
when you went through the [GBrowse 2.0
installation](GBrowse_2.0_HOWTO "GBrowse 2.0 HOWTO").

## <span id="Getting_Started" class="mw-headline">Getting Started</span>

Point your browser to
http://ec2-##-##-##-##.compute-1.amazonaws.com/cgi-bin/gb2/gbrowse_syn

<div class="thumb tnone">

<div class="thumbinner" style="width:602px;">

<a href="File:GBrowse_synWelcome.png" class="image"><img
src="../mediawiki/images/thumb/d/d7/GBrowse_synWelcome.png/600px-GBrowse_synWelcome.png"
class="thumbimage"
srcset="../mediawiki/images/thumb/d/d7/GBrowse_synWelcome.png/900px-GBrowse_synWelcome.png 1.5x, ../mediawiki/images/d/d7/GBrowse_synWelcome.png 2x"
width="600" height="369" /></a>

<div class="thumbcaption">

<div class="magnify">

<a href="File:GBrowse_synWelcome.png" class="internal"
title="Enlarge"><img
src="../mediawiki/skins/common/images/magnify-clip.png" width="15"
height="11" /></a>

</div>

Welcome screen

</div>

</div>

</div>

This is the welcome screen you should see after installing a new copy of
GBrowse_syn with no configured data sources. It contains instructions on
how to set up the example data source provided with the distribution.

## <span id="Setting_up_the_sample_data" class="mw-headline">Setting up the sample data</span>

<div class="emphasisbox">

- Sample data and configuration information for GBrowse_syn come
  pre-packaged with GBrowse.
- The example we will use is a two-species comparison of rice (*Oryza
  sativa*) and one of its wild relatives\*

<div class="zero small">

\*Data courtesy of Bonnie Hurwitz

</div>

</div>

### <span id="Setting_up_the_Alignment_Database" class="mw-headline">Setting up the Alignment Database</span>

The alignment, or joining database will contain the sequence alignments
between the two rice species. It will be in a [MySQL](MySQL "MySQL")
database. If mysql is not installed on your server, you can install it
as follows:

**Debian-based Linux distributions:**

    $ sudo apt-get update
    $ sudo apt-get install mysql-client
    $ sudo apt-get install mysql-servery

**RedHat-based Linux distributions**

    $ sudo yum install mysql

<div class="emphasisbox">

Note: You set the mysql root password at the time of installation. Use
'gbsyndemo' or else be sure to remember the password for use later.

</div>

1\) Create a MySQL database to hold the alignment data

    $ mysql -u root -p
    Enter password: ****************

     
    Welcome to the MySQL monitor.  Commands end with ; or \g.
     Your MySQL connection id is 37
     Server version: 5.1.37-1ubuntu5.1 (Ubuntu)

     Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

     mysql> create database rice_synteny;
     Query OK, 1 row affected (0.00 sec)

     mysql>

2\) Give read-only (SELECT privileges in SQL) to the default apache user
`www-data`. We can do this for all of the MySQL databases, since they
are all for web applications

    mysql> GRANT SELECT on *.* TO 'www-data'@'localhost';
    Query OK, 0 rows affected (0.00 sec)

    mysql> quit

3\) Load the sample alignment database. You need to have root-level
access (be a sudoer) for some of the steps below.

    $ cd /data/var/lib/gbrowse2/databases/gbrowse_syn/alignments

Have a look at the first few lines of the data:

    $ zcat rice.aln.gz | head -20

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

Load the database with the script `gbrowse_syn_load_alignments_msa.pl`,
which is automatically installed along with GBrowse. See the
\[GBrowse_syn scripts\] page for details on the options for the script.

    $ zcat rice.aln.gz | gbrowse_syn_load_alignments_msa.pl -u root -p ******* -d rice_synteny -c -v -

There are 1800 alignment blocks, so this will take a little while to
run.

### <span id="Setting_up_the_Configuration_Files" class="mw-headline">Setting up the Configuration Files</span>

<div class="emphasisbox">

- The configuration files required for this data source are
  pre-installed with [GBrowse](GBrowse.1 "GBrowse"), in
  `/data/etc/gbrowse2/synteny/`.
- There are config files for two species, `rice_synteny.conf` and
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

    $ sudo mkdir /var/www/tmp
    $ sudo mkdir /var/www/tmp/gbrowse2
    $ sudo chmod 777 /var/www/tmp/gbrowse2

2\) Renaming the configuration file

    $ cd /data/etc/gbrowse2/synteny
    $ sudo mv oryza.synconf.disabled oryza.synconf

3\) Point your browser to
http://ec2-##-##-##-##.compute-1.amazonaws.com/cgi-bin/gb2/gbrowse_syn/oryza
(or your own URL if you are not using the Amazon EC2 instance). You
should see:

<div class="thumb tnone">

<div class="thumbinner" style="width:802px;">

<a href="File:GBrowse_synWe_made_it1.png" class="image"><img
src="../mediawiki/images/thumb/8/86/GBrowse_synWe_made_it1.png/800px-GBrowse_synWe_made_it1.png"
class="thumbimage"
srcset="../mediawiki/images/8/86/GBrowse_synWe_made_it1.png 1.5x, ../mediawiki/images/8/86/GBrowse_synWe_made_it1.png 2x"
width="800" height="370" alt="GBrowse synWe made it1.png" /></a>

<div class="thumbcaption">

<div class="magnify">

<a href="File:GBrowse_synWe_made_it1.png" class="internal"
title="Enlarge"><img
src="../mediawiki/skins/common/images/magnify-clip.png" width="15"
height="11" /></a>

</div>

</div>

</div>

</div>

4\) Click on the first example, you should (eventually) see:

<div class="thumb tnone">

<div class="thumbinner" style="width:802px;">

<a href="File:GBrowse_synWe_made_it2.png" class="image"><img
src="../mediawiki/images/thumb/4/45/GBrowse_synWe_made_it2.png/800px-GBrowse_synWe_made_it2.png"
class="thumbimage"
srcset="../mediawiki/images/4/45/GBrowse_synWe_made_it2.png 1.5x, ../mediawiki/images/4/45/GBrowse_synWe_made_it2.png 2x"
width="800" height="368" alt="GBrowse synWe made it2.png" /></a>

<div class="thumbcaption">

<div class="magnify">

<a href="File:GBrowse_synWe_made_it2.png" class="internal"
title="Enlarge"><img
src="../mediawiki/skins/common/images/magnify-clip.png" width="15"
height="11" /></a>

</div>

</div>

</div>

</div>

5\) Try out a few user interface features:

- mouse over one of the genes:

<a href="File:Gbrowse_synBubble1.png" class="image"><img
src="../mediawiki/images/4/4b/Gbrowse_synBubble1.png" width="369"
height="148" alt="Gbrowse synBubble1.png" /></a>

- Click on one of the bold blue highlighted section titles. This takes
  you to a contextual help page on the GMOD wiki.

### <span id="Speeding_up_the_Browser" class="mw-headline">Speeding up the Browser</span>

You can speed up the image loading time by putting your species'
[GFF3](GFF3 "GFF3") data into relational MySQL databases.

1\) Create a database for each of the GFF data files (`rice.gff3` and
`wild_rice.gff3`).

    $ mysql -uroot -pgbsyndemo

    mysql> create database rice;
    Query OK, 1 row affected (0.00 sec)

    mysql> create database wild_rice;
    Query OK, 1 row affected (0.00 sec)

    mysql> quit

2\) Populate the databases using the [Loading
`bp_seqfeature_load.pl`](GBrowse_Install_HOWTO#GFF3 "GBrowse Install HOWTO")
(pre-installed as part of [BioPerl](BioPerl "BioPerl") with
[GBrowse](GBrowse.1 "GBrowse")). This will load the [GFF3](GFF3 "GFF3")
data into a MySQL relational database. Note the MySQL user will
root-level privileges.

    $ cd /var/www/gbrowse2/databases/gbrowse_syn/rice
    $ bp_seqfeature_load.pl -u root -p gbsyndemo -d rice -c -f rice.gff3
    loading rice.gff3...
    Building object tree...
    0.55s0s

    Loading bulk data into database... 0.73s
    load time: 11.99s

    $ cd ../wild_rice
    $ bp_seqfeature_load.pl -u root -p gbsyndemo -d wild_rice -c -f wild_rice.gff3
    loading wild_rice.gff3...
    Building object tree...
    0.55s7a

    Loading bulk data into database... 0.69s
    load time: 12.02s

3\) Modify the following stanza in the file `rice_synteny.conf` in cd
/etc/gbrowse2/synteny/. This will convert your data source from a flat
file database to a MySQL relational database.

    # from
    db_args       = -adaptor memory
                    -dir    /var/www/html/gbrowse/databases/gbrowse_syn/rice

    # to
    db_args       = -dsn dbi:mysql:rice

4\) repeat for `wild_rice_synteny.conf`

## <span id="Using_Non-alignment_Data" class="mw-headline">Using Non-alignment Data</span>

<div class="emphasisbox">

This example uses gene orthology-based synteny blocks\* based created by
<a href="http://genome.sfu.ca/orthoclusterdb" class="external text"
rel="nofollow">OrthoCluster</a> for three nematode species, *C.
elegans*, *C. briggsae* and *P. pacificus*.

<div class="zero small">

*\*Data courtesy of Jack Chen and Ismael Vergera*

</div>

</div>

1\) Download and unpack the data archive file `orthocluster.tar.gz`.

    $ cd ~/Documents/Data/gbrowse_syn
    $ rm orthocluster.tar.gz
    $ wget ftp://ftp.gmod.org/pub/gmod/GBrowse_syn/orthocluster.tar.gz
    $ tar zxf orthocluster.tar.gz

\$ tar zxvf orthocluster.tar.gz

    ORTHOCLUSTER/
    ORTHOCLUSTER/conf/
    ORTHOCLUSTER/gff/
    ORTHOCLUSTER/orthocluster.txt
    ORTHOCLUSTER/gff/bri.gff
    ORTHOCLUSTER/gff/ele.gff
    ORTHOCLUSTER/gff/ppa.gff
    ORTHOCLUSTER/conf/bri.conf
    ORTHOCLUSTER/conf/ele.conf
    ORTHOCLUSTER/conf/orthocluster.synconf
    ORTHOCLUSTER/conf/ppa.conf

  
In the `conf` directory, there are configuration files for the joining
database and each of the three species. Note that the annotation data
are in old-school GFF3 format:

    head -20 bri.gff

\$ head -20 ele.gff

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

We know that there are only split CDS features:

    cut -f3 ele.gff | sort -u

We can convert this simple GFF to GFF3 with a perl one-liner:

    perl -pe 's/version 2/version 3/;s/CDS /Parent=/;s/coding_exon/CDS/' ele.gff >ele.gff3

Then load into a Bio::DB::SeqFeature::Store database

    mysql -uroot -pgbsyndemo -e 'create database ele'
    bp_seqfeature_load -u root -p gbsyndemo -d ele -c -f ele.gff3

  


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

  
3) Set the `$TMP` environmental variable so that the database loading
script knows where to put its temp files.

    $ export TMP=/tmp

4\) Create and load a Bio::DB:GFF database for *C. elegans* (ele). Use
screen so that we can get the time-consuming loading script started
**and then use `Ctrl-A D` to set the screen running in the background**
and move on to other steps.

    $ cd ORTHOCLUSTER/gff
    $ mysql -uroot -pgbsyndemo -e 'create database ele'
    $ screen bp_fast_load_gff.pl -u root -p gbsyndemo -d ele -c ele.gff

5\) Repeat step 4 for the other two species (bri and ppa).

6\) Create and load the alignment the alignment database. The
`gbrowse_syn_load_alignment_database.pl` script is pre-installed with
[GBrowse](GBrowse.1 "GBrowse").

    $ cd ..
    $ mysql -uroot -pgbsyndemo -e 'create database orthocluster'
    $ gbrowse_syn_load_alignment_database.pl -u root -p gbsyndemo -d orthocluster -c -v orthocluster.txt

7\) Copy the configuration files to the required location

    $ cd conf
    $ sudo cp *conf /etc/gbrowse2/synteny

8\) Go back to your browser and reload the rice page. There should now
be a second data source in a pull-down menu.

<a href="File:GBrowse_synPulldown1.png" class="image"><img
src="../mediawiki/images/4/4a/GBrowse_synPulldown1.png" width="243"
height="77" alt="GBrowse synPulldown1.png" /></a>

9\) Select the other data source and start browsing!

<div class="thumb tnone">

<div class="thumbinner" style="width:702px;">

<a href="File:Gbrowse_synEtfinit.png" class="image"><img
src="../mediawiki/images/thumb/5/50/Gbrowse_synEtfinit.png/700px-Gbrowse_synEtfinit.png"
class="thumbimage"
srcset="../mediawiki/images/5/50/Gbrowse_synEtfinit.png 1.5x, ../mediawiki/images/5/50/Gbrowse_synEtfinit.png 2x"
width="700" height="339" alt="Gbrowse synEtfinit.png" /></a>

<div class="thumbcaption">

<div class="magnify">

<a href="File:Gbrowse_synEtfinit.png" class="internal"
title="Enlarge"><img
src="../mediawiki/skins/common/images/magnify-clip.png" width="15"
height="11" /></a>

</div>

</div>

</div>

</div>

## <span id="Further_Reading" class="mw-headline">Further Reading</span>

### <span id="A_Note_on_Whole_Genome_Alignments" class="mw-headline">A Note on Whole Genome Alignments</span>

The focus of the section of the course is on dealing with alignment or
synteny data and using [GBrowse_syn](GBrowse_syn.1 "GBrowse syn").
However, how to generate whole genome alignments, identify orthologous
regions, etc., are the subject of considerable interest, so some
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

</div>

<div class="printfooter">

Retrieved from
"<http://gmod.org/mediawiki/index.php?title=GBrowse_syn_Tutorial_2012&oldid=24162>"

</div>

<div id="catlinks" class="catlinks">

<div id="mw-normal-catlinks" class="mw-normal-catlinks">

[Categories](Special:Categories "Special:Categories"):

- [2012 Summer
  School](Category:2012_Summer_School "Category:2012 Summer School")
- [GBrowse syn](Category:GBrowse_syn "Category:GBrowse syn")
- [Tutorials](Category:Tutorials "Category:Tutorials")

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
  href="http://gmod.org/mediawiki/index.php?title=Talk:GBrowse_syn_Tutorial_2012&amp;action=edit&amp;redlink=1"
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


- <span id="t-smwbrowselink"><a href="Special:Browse/GBrowse_syn_Tutorial_2012"
  rel="smw-browse">Browse properties</a></span>


</div>

</div>

</div>

</div>

<div id="footer" role="contentinfo">

- <span id="footer-info-lastmod">Last updated at 17:23 on 22 July
  2013.</span>
<!-- - <span id="footer-info-viewcount">51,349 page views.</span> -->
- <span id="footer-info-copyright">Content is available under
  <a href="http://www.gnu.org/licenses/fdl-1.3.html" class="external"
  rel="nofollow">a GNU Free Documentation License</a> unless otherwise
  noted.</span>

<!-- -->

- <span id="footer-places-about">[About
  GMOD](GMOD:About "GMOD:About")</span>

<!-- -->






</div>
