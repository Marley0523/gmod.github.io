



<span id="top"></span>




# <span dir="auto">GBrowse syn Scripts</span>









[GBrowse_syn](GBrowse_syn.1 "GBrowse syn") is a
[GBrowse](GBrowse.1 "GBrowse") based
<a href="Synteny" class="mw-redirect" title="Synteny">synteny</a>
viewer. This page describes helper scripts for processing alignment data
for loading into [GBrowse_syn](GBrowse_syn.1 "GBrowse syn").


## Contents



- [<span class="tocnumber">1</span>
  <span class="toctext">load_alignments_msa.pl</span>](#load_alignments_msa.pl)
- [<span class="tocnumber">2</span>
  <span class="toctext">load_alignment_database.pl</span>](#load_alignment_database.pl)
- [<span class="tocnumber">3</span>
  <span class="toctext">mercatoraln_to_synhits.pl</span>](#mercatoraln_to_synhits.pl)
- [<span class="tocnumber">4</span>
  <span class="toctext">aln2hit.pl</span>](#aln2hit.pl)
- [<span class="tocnumber">5</span>
  <span class="toctext">clustal2hit.pl</span>](#clustal2hit.pl)



# <span id="load_alignments_msa.pl" class="mw-headline">load_alignments_msa.pl</span>

Purpose  
Use this script to load the GBrowse_syn alignment database from a
multiple sequence alignment file. A variety of formats are supported,
including
<a href="http://www.bioperl.org/wiki/FASTA_multiple_alignment_format"
class="external text" rel="nofollow">FASTA</a>,
<a href="http://www.bioperl.org/wiki/ClustalW_multiple_alignment_format"
class="external text" rel="nofollow">CLUSTAL</a>, <a
href="http://www.bioperl.org/wiki/Stockholm_multiple_alignment_format"
class="external text" rel="nofollow">STOCKHOLM</a>, etc.

<!-- -->

Note  
Supported file formats are decoupled from the original application --
for example, FASTA and CLUSTALW is not generally used for whole genome
alignments but a number of other applications can emit or read these
formats.

<!-- -->

Example  

<!-- -->

    perl load_alignments_msa.pl -f clustalw -u me -p mypsswd -d mydb -c -v

Options  

| argument | default | description |
|----|----|----|
| f | clustalw | Format on the multiple sequence alignment files |
| u |  | Username for the mysql database |
| p |  | Password for the mysql database |
| d |  | Database name |
| m | 100 | Resolution of the base-pair map uses to guide the alignment [grid-lines in GBrowse_syn](GBrowse_syn_Help#Grid_Lines "GBrowse syn Help") |
| n |  | Flag to skip grid-line mapping (faster but you will lose all of the insertion/deletion data) |
| v |  | Flag for verbose progress reporting |
| c |  | Flag to create a new database and load the schema as well as the data. Note, using this flag will erase all existing data prior to loading in new data. Failing to use this option for a new database will cause a fatal error. |

# <span id="load_alignment_database.pl" class="mw-headline">load_alignment_database.pl</span>

Purpose  
This script loads the alignment database from a tab-delimited alignment
data files (format described
<span class="pops">[here](GBrowse_syn_Database#alignment_data_loading_format "GBrowse syn Database")</span>).
This format can either be an intermediate for parsed alignment data or
can be used for data that does not come from multiple sequence
alignments, for example gene orthology data, defined regions of
co-linearity, etc. The tab-delimited format requires start and end
coordinates for each reference sequence. Any features that have start
and end coordinates and strand information can be used.

<!-- -->

Example  

<!-- -->

    perl load_alignment_database.pl -u user -p password -d dbname -c -v alignments.aln.txt alignments2.aln.txt

Options  

| argument | default | description |
|----|----|----|
| u |  | Username for the mysql database |
| p |  | Password for the mysql database |
| d |  | Database name |
| v |  | Flag for verbose progress reporting |
| c |  | Flag to create a new database and load the schema as well as the data. Note, using this flag will erase all existing data prior to loading in new data. Failing to use this option for a new database will cause a fatal error. |

# <span id="mercatoraln_to_synhits.pl" class="mw-headline">mercatoraln_to_synhits.pl</span>

<a
href="http://gmod.svn.sourceforge.net/viewvc/gmod/Generic-Genome-Browser/branches/stable/bin/gbrowse_syn/mercatoraln_to_synhits.pl"
class="external text" rel="nofollow">mercatoraln_to_synhits.pl</a> is a
data parser for multiple sequence alignments generated by mercator.

Purpose  
This script will process alignments generated by the MERCATOR pipeline

<!-- -->

Example  

<!-- -->

    perl mercatoraln_to_synhits.pl -d alignments > mercator_alignments.gbrowse_syn.txt
    load_alignment_database.pl -u user -p password -d dbname -c -v mercator_alignments.gbrowse_syn.txt

Options  

| argument | default | description |
|----|----|----|
| a | output.mfa | Specifies the name of the alignment file from when mercator does the MSA (MAVID, PECAN, or other genome alignment tool) |
| v |  | Print progress reports while running. Note that the script will stop after reading the first line of the file (see line 117 of the script) if this option is set. |
| f | fasta | Specifies format of the input alignment files (multi-fasta format is the default) |
| d |  | Specifies the containing directory for the genome and map files (typically this is called **alignments** in the mercator pipeline) |

# <span id="aln2hit.pl" class="mw-headline">aln2hit.pl</span>

<a
href="http://gmod.svn.sourceforge.net/viewvc/gmod/Generic-Genome-Browser/branches/stable/bin/gbrowse_syn/aln2hit.pl?revision=15979"
class="external text" rel="nofollow">aln2hit.pl</a> is a generic
alignment data parser that reads alignment data into the GBrowse_syn
database loading format.

Purpose  
Use this script in cases where you have a single alignment file and want
to convert it to the [tab-delimited
format](GBrowse_syn_Database#alignment_data_loading_format "GBrowse syn Database")
that is used to load the GBrowse_syn alignment database.

<!-- -->

Note  
This script is deprecated. You can use the
[load_alignments_msa.pl](GBrowse_syn_Scripts#load_alignments_msa.pl "GBrowse syn Scripts")
to load the database directly.

<!-- -->

Example  

<!-- -->

    perl aln2hit.pl -f clustalw -i my_alignments.aln >my_alignments.txt

Options  

| argument | default | description |
|----|----|----|
| f | clustalw | Specifies the alignment file format. Most common formats recongnized by BioPerl's <a href="http://doc.bioperl.org/releases/bioperl-1.0/Bio/AlignIO.html"
class="external text" rel="nofollow">AlignIO parsers</a> are supported. Use <a href="http://www.bioperl.org/wiki/ClustalW_multiple_alignment_format"
class="external text" rel="nofollow">clustalw</a> or <a href="http://www.bioperl.org/wiki/FASTA_multiple_alignment_format"
class="external text" rel="nofollow">fasta</a> for best results. |
| i |  | Specifies the name of the input alignment file |

# <span id="clustal2hit.pl" class="mw-headline">clustal2hit.pl</span>

<a
href="http://gmod.svn.sourceforge.net/viewvc/gmod/Generic-Genome-Browser/branches/stable/bin/gbrowse_syn/clustal2hit.pl"
class="external text" rel="nofollow">clustal2hit.pl</a> is a CLUSTALW
format alignment data parser.

Purpose  
Use this script in cases where you have a one or more clustal alignment
files and want to convert them to the [tab-delimited
format](GBrowse_syn_Database#alignment_data_loading_format "GBrowse syn Database")
that is used to load the GBrowse_syn alignment database.

<!-- -->

Note  
This script is deprecated. You can use the
[load_alignments_msa.pl](GBrowse_syn_Scripts#load_alignments_msa.pl "GBrowse syn Scripts")
to load the database directly.

<!-- -->

Example  

<!-- -->

    perl clustal2hit.pl *.aln >my_alignments.txt

Options  

None.




[Categories](Special%253ACategories "Special%253ACategories"):

- [GBrowse syn](Category%253AGBrowse_syn "Category%253AGBrowse syn")
- [Documentation](Category%253ADocumentation "Category%253ADocumentation")






## Navigation menu









### Navigation



- <span id="n-GMOD-Home">[GMOD Home](Main_Page)</span>
- <span id="n-Software">[Software](GMOD_Components)</span>
- <span id="n-Categories-.2F-Tags">[Categories /
  Tags](Categories)</span>




### Documentation



- <span id="n-Overview">[Overview](Overview)</span>
- <span id="n-FAQs">[FAQs](Category%253AFAQ)</span>
- <span id="n-HOWTOs">[HOWTOs](Category%253AHOWTO)</span>
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

- <span id="t-smwbrowselink"><a href="Special%253ABrowse/GBrowse_syn_Scripts" rel="smw-browse">Browse
  properties</a></span>



- <span id="footer-info-lastmod">Last updated at 22:39 on 21 February
  2013.</span>
<!-- - <span id="footer-info-viewcount">98,602 page views.</span> -->
- <span id="footer-info-copyright">Content is available under
  <a href="http://www.gnu.org/licenses/fdl-1.3.html" class="external"
  rel="nofollow">a GNU Free Documentation License</a> unless otherwise
  noted.</span>

<!-- -->



<!-- -->




