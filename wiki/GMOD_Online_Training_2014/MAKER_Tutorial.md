



<span id="top"></span>




# <span dir="auto">GMOD Online Training 2014/MAKER Tutorial</span>









<a href="http://www.cafepress.com/+maker-genome-annotation+gifts"
class="external text" rel="nofollow">Get MAKER Bling!</a>

  


## Contents



- [<span class="tocnumber">1</span> <span class="toctext">About
  MAKER</span>](#About_MAKER)
- [<span class="tocnumber">2</span> <span class="toctext">Introduction
  to Genome Annotation</span>](#Introduction_to_Genome_Annotation)
  - [<span class="tocnumber">2.1</span> <span class="toctext">What Are
    Annotations?</span>](#What_Are_Annotations.3F)
  - [<span class="tocnumber">2.2</span> <span class="toctext">Importance
    of Genome Annotations</span>](#Importance_of_Genome_Annotations)
  - [<span class="tocnumber">2.3</span> <span class="toctext">Effect of
    NextGen Sequencing on the Annotation
    Process</span>](#Effect_of_NextGen_Sequencing_on_the_Annotation_Process)
- [<span class="tocnumber">3</span> <span class="toctext">MAKER
  Overview</span>](#MAKER_Overview)
  - [<span class="tocnumber">3.1</span> <span class="toctext">What does
    MAKER do?</span>](#What_does_MAKER_do.3F)
  - [<span class="tocnumber">3.2</span> <span class="toctext">What sets
    MAKER apart from other tools (*ab initio* gene predictors
    etc.)?</span>](#What_sets_MAKER_apart_from_other_tools_.28ab_initio_gene_predictors_etc..29.3F)
  - [<span class="tocnumber">3.3</span> <span class="toctext">Emerging
    vs. Classic Model
    Genomes</span>](#Emerging_vs._Classic_Model_Genomes)
  - [<span class="tocnumber">3.4</span> <span class="toctext">Comparison
    of Algorithm Performance on Model vs. Emerging
    Genomes</span>](#Comparison_of_Algorithm_Performance_on_Model_vs._Emerging_Genomes)
- [<span class="tocnumber">4</span>
  <span class="toctext">Installation</span>](#Installation)
  - [<span class="tocnumber">4.1</span>
    <span class="toctext">Prerequisites</span>](#Prerequisites)
  - [<span class="tocnumber">4.2</span> <span class="toctext">The MAKER
    Package</span>](#The_MAKER_Package)
- [<span class="tocnumber">5</span> <span class="toctext">Getting
  Started with MAKER</span>](#Getting_Started_with_MAKER)
  - [<span class="tocnumber">5.1</span>
    <span class="toctext">Note</span>](#Note)
  - [<span class="tocnumber">5.2</span> <span class="toctext">Running
    MAKER with example data</span>](#Running_MAKER_with_example_data)
- [<span class="tocnumber">6</span> <span class="toctext">Details of
  What is Going on Inside of
  MAKER</span>](#Details_of_What_is_Going_on_Inside_of_MAKER)
  - [<span class="tocnumber">6.1</span> <span class="toctext">Repeat
    Masking</span>](#Repeat_Masking)
  - [<span class="tocnumber">6.2</span> <span class="toctext">*Ab
    Initio* Gene Prediction</span>](#Ab_Initio_Gene_Prediction)
  - [<span class="tocnumber">6.3</span> <span class="toctext">RNA and
    Protein Evidence
    Alignment</span>](#RNA_and_Protein_Evidence_Alignment)
  - [<span class="tocnumber">6.4</span> <span class="toctext">Polishing
    Evidence Alignments</span>](#Polishing_Evidence_Alignments)
  - [<span class="tocnumber">6.5</span>
    <span class="toctext">Integrating Evidence to Synthesize
    Annotations</span>](#Integrating_Evidence_to_Synthesize_Annotations)
  - [<span class="tocnumber">6.6</span> <span class="toctext">Selecting
    and Revising the Final Gene
    Model</span>](#Selecting_and_Revising_the_Final_Gene_Model)
  - [<span class="tocnumber">6.7</span> <span class="toctext">Quality
    Control</span>](#Quality_Control)
- [<span class="tocnumber">7</span> <span class="toctext">MAKER's
  Output</span>](#MAKER.27s_Output)
- [<span class="tocnumber">8</span> <span class="toctext">Viewing MAKER
  Annotations</span>](#Viewing_MAKER_Annotations)
  - [<span class="tocnumber">8.1</span>
    <span class="toctext">Apollo</span>](#Apollo)
- [<span class="tocnumber">9</span> <span class="toctext">Advanced MAKER
  Configuration, Re-annotation Options, and Improving Annotation
  Quality</span>](#Advanced_MAKER_Configuration.2C_Re-annotation_Options.2C_and_Improving_Annotation_Quality)
  - [<span class="tocnumber">9.1</span>
    <span class="toctext">Configuration Files in
    Detail</span>](#Configuration_Files_in_Detail)
    - [<span class="tocnumber">9.1.1</span> <span class="toctext">Genome
      Options (Required)</span>](#Genome_Options_.28Required.29)
    - [<span class="tocnumber">9.1.2</span>
      <span class="toctext">Re-annotation Using MAKER Derived
      GFF3</span>](#Re-annotation_Using_MAKER_Derived_GFF3)
    - [<span class="tocnumber">9.1.3</span> <span class="toctext">RNA
      (EST) Evidence</span>](#RNA_.28EST.29_Evidence)
    - [<span class="tocnumber">9.1.4</span>
      <span class="toctext">Protein Homology
      Evidence</span>](#Protein_Homology_Evidence)
    - [<span class="tocnumber">9.1.5</span> <span class="toctext">Repeat
      Masking</span>](#Repeat_Masking_2)
    - [<span class="tocnumber">9.1.6</span> <span class="toctext">Gene
      Prediction</span>](#Gene_Prediction)
    - [<span class="tocnumber">9.1.7</span> <span class="toctext">Other
      Annotation Feature Types</span>](#Other_Annotation_Feature_Types)
    - [<span class="tocnumber">9.1.8</span>
      <span class="toctext">External Application Behavior
      Options</span>](#External_Application_Behavior_Options)
    - [<span class="tocnumber">9.1.9</span> <span class="toctext">MAKER
      Behavior Options</span>](#MAKER_Behavior_Options)
  - [<span class="tocnumber">9.2</span> <span class="toctext">Training
    *ab initio* Gene
    Predictors</span>](#Training_ab_initio_Gene_Predictors)
  - [<span class="tocnumber">9.3</span> <span class="toctext">MAKER Web
    Annotation Service</span>](#MAKER_Web_Annotation_Service)
  - [<span class="tocnumber">9.4</span>
    <span class="toctext">mRNAseq</span>](#mRNAseq)
  - [<span class="tocnumber">9.5</span> <span class="toctext">Improving
    Annotation Quality with MAKER's AED
    score</span>](#Improving_Annotation_Quality_with_MAKER.27s_AED_score)
  - [<span class="tocnumber">9.6</span>
    <span class="toctext">Merge/Resolve Legacy
    Annotations</span>](#Merge.2FResolve_Legacy_Annotations)
  - [<span class="tocnumber">9.7</span> <span class="toctext">MPI
    Support</span>](#MPI_Support)
  - [<span class="tocnumber">9.8</span> <span class="toctext">User
    Interface for Local MAKER
    Instalation</span>](#User_Interface_for_Local_MAKER_Instalation)
  - [<span class="tocnumber">9.9</span> <span class="toctext">MAKER
    Accessory Scripts</span>](#MAKER_Accessory_Scripts)



## <span id="About_MAKER" class="mw-headline">About MAKER</span>

MAKER is an easy-to-use genome annotation pipeline designed for small
research groups with little bioinformatics experience. However, MAKER is
also designed to be scalable and is thus appropriate for projects of any
size including use by large sequence centers. MAKER can be used for *de
novo* annotation of newly sequenced genomes, for updating existing
annotations to reflect new evidence, or just to combine annotations,
evidence, and quality control statistics for use with other GMOD
programs like [GBrowse](../GBrowse.1 "GBrowse"),
[JBrowse](../JBrowse.1 "JBrowse"),
<a href="../Chado" class="mw-redirect" title="Chado">Chado</a>, and
[Apollo](../Apollo.1 "Apollo").

MAKER has been used in many genome annotation projects:

- *Schmidtea mediterranea* - planaria (A Alvarado, Stowers Institute)
  <a href="http://www.ncbi.nlm.nih.gov/pubmed/18025269"
  class="external text" rel="nofollow">PubMed</a>
- *Pythium ultimum* oomycete (R Buell, Michigan State Univ.)
  <a href="http://www.ncbi.nlm.nih.gov/pubmed/20626842"
  class="external text" rel="nofollow">PubMed</a>
- *Pinus taeda* - Loblolly pine (A Stambolia-Kovach, Univ. California
  Davis) <a href="http://www.ncbi.nlm.nih.gov/pubmed/20609256"
  class="external text" rel="nofollow">PubMed</a>
- *Atta cephalotes* - leaf-cutter ant (C Currie, Univ. Wisconsin,
  Madison) <a href="http://www.ncbi.nlm.nih.gov/pubmed/21347285"
  class="external text" rel="nofollow">PubMed</a>
- *Linepithema humile* - Argentine ant (CD Smith, San Francisco State
  Univ.) <a href="http://www.ncbi.nlm.nih.gov/pubmed/21282631"
  class="external text" rel="nofollow">PubMed</a>
- *Pogonomyrmex barbatus* - red harvester Ant (J Gadau, Arizona State
  Univ.) <a href="http://www.ncbi.nlm.nih.gov/pubmed/21282651"
  class="external text" rel="nofollow">PubMed</a>
- *Conus bullatus* - cone snail (B Olivera Univ. Utah)
  <a href="http://www.ncbi.nlm.nih.gov/pubmed/21266071"
  class="external text" rel="nofollow">PubMed</a>
- *Petromyzon marinus* - Sea lamprey (W Li, Michigan State)
  <a href="http://www.ncbi.nlm.nih.gov/pubmed/23435085"
  class="external text" rel="nofollow">PubMed</a>
- *Fusarium circinatum* - pine pitch canker (B Wingfield, Univ.
  Pretoria) - Manuscript in preparation
- *Cardiocondyla obscurior* - tramp ant (J Gadau, Arizona State Univ.) -
  Manuscript in preparation
- *Columba livia* - pigeon (M Shapiro, Univ. Utah) - Manuscript in
  preparation
- *Megachile routundata* alfalfa leafcutter bee () - Manuscript in
  preparation
- *Latimeria menadoensis* - african coelacanth () -
  <a href="http://www.ncbi.nlm.nih.gov/pubmed/23598338"
  class="external text" rel="nofollow">PubMed</a>
- *Nannochloropsis* - micro algae (SH Shiu, Michigan State Univ.)
  <a href="http://www.ncbi.nlm.nih.gov/pubmed/23166516"
  class="external text" rel="nofollow">PubMed</a>
- *Arabidopsis* thale cress re-annotation (E Huala, TAIR) - Manuscript
  in preparation
- *Cronartium quercuum* - rust fungus (JM Davis, Univ. Florida) -
  Annotation in progress
- *Ophiophagus hannah* - King cobra (T. Castoe, Univ. Colorado) -
  Annotation in progress
- *Python molurus* - Burmese python (T. Castoe, Univ. Colorado) -
  Annotation in progress
- *Lactuca sativa* - Lettuce (RW Michelmore) - Annotation in progress
- parasitic nematode genomes (M Mitreva, Washington Univ)
- *Diabrotica virgifera* - corn rootworm beetle (H Robertson, Univ.
  Illinois)
- *Oryza sativa* - rice re-annotation (R Buell, MSU)
- *Zea mays* - maize re-annotation (C Lawrence, MaizeGDP)
- *Cephus cinctus* - wheat stem sawfly (H Robertson, Univ. Illinois)
- *Rhagoletis pomonella* - apple maggot fly (H Robertson, Univ.
  Illinois)

## <span id="Introduction_to_Genome_Annotation" class="mw-headline">Introduction to Genome Annotation</span>

### <span id="What_Are_Annotations.3F" class="mw-headline">What Are Annotations?</span>

Annotations are descriptions of different features of the genome, and
they can be structural or functional in nature.

Examples:

- Structural Annotations: exons, introns, UTRs, splice forms
  (<a href="http://www.sequenceontology.org/" class="external text"
  rel="nofollow">Sequence Onotology</a>)

<a href="../File:Structural.png" class="image"></a>

  
To use this feature, you must have MPICH2 installed with the the
`--enable-sharedlibs` flag set during installation (See MPICH2
Installer's Guide). I have installed this for you. So let's set up
MPI_MAKER and run the example file that comes with MAKER.

``` enter
 cd /usr/local/maker/src
 perl Build.PL
```

Say Yes that we want to build for MPI support

``` enter
 ./Build install
```

  
Set values in maker configuration files.

``` enter
 genome=dpp_contig.fasta
 est=dpp_est.fasta
 protein=dpp_protein.fasta
 snap=$PATH_TO_SNAP/HMM/fly
```

We need to set up a few more things for MPI to work. Type `mpd` to see a
list of instructions.

``` enter
 mpd
```

You should see the following.

    configuration file /home/ubuntu/.mpd.conf not found
    A file named .mpd.conf file must be present in the user's home
    directory (/etc/mpd.conf if root) with read and write access
    only for the user, and must contain at least a line with:
    MPD_SECRETWORD=<secretword>
    One way to safely create this file is to do the following:
     cd $HOME
     touch .mpd.conf
     chmod 600 .mpd.conf
    and then use an editor to insert a line like
     MPD_SECRETWORD=mr45-j9z
    into the file. (Of course use some other secret word than mr45-j9z.)

  
Follow the instructions to set this file up, and start the mpi
environment with `mpdboot`. Then run `maker` through the MPI manager
`mpiexec`.

``` enter
 mpdboot
 mpiexec -n 2 maker </dev/null
```

`mpiexec` is a wrapper that handles the MPI environment. The `-n 2` flag
tells `mpiexec` to use 2 cpus/nodes when running `maker`. For a large
cluster, this could be set to something like 100. You should now know
how to start a MAKER job via MPI.

## <span id="User_Interface_for_Local_MAKER_Instalation" class="mw-headline">User Interface for Local MAKER Instalation</span>



This example did not work during class because a conflict with the
version of Apache that was installed. The issue has since been fixed.
Before beginning the example, open a terminal and remove the following
files otherwise the subversion update of maker fails.

``` enter
 rm ~/Documents/Software/maker/MWAS/bin/mwas_server
 rm ~/Documents/Software/maker/MWAS/cgi-bin/tt_templates/apollo_webstart.tt
```

Then update maker via subversion.

``` enter
 svn update ~/Documents/Software/maker/
```



The MWAS interface provides a very convenient method for running MAKER
and viewing results; however, because compute resources are limited
users are only allowed to submit a maximum of 2 megabases of sequence
per job. So while MWAS might be suitable for some analyses (i.e.
annotating BACs and short preliminary assemblies), if you plan on
annotating an entire genome you will need to install MAKER locally. But
if you like the convenience of the MWAS user interface, you can
optionally install the interface on top of a locally installed version
of MAKER for use in your own lab.

  
First under the `maker` directory there is a subdirectory called `MWAS`.
`MWAS` contains all the needed files to build the MAKER web interface.
The `maker/MWAS/bin/mwas_server` file is used to setup and run this web
interface. Let's configure that now. There are three steps to setting up
the server. First you must create and edit a server configuration file,
then load all other configuration files, and then install all files to
the appropriate web accessible directory.

``` enter
 cd /home/gmod/Documents/Software/maker/MWAS/
 bin/mwas_server PREP
```

This will create a file in `/maker/MWAS/config/` called `server.ctl`. We
will need to edit this file before continuing.

``` enter
 nano config/server.ctl
```

Set:

``` enter
 apache_user:www-data
 web_address:http://localhost
 cgi_dir:/usr/lib/cgi-bin/maker
 cgi_web:/cgi-bin/maker
 html_dir:/var/www/maker
 html_web:/maker
 data_dir:/var/www/maker/data
 use_login:0
```

Now we need to generate other settings that are dependent on the values
in

`server_opts.ctl`.

``` enter
 bin/mwas_server CONFIG
```

Several new configuration files should now be loaded in the `config/`
directory. These new files define default MAKER options for the server
and the location of files for the server dropdown menus.

    maker_bopts.ctl
    maker_exe.ctl
    maker_opts.ctl
    menus.ctl

We shouldn't need to edit any of these file. So let's copy files to the
appropriate web accessible directories. This must be done as root or
using `sudo`.

``` enter
 sudo bin/mwas_server SETUP
```

If you set `APOLLO_ROOT` in the `server.ctl` file, then you can now
setup a special Java Web Start version of [Apollo](../Apollo.1 "Apollo")
to view results directly from the web interface. Web Start will be
described in more detail in the Apollo session. This must be done as
root or using `sudo`.

``` enter
 sudo bin/mwas_server APOLLO
```

We can now run MAKER examples using this web interface, but first we
need to launch a server to monitor for new job submissions.

``` enter
 sudo bin/mwas_server START
```

And then go to

<a href="http://localhost/maker" class="external free"
rel="nofollow">http://localhost/maker</a>

## <span id="MAKER_Accessory_Scripts" class="mw-headline">MAKER Accessory Scripts</span>

MAKER comes with a number of accessory scripts that assist in
manipulations of the MAKER input and output files.

Scripts:

- *add_utr_start_stop_gff* - Adds explicit 5' and 3' UTR as well as
  start and stop codon features to the GFF3 output file

<!-- -->

     add_utr_start_stop_gff <gff3_file>

- *add_utr_to_gff3.pl* - Adds explicit 5' and 3' UTR features to the
  [GFF3](../GFF3 "GFF3") output file

<!-- -->

     add_utr_gff.pl <gff3_directory>

- *cegma2zff' - This script converts the output of a GFF file from CEGMA
  into ZFF format for use in SNAP training. Output files are always
  genome.ann and genome.dna*

<!-- -->

     cegma2zff <cegma_gff> <genome_fasta>

- *chado2gff3* - This script takes default CHADO database content and
  produces GFF3 files for each contig/chromosome.

<!-- -->

     chado2gff3 [OPTION] <database_name>

- *compare* - This script compares the contents of a GFF3 file to a
  CHADO database to look for merged, split and missing genes.

<!-- -->

     compare [OPTION] <database_name> <gff3_file>

- *cufflinks2gff3* - This script converts the cufflinks output
  transcripts.gtf file into GFF3 format for use in MAKER via GFF3
  passthrough. By default standless features which correspond to single
  exon cufflinks models will be ignored. This is because these features
  can correspond to repetative elements and pseudogenes. Ouput is to
  STDOUT so you will need to redirect to a file.

<!-- -->

     cufflinks2gff3 <transcripts1.gtf> <transcripts2.gtf> ...

- *evaluator* - Evaluate the the quality of an annotation set.

<!-- -->

     mpi_evaluator [options] <eval_opts> <eval_bopts> <eval_exe>

- *fasta_merge* - Collects all of MAKER's fasta file output for each
  contig and merges them to make genome level fastas

<!-- -->

     fasta_merge -d <datastore_index> -o <outfile>

- *fasta_tool* - The script can search, reformat, and manipulate a fasta
  file in a variety of ways.

<!-- -->

- *fix_fasta* - Deprecated, use fasta_tool

<!-- -->

- *genemark_gtf2gff3* - This converts genemark's GTF output into GFF3
  format. The script prints to STDOUT. Use the '\>' character to
  redirect output into a file.

<!-- -->

     genemark_gtf2gff3 <filename>

- *gff3_2_gtf* - Converts MAKER GFF3 files to GTF format (run
  add_utr_start_stop_gff first to get UTR features)

<!-- -->

     gff3_2_gtf <gff3_file>

- *gff3_merge* - Collects all of MAKER's GFF3 file output for each
  contig and merges them to make a single genome level GFF3

<!-- -->

     gff3_merge -d <datastore_index> -o <outfile>

- *gff3_preds2models* - Converts the gene prediction match/match_part
  format to annotation gene/mRNA/exon/CDS format

<!-- -->

     gff3_preds2models <gff3 file> <pred list>

- *gff3_to_eval_gtf* - This script converts MAKER GFF3 files into GTF
  formated files for the program EVAL (an annotation
  sensitivity/specificity evaluating program). The script will only
  extract features explicitly declared in the GFF3 file, and will skip
  implicit features (i.e. UTR, start codons, and stop codons). To
  extract implicit features to the GTF file, you will first need to
  expicitly declare them in the GFF3 file. This can be done by calling
  the script add_utr_to_gff3 to add formal declaration lines to the GFF3
  file.

<!-- -->

     gff3_to_eval_gtf <maker_gff3_file>

- *iprscan2gff3* - Takes InerproScan (iprscan) output and generates GFF3
  features representing domains. Interesting tier for GBrowse.

<!-- -->

     iprscan2gff3 <iprscan_file> <gff3_fasta>

- *iprscan_batch* - Wrapper for iprscan to take advantage of
  multiprocessor systems.

<!-- -->

     iprscan_batch <file_name> <cpus> <log_file>

- *iprscan_wrap* - A wrapper that will run iprscan

<!-- -->

- *ipr_update_gff* - Takes InterproScan (iptrscan) output and maps
  domain IDs and GO terms to the Dbxref and Ontology_term attributes in
  the GFF3 file.

<!-- -->

     ipr_update_gff <gff3_file> <iprscan_file>

- *maker2chado* - This script takes MAKER produced GFF3 files and dumps
  them into a
  <a href="../Chado" class="mw-redirect" title="Chado">Chado</a>
  database. You must set the database up first according to CHADO
  installation instructions. CHADO provides its own methods for loading
  GFF3, but this script makes it easier for MAKER specific data. You can
  either provide the datastore index file produced by MAKER to the
  script or add the GFF3 files as command line arguments.

<!-- -->

     maker2chado [OPTION] <database_name> <gff3file1> <gff3file2> ...

- *maker2jbrowse* - This script will produce a JBrowse data set from
  MAKER gff3 files.

<!-- -->

      maker2chado [OPTION] <database_name> <gff3file1> <gff3file2> ...

- *maker2zff.pl* - Pulls out MAKER gene models from the MAKER GFF3
  output and convert them into ZFF format for SNAP training.

<!-- -->

     maker2zff.pl <gff3_file>

- *maker_functional*

<!-- -->

- *maker_functional_fasta* - Maps putative functions identified from
  BLASTP against UniProt/SwissProt to the MAKER produced tarnscript and
  protein fasta files.

<!-- -->

     maker_functional_fasta <uniprot_fasta> <blast_output> <fasta1> <fasta2> <fasta3> ...

- *maker_functional_gff* - Maps putative functions identified from
  BLASTP against UniProt/SwissProt to the MAKER produced GFF3 files in
  the Note attribute.

<!-- -->

     maker_functional_gff <uniprot_fasta> <blast_output> <gff3_1>

- *maker_map_ids* - Build shorter IDs/Names for MAKER genes and
  transcripts following the NCBI suggested naming format.

<!-- -->

     maker_map_ids --prefix PYU1_ --justify 6 genome.all.gff > genome.all.id.map

- *map2assembly* - Maps old gene models to a new assembly where
  possible.

<!-- -->

     map2assembly <genome.fasta> <transcripts.fasta>

- *map_data_ids* - This script takes a id map file and changes the name
  of the ID in a data file. The map file is a two column tab delimited
  file with two columns: old_name and new_name. The data file is assumed
  to be tab delimited by default, but this can be altered with the
  delimit option. The ID in the data file can be in any column and is
  specified by the col option which defaults to the first column.

<!-- -->

     map_data_ids genome.all.id.map data.txt

- *map_fasta_ids* - Maps short IDs/Names to MAKER fasta files.

<!-- -->

     map_fasta_ids <map_file> <fasta_file>

- *map_gff_ids* - Maps short IDs/Names to MAKER GFF3 files, old
  IDs/Names are mapped to to the Alias attribute.

<!-- -->

     map_gff_ids <map_file> <gff3_file>

- *split_fasta* - Splits multi-fasta files into the number of files
  specified by the user. Useful for breaking up MAKER jobs.

<!-- -->

     split_fasta [count] <input_fasta>

- *tophat2gff3* - This script converts the juctions file producted by
  TopHat into GFF3 format for use with MAKER.

<!-- -->

     tophat2gff3 <junctions.bed>








## Navigation menu







<a href="../Main_Page"
style="background-image: url(../../images/GMOD-cogs.png);"
title="Visit the main page"></a>


### Navigation



- <span id="n-GMOD-Home">[GMOD Home](../Main_Page)</span>
- <span id="n-Software">[Software](../GMOD_Components)</span>
- <span id="n-Categories-.2F-Tags">[Categories /
  Tags](../Categories)</span>
- <span id="n-View-all-pages">[View all
  pages](../Special:AllPages)</span>




### Documentation



- <span id="n-Overview">[Overview](../Overview)</span>
- <span id="n-FAQs">[FAQs](../Category%253AFAQ)</span>
- <span id="n-HOWTOs">[HOWTOs](../Category%253AHOWTO)</span>
- <span id="n-Glossary">[Glossary](../Glossary)</span>




### Community



- <span id="n-GMOD-News">[GMOD News](../GMOD_News)</span>
- <span id="n-Training-.2F-Outreach">[Training /
  Outreach](../Training_and_Outreach)</span>
- <span id="n-Support">[Support](../Support)</span>
- <span id="n-GMOD-Promotion">[GMOD Promotion](../GMOD_Promotion)</span>
- <span id="n-Meetings">[Meetings](../Meetings)</span>
- <span id="n-Calendar">[Calendar](../Calendar)</span>




### Tools

- <span id="t-smwbrowselink"><a href="../Special%253ABrowse/GMOD_Online_Training_2014-2FMAKER_Tutorial"
  rel="smw-browse">Browse properties</a></span>



- <span id="footer-info-lastmod">Last updated at 03:53 on 19 May
  2014.</span>
<!-- - <span id="footer-info-viewcount">5,064 page views.</span> -->
- <span id="footer-info-copyright">Content is available under
  <a href="http://www.gnu.org/licenses/fdl-1.3.html" class="external"
  rel="nofollow">a GNU Free Documentation License</a> unless otherwise
  noted.</span>

<!-- -->



<!-- -->




