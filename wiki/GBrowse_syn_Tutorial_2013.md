



<span id="top"></span>




# <span dir="auto">GBrowse syn Tutorial 2013</span>









This tutorial on [GBrowse syn](GBrowse_syn.1 "GBrowse syn") was taught
by [Sheldon McKay](User%3AMckays "User%3AMckays") as part of the [2013 GMOD
Summer School](2013_GMOD_Summer_School "2013 GMOD Summer School").

The starting image for this tutorial is **2013 GMOD start day 4
(ami-3f7c0456)**. It can be run as a micro or small instance.

- If you are not using the Amazon EC2 instance, the system paths may
  vary from those described below.

 

[GBrowse_syn](GBrowse_syn.1 "GBrowse syn") is a
[GBrowse](GBrowse.1 "GBrowse")-based
<a href="Synteny" class="mw-redirect" title="Synteny">synteny</a>
browser designed to display multiple genomes, with a central reference
species compared to two or more additional species. It is included with
the standard GBrowse package (version 1.69 and later).


<a href="File:Gbrowse_syn.png" class="image"><img
src="https://raw.githubusercontent.com/GMOD/gmod.github.io/main/mediawiki/images/thumb/1/12/Gbrowse_syn.png/600px-Gbrowse_syn.png"
class="thumbimage"
srcset="https://raw.githubusercontent.com/GMOD/gmod.github.io/main/mediawiki/images/1/12/Gbrowse_syn.png 1.5x, https://raw.githubusercontent.com/GMOD/gmod.github.io/main/mediawiki/images/1/12/Gbrowse_syn.png 2x"
width="600" height="221" /></a>


<a href="File:Gbrowse_syn.png" class="internal" title="Enlarge"><img
src="../mediawiki/skins/common/images/magnify-clip.png" width="15"
height="11" /></a>



GBrowse_syn at The Arabidopsis Information Resource (TAIR)




Working examples of GBrowse_syn can be seen at <a
href="http://www.arabidopsis.org/cgi-bin/gbrowse_syn/arabidopsis/?name=Chr1%3A8367000..8370501;search_src=thaliana"
class="external text" rel="nofollow">TAIR</a> and <a
href="http://mckay.cshl.edu/seq/gbrowse_syn/compara?search_src=Cele;name=X:1050001..1150000"
class="external text" rel="nofollow">WormBase</a>.

  


## Contents



- [<span class="tocnumber">1</span> <span class="toctext">GBrowse_syn
  Introduction</span>](#GBrowse_syn_Introduction)
- [<span class="tocnumber">2</span> <span class="toctext">Installing
  GBrowse_syn</span>](#Installing_GBrowse_syn)
- [<span class="tocnumber">3</span> <span class="toctext">Running
  GBrowse for the First
  Time</span>](#Running_GBrowse_for_the_First_Time)
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
  - [<span class="tocnumber">5.1</span> <span class="toctext">Species
    Gene Annotations</span>](#Species_Gene_Annotations)
  - [<span class="tocnumber">5.2</span>
    <span class="toctext">Configurations
    Files</span>](#Configurations_Files)
  - [<span class="tocnumber">5.3</span> <span class="toctext">The
    Alignment Data</span>](#The_Alignment_Data)
- [<span class="tocnumber">6</span> <span class="toctext">Further
  Reading</span>](#Further_Reading)
  - [<span class="tocnumber">6.1</span> <span class="toctext">A Note on
    Whole Genome Alignments</span>](#A_Note_on_Whole_Genome_Alignments)
  - [<span class="tocnumber">6.2</span>
    <span class="toctext">Documentation</span>](#Documentation)



## <span id="GBrowse_syn_Introduction" class="mw-headline">GBrowse_syn Introduction</span>

<a
href="https://raw.githubusercontent.com/GMOD/gmod.github.io/main/mediawiki/images/3/30/Gbrowse_syn_Intro-2013-Summer-School.pptx"
class="internal"
title="Gbrowse syn Intro-2013-Summer-School.pptx">Introductory talk on
GBrowse_syn</a>

## <span id="Installing_GBrowse_syn" class="mw-headline">Installing GBrowse_syn</span>

GBrowse_syn is part of the GBrowse 2.0 package and was pre-installed
when you went through the [GBrowse 2.0
installation](GBrowse_2.0_HOWTO "GBrowse 2.0 HOWTO").

Update GBrowse to get recent changes **1) Get a copy of the Gbrowse
github repository**

    $ git clone https://github.com/GMOD/GBrowse.git GBrowse

**2) Clean up the synteny conf folder (the may be some older junk lying
around)**

    $ sudo rm -f /data/etc/gbrowse2/synteny/*

**3) Upgrade GBrowse**



- Select /data/etc/gbrowse2/ when prompted (instead of /etc/gbrowse2)
- Select <span class="tt">K (Keep)</span> when prompted if you do not
  want to overwrite default configuration files



    $ cd ~/GBrowse
    $ perl Build.PL
    $ perl Build install

**4) Create a symbolic link to the GBrowse temp folder (for caching of
sessions, images, etc)**

    $ cd /var/www
    $ ln -s ../tmp

## <span id="Running_GBrowse_for_the_First_Time" class="mw-headline">Running GBrowse for the First Time</span>

Point your browser to
http://ec2-##-##-##-##.compute-1.amazonaws.com/cgi-bin/gb2/gbrowse_syn


<a href="File:GBrowse_synWelcome.png" class="image"><img
src="https://raw.githubusercontent.com/GMOD/gmod.github.io/main/mediawiki/images/thumb/d/d7/GBrowse_synWelcome.png/600px-GBrowse_synWelcome.png"
class="thumbimage"
srcset="https://raw.githubusercontent.com/GMOD/gmod.github.io/main/mediawiki/images/thumb/d/d7/GBrowse_synWelcome.png/900px-GBrowse_synWelcome.png 1.5x, https://raw.githubusercontent.com/GMOD/gmod.github.io/main/mediawiki/images/d/d7/GBrowse_synWelcome.png 2x"
width="600" height="369" /></a>


<a href="File:GBrowse_synWelcome.png" class="internal"
title="Enlarge"><img
src="../mediawiki/skins/common/images/magnify-clip.png" width="15"
height="11" /></a>



Welcome screen




This is the welcome screen you should see after installing a new copy of
GBrowse_syn with no configured data sources. It contains instructions on
how to set up the example data source provided with the distribution.

## <span id="Setting_up_the_sample_data" class="mw-headline">Setting up the sample data</span>



- Sample data and configuration information for GBrowse_syn come
  pre-packaged with GBrowse.
- The example we will use is a two-species comparison of rice (*Oryza
  sativa*) and one of its wild relatives\*



\*Data courtesy of Bonnie Hurwitz


### <span id="Setting_up_the_Alignment_Database" class="mw-headline">Setting up the Alignment Database</span>

The alignment, or joining database will contain the sequence alignments
between the two rice species. It will be in a [MySQL](MySQL "MySQL")
database. If mysql is not installed on your server, you can install it
as follows:

**Debian-based Linux distributions:**

    $ sudo apt-get update
    $ sudo apt-get install mysql-client
    $ sudo apt-get install mysql-server

**RedHat-based Linux distributions**

    $ sudo yum install mysql



Note: You set the mysql root password at the time of installation. Use
'gbsyndemo' or else be sure to remember the password for use later.



**1) Create a MySQL database to hold the alignment data**

    $ mysql -u root -p
    Enter password: ****************

     
    Welcome to the MySQL monitor.  Commands end with ; or \g.
     Your MySQL connection id is 37
     Server version: 5.1.37-1ubuntu5.1 (Ubuntu)

     Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

     mysql> create database rice_synteny;
     Query OK, 1 row affected (0.00 sec)

     mysql>

**2) Give read-only (SELECT privileges in SQL) to the default apache
user `www-data`.** We can do this for all of the MySQL databases, since
they are all for web applications

    mysql> GRANT SELECT on *.* TO 'www-data'@'localhost';
    Query OK, 0 rows affected (0.00 sec)

    mysql> quit

**3) Load the sample alignment database. You need to have root-level
access (be a sudoer) for some of the steps below.**

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

There are 185 alignment blocks, it takes a moment to load

### <span id="Setting_up_the_Configuration_Files" class="mw-headline">Setting up the Configuration Files</span>



- The configuration files required for this data source are
  pre-installed with [GBrowse](GBrowse.1 "GBrowse"), in
  `/data/etc/gbrowse2/synteny/`.
- There are config files for two species, `rice_synteny.conf` and
  `wild_rice_synteny.conf`, and the joining config file,
  `oryza.synconf`. The latter file has been disabled by appending a
  '.disabled' extension to the file name.



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



Note: the species databases are actually using the [GFF3](GFF3 "GFF3")
flat file, in-memory adapter



#### <span id="Activating_the_Oryza_Data_Source" class="mw-headline">Activating the Oryza Data Source</span>

**1) Make sure the temporary image directory specified in the config
files exists and is world-writable**

    $ sudo mkdir /var/www/tmp
    $ sudo mkdir /var/www/tmp/gbrowse2
    $ sudo chmod 777 /var/www/tmp/gbrowse2

2\) Renaming the configuration file

    $ cd /data/etc/gbrowse2/synteny
    $ sudo mv oryza.synconf.disabled.conf oryza.synconf

**3) Point your browser to
http://ec2-##-##-##-##.compute-1.amazonaws.com/cgi-bin/gb2/gbrowse_syn/oryza
(or your own URL if you are not using the Amazon EC2 instance). You
should see**:


<a href="File:GBrowse_synWe_made_it1.png" class="image"><img
src="https://raw.githubusercontent.com/GMOD/gmod.github.io/main/mediawiki/images/thumb/8/86/GBrowse_synWe_made_it1.png/800px-GBrowse_synWe_made_it1.png"
class="thumbimage"
srcset="https://raw.githubusercontent.com/GMOD/gmod.github.io/main/mediawiki/images/8/86/GBrowse_synWe_made_it1.png 1.5x, https://raw.githubusercontent.com/GMOD/gmod.github.io/main/mediawiki/images/8/86/GBrowse_synWe_made_it1.png 2x"
width="800" height="370" alt="GBrowse synWe made it1.png" /></a>


<a href="File:GBrowse_synWe_made_it1.png" class="internal"
title="Enlarge"><img
src="../mediawiki/skins/common/images/magnify-clip.png" width="15"
height="11" /></a>



**4) Click on the first example, you should (eventually) see:**


<a href="File:GBrowse_synWe_made_it2.png" class="image"><img
src="https://raw.githubusercontent.com/GMOD/gmod.github.io/main/mediawiki/images/thumb/4/45/GBrowse_synWe_made_it2.png/800px-GBrowse_synWe_made_it2.png"
class="thumbimage"
srcset="https://raw.githubusercontent.com/GMOD/gmod.github.io/main/mediawiki/images/4/45/GBrowse_synWe_made_it2.png 1.5x, https://raw.githubusercontent.com/GMOD/gmod.github.io/main/mediawiki/images/4/45/GBrowse_synWe_made_it2.png 2x"
width="800" height="368" alt="GBrowse synWe made it2.png" /></a>


<a href="File:GBrowse_synWe_made_it2.png" class="internal"
title="Enlarge"><img
src="../mediawiki/skins/common/images/magnify-clip.png" width="15"
height="11" /></a>



**5) Try out a few user interface features:**

- mouse over one of the genes:

<a href="File:Gbrowse_synBubble1.png" class="image"><img
src="https://raw.githubusercontent.com/GMOD/gmod.github.io/main/mediawiki/images/4/4b/Gbrowse_synBubble1.png" width="369"
height="148" alt="Gbrowse synBubble1.png" /></a>

- Click on one of the bold blue highlighted section titles. This takes
  you to a contextual help page on the GMOD wiki.

### <span id="Speeding_up_the_Browser" class="mw-headline">Speeding up the Browser</span>

You can speed up the image loading time by putting your species'
[GFF3](GFF3 "GFF3") data into relational MySQL databases.

**1) Create a database for each of the GFF data files (`rice.gff3` and
`wild_rice.gff3`).**

    $ mysql -uroot -pgbsyndemo

    mysql> create database rice;
    Query OK, 1 row affected (0.00 sec)

    mysql> create database wild_rice;
    Query OK, 1 row affected (0.00 sec)

    mysql> quit

**2) Populate the databases using the [Loading
`bp_seqfeature_load`](GBrowse_Install_HOWTO#GFF3 "GBrowse Install HOWTO")
(pre-installed as part of [BioPerl](BioPerl "BioPerl") with
[GBrowse](GBrowse.1 "GBrowse")).** This will load the
[GFF3](GFF3 "GFF3") data into a MySQL relational database. Note the
MySQL user will root-level privileges.

    $ cd /var/www/gbrowse2/databases/gbrowse_syn/rice
    $ bp_seqfeature_load -u root -p gbsyndemo -d rice -c -f rice.gff3
    loading rice.gff3...
    Building object tree...
    0.55s0s

    Loading bulk data into database... 0.73s
    load time: 11.99s

    $ cd ../wild_rice
    $ bp_seqfeature_load -u root -p gbsyndemo -d wild_rice -c -f wild_rice.gff3
    loading wild_rice.gff3...
    Building object tree...
    0.55s7a

    Loading bulk data into database... 0.69s
    load time: 12.02s

**3) Modify the following stanza in the file `rice_synteny.conf` in cd
/etc/gbrowse2/synteny/.** This will convert your data source from a flat
file database to a MySQL relational database.

    # from
    db_args       = -adaptor memory
                    -dir    /var/www/html/gbrowse/databases/gbrowse_syn/rice

    # to
    db_args       = -adaptor DBI::mysql
                           -dsn dbi:mysql:rice

**4) repeat for `wild_rice_synteny.conf`**

## <span id="Using_Non-alignment_Data" class="mw-headline">Using Non-alignment Data</span>



This example uses gene orthology-based synteny blocks\* based created by
<a href="http://genome.sfu.ca/orthoclusterdb" class="external text"
rel="nofollow">OrthoCluster</a> for three nematode species, *C.
elegans*, *C. briggsae* and *P. pacificus*.



*\*Data courtesy of Jack Chen and Ismael Vergera*


**1) Download and unpack the data archive file `orthocluster.tar.gz`**.

    $ mkdir ~/data
    $ cd data
    $ wget http://gmod.org/extras/orthocluster.tar.gz
    $ tar zxvf orthocluster.tar.gz 
    ORTHOCLUSTER/
    ORTHOCLUSTER/conf/
    ORTHOCLUSTER/gff/
    ORTHOCLUSTER/orthocluster.txt
    ORTHOCLUSTER/gff/bri.gff3
    ORTHOCLUSTER/gff/ele.gff3
    ORTHOCLUSTER/gff/ppa.gff3
    ORTHOCLUSTER/conf/bri.conf
    ORTHOCLUSTER/conf/ele.conf
    ORTHOCLUSTER/conf/orthocluster.synconf
    ORTHOCLUSTER/conf/ppa.conf

### <span id="Species_Gene_Annotations" class="mw-headline">Species Gene Annotations</span>

In the `gff` directory, there are GFF3 annotations for three species

<span class="enter"> \$ head -20 ele.gff3</span>

    ##gff-version 3 
    ##sequence-region I 1 15072421
    ##sequence-region II 1 15279324
    ##sequence-region III 1 13783685
    ##sequence-region IV 1 17493784
    ##sequence-region V 1 20924143
    ##sequence-region X 1 17718854
    IV  curated mRNA    11012483    11015853    .   -   .   ID=F13H10.3a;Name=F13H10.3a
    IV  curated CDS 11012483    11012648    .   -   1   Parent=F13H10.3a
    IV  curated CDS 11012694    11012932    .   -   0   Parent=F13H10.3a
    IV  curated CDS 11013456    11013667    .   -   2   Parent=F13H10.3a
    IV  curated CDS 11013719    11013817    .   -   2   Parent=F13H10.3a
    IV  curated CDS 11013878    11014105    .   -   2   Parent=F13H10.3a
    IV  curated CDS 11014195    11014434    .   -   2   Parent=F13H10.3a
    IV  curated CDS 11014489    11014646    .   -   1   Parent=F13H10.3a
    IV  curated CDS 11014695    11014792    .   -   0   Parent=F13H10.3a
    IV  curated CDS 11014841    11015114    .   -   1   Parent=F13H10.3a
    IV  curated CDS 11015624    11015724    .   -   0   Parent=F13H10.3a
    IV  curated CDS 11015821    11015853    .   -   0   Parent=F13H10.3a
    II  curated mRNA    2824413 2824910 .   +   .   ID=K12H6.9;Name=K12H6.9

**2) Create a new data for *C. elegans***

    $ mysql -uroot -pgbsyndemo -e 'create database ele'

**3) Create and load a Bio::DB:SeqFeature::Store database for *C.
elegans* (ele).**

We use screen so that we can get the time-consuming loading script
started and then use `Ctrl-A D` to set the screen running in the
background' and move on to other steps.

    $ screen bp_seqfeature_load -u root -p gbsyndemo -d ele -c -f ele.gff3

**4) Repeat steps 2 and 3 for the other two species (bri and ppa).**

### <span id="Configurations_Files" class="mw-headline">Configurations Files</span>

The <span class="tt">conf</span> has configuration files for each of the
species and the alignment database.

**Example species configuration:**

    [GENERAL]
    description   = C. briggsae
    db_adaptor    = Bio::DB::SeqFeature::Store
    db_args       = -dsn dbi:mysql:bri

    tmpimages   = /tmp/gbrowse2

    [CG]
    label        = 1
    description  = 1
    feature      = mRNA
    category     = Genes
    glyph        = processed_transcript
    font2color   = blue
    height       = 6
    key          = Gene Models
    bgcolor      = sub {
      my $flip = pop->panel->flip;
      my $strand = shift->strand;
      return $strand < 0 ? 'violet' : 'turquoise' if $flip;
      return $strand > 0 ? 'violet' : 'turquoise';
     }

    # draw genes differently for segments > 100Kb
    [CG:100001]
    label        = 0
    description  = 0
    glyph        = generic
    strand_arrow = 1

**The alignment configuration:**

    [GENERAL]
    description =  OrthoCluster Perfect Synteny Blocks

    # The synteny database
    join        = dbi:mysql:orthocluster

    #                 symbolic src   config file (".conf")    Description
    source_map =      ele            ele                      "C. elegans" 
                      bri            bri                      "C. briggsae"
                      ppa            ppa                      "P. pacificus"


    # web site configuration info
    tmpimages     = /tmp/gbrowse2
    imagewidth    = 800
    stylesheet    = /gbrowse2/css/gbrowse_transparent.css


    # The extension of species config files
    # can also use .syn (the default)
    config_extension = conf

    # sparse data, use all coordinates
    grid coordinates  = exact

    # example searches to display
    examples = ele X:402000..426999
               bri chrX:255000..275000

    zoom levels = 5000 10000 25000 50000 100000 200000 400000 1000000

    # species-specific databases
    [ele]
    tracks    = CG 
    color     = green

    [bri]
    tracks    = CG
    color     = blue

    [ppa]
    tracks    = CG
    color     = red

**5) Install the configuration files**

    $ cd ~/data/ORTHOCLUSTER/conf
    $ sudo cp *.conf /data/etc/gbrowse2/synteny

### <span id="The_Alignment_Data" class="mw-headline">The Alignment Data</span>

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

**6) Create and load the alignment the alignment database. The
`gbrowse_syn_load_alignment_database.pl` script is pre-installed with
[GBrowse](GBrowse.1 "GBrowse").**

    $ cd ..
    $ mysql -uroot -pgbsyndemo -e 'create database orthocluster'
    $ gbrowse_syn_load_alignment_database.pl -u root -p gbsyndemo -d orthocluster -c -v orthocluster.txt

**7) Go back to your browser and reload the rice page. There should now
be a second data source in a pull-down menu.**

<a href="File:GBrowse_synPulldown1.png" class="image"><img
src="https://raw.githubusercontent.com/GMOD/gmod.github.io/main/mediawiki/images/4/4a/GBrowse_synPulldown1.png" width="243"
height="77" alt="GBrowse synPulldown1.png" /></a>

**8) Select the other data source and start browsing!**


<a href="File:Gbrowse_synEtfinit.png" class="image"><img
src="https://raw.githubusercontent.com/GMOD/gmod.github.io/main/mediawiki/images/thumb/5/50/Gbrowse_synEtfinit.png/700px-Gbrowse_synEtfinit.png"
class="thumbimage"
srcset="https://raw.githubusercontent.com/GMOD/gmod.github.io/main/mediawiki/images/5/50/Gbrowse_synEtfinit.png 1.5x, https://raw.githubusercontent.com/GMOD/gmod.github.io/main/mediawiki/images/5/50/Gbrowse_synEtfinit.png 2x"
width="700" height="339" alt="Gbrowse synEtfinit.png" /></a>


<a href="File:Gbrowse_synEtfinit.png" class="internal"
title="Enlarge"><img
src="../mediawiki/skins/common/images/magnify-clip.png" width="15"
height="11" /></a>



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








## Navigation menu






### 



<a href="Main_Page"
style="background-image: url(../images/GMOD-cogs.png);"
title="Visit the main page"></a>


### Navigation



- <span id="n-GMOD-Home">[GMOD Home](Main_Page)</span>
- <span id="n-Software">[Software](GMOD_Components)</span>
- <span id="n-Categories-.2F-Tags">[Categories /
  Tags](Categories)</span>




### Documentation



- <span id="n-Overview">[Overview](Overview)</span>
- <span id="n-FAQs">[FAQs](Category%3AFAQ)</span>
- <span id="n-HOWTOs">[HOWTOs](Category%3AHOWTO)</span>
- <span id="n-Glossary">[Glossary](Glossary)</span>




### Community



- <span id="n-GMOD-News">[GMOD News](GMOD_News)</span>
- <span id="n-Training-.2F-Outreach">[Training /
  Outreach](Training_and_Outreach)</span>
- <span id="n-Support">[Support](Support)</span>
- <span id="n-GMOD-Promotion">[GMOD Promotion](GMOD_Promotion)</span>
- <span id="n-Meetings">[Meetings](Meetings)</span>
- <span id="n-Calendar">[Calendar](Calendar)</span>




### Tools

- <span id="t-smwbrowselink"><a href="Special%3ABrowse/GBrowse_syn_Tutorial_2013"
  rel="smw-browse">Browse properties</a></span>



- <span id="footer-info-lastmod">Last updated at 10:44 on 22 May
  2014.</span>
<!-- - <span id="footer-info-viewcount">109,851 page views.</span> -->
- <span id="footer-info-copyright">Content is available under
  <a href="http://www.gnu.org/licenses/fdl-1.3.html" class="external"
  rel="nofollow">a GNU Free Documentation License</a> unless otherwise
  noted.</span>

<!-- -->

- <span id="footer-places-about">[About
  GMOD](GMOD%3AAbout "GMOD%3AAbout")</span>

<!-- -->




