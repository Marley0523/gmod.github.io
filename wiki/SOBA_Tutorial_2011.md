



<span id="top"></span>




# <span dir="auto">SOBA Tutorial 2011</span>









**<a href="http://www.sequenceontology.org/cgi-bin/soba.cgi"
class="external text" rel="nofollow">SOBA</a>** is a command line tool
and web application for analyzing [GFF3](GFF3 "GFF3") annotations.
[GFF3](GFF3 "GFF3") is a standard file format for genomic annotation
data. SOBA gathers statistics from GFF3 files and renders them as tables
and graphs.

The web version of SOBA will produce the following:

- Summary statistics of feature types and attributes used
- Histograms of feature lengths
- Graphs of
  <a href="http://www.sequenceontology.org" class="external text"
  rel="nofollow">Sequence Ontology</a> terms used
- Histograms of intron density
- Suggestions to improve SO compliance for invalid terms

In addition, the command line tool (SOBAcl) flexibly produces a much
wider variety of tables, figures and graphs based on the data in a
[GFF3](GFF3 "GFF3") file as well as the the ability to produce complex
and extensible custom reports via a robust template system.

SOBA is intended is a tool for those dealing with genomic sequence
annotation who want to view genome wide summaries their annotation
files. For example: SOBA would be a useful tool at an annotation
jamboree for a newly sequenced organism and when preparing a the
resulting genome paper; SOBA would help those developing annotation
tools to quickly evaluate updates to their tool; SOBA assists
comparative genomics analyses by providing a high-level overview of the
genome of multiple organisms. SOBA complements genome browsers by
providing a summary of all the features annotated in the genome.

SOBA is built with Perl (and JavaScript for the web interface). The web
interface uses <a href="http://search.cpan.org/perldoc?CGI::Application"
class="external text" rel="nofollow">CGI::Application</a> as a Perl
webapp framework and the JQuery JavaScript library for Web 2.0 effects
and [AJAX](Glossary#AJAX "Glossary"). Both versions of SOBA use the
<a href="http://template-toolkit.org/" class="external text"
rel="nofollow">Template Tooklit (TT)</a> to generate html/txt reports,
graphviz for the ontology graphs, and GD for charts. Template Toolkit
makes extensibility very easy, at least for someone who's willing to
learn the fairly simple template language of TT (you don't need to know
Perl or any other programming to use TT).


## Contents



- [<span class="tocnumber">1</span> <span class="toctext">SOBA Web
  Application</span>](#SOBA_Web_Application)
- [<span class="tocnumber">2</span>
  <span class="toctext">SOBAcl</span>](#SOBAcl)
  - [<span class="tocnumber">2.1</span>
    <span class="toctext">Help</span>](#Help)
  - [<span class="tocnumber">2.2</span>
    <span class="toctext">Tables</span>](#Tables)
  - [<span class="tocnumber">2.3</span>
    <span class="toctext">Charts</span>](#Charts)
  - [<span class="tocnumber">2.4</span>
    <span class="toctext">Reports</span>](#Reports)



# <span id="SOBA_Web_Application" class="mw-headline">SOBA Web Application</span>

Documentation for the web interface to SOBA is available on the <a
href="http://www.sequenceontology.org/wiki/index.php/SOBA_-_Sequence_Ontology_Bioinformatics_Analysis"
class="external text" rel="nofollow">Sequence Ontology Wiki</a> as well
as via tool-tips on the site itself.

Navigate to the
<a href="http://www.sequenceontology.org/cgi-bin/soba.cgi"
class="external text" rel="nofollow">SOBA Web Application</a> with any
modern browser that has JavaScript enabled.

<table>
<colgroup>
<col style="width: 50%" />
<col style="width: 50%" />
</colgroup>
<tbody>
<tr class="odd">
<td>

<a href="File:SOBA_Web_01_Select.png" class="image"><img
src="https://raw.githubusercontent.com/GMOD/gmod.github.io/main/mediawiki/images/thumb/f/f7/SOBA_Web_01_Select.png/800px-SOBA_Web_01_Select.png"
class="thumbimage"
srcset="https://raw.githubusercontent.com/GMOD/gmod.github.io/main/mediawiki/images/f/f7/SOBA_Web_01_Select.png 1.5x, https://raw.githubusercontent.com/GMOD/gmod.github.io/main/mediawiki/images/f/f7/SOBA_Web_01_Select.png 2x"
width="800" height="537" /></a>


<a href="File:SOBA_Web_01_Select.png" class="internal"
title="Enlarge"><img
src="../mediawiki/skins/common/images/magnify-clip.png" width="15"
height="11" /></a>

<strong>Figure:1</strong> SOBA main page


</td>
<td></td>
</tr>
</tbody>
</table>

<table>
<colgroup>
<col style="width: 50%" />
<col style="width: 50%" />
</colgroup>
<tbody>
<tr class="odd">
<td>

<a href="File:SOBA_Web_02_Counts.png" class="image"><img
src="https://raw.githubusercontent.com/GMOD/gmod.github.io/main/mediawiki/images/thumb/6/67/SOBA_Web_02_Counts.png/800px-SOBA_Web_02_Counts.png"
class="thumbimage"
srcset="https://raw.githubusercontent.com/GMOD/gmod.github.io/main/mediawiki/images/6/67/SOBA_Web_02_Counts.png 1.5x, https://raw.githubusercontent.com/GMOD/gmod.github.io/main/mediawiki/images/6/67/SOBA_Web_02_Counts.png 2x"
width="800" height="579" /></a>


<a href="File:SOBA_Web_02_Counts.png" class="internal"
title="Enlarge"><img
src="../mediawiki/skins/common/images/magnify-clip.png" width="15"
height="11" /></a>

<strong>Figure:2</strong> SOBA feature type counts


</td>
<td></td>
</tr>
</tbody>
</table>

<table>
<colgroup>
<col style="width: 50%" />
<col style="width: 50%" />
</colgroup>
<tbody>
<tr class="odd">
<td>

<a href="File:SOBA_Web_03_Lengths.png" class="image"><img
src="https://raw.githubusercontent.com/GMOD/gmod.github.io/main/mediawiki/images/thumb/3/3f/SOBA_Web_03_Lengths.png/800px-SOBA_Web_03_Lengths.png"
class="thumbimage"
srcset="https://raw.githubusercontent.com/GMOD/gmod.github.io/main/mediawiki/images/3/3f/SOBA_Web_03_Lengths.png 1.5x, https://raw.githubusercontent.com/GMOD/gmod.github.io/main/mediawiki/images/3/3f/SOBA_Web_03_Lengths.png 2x"
width="800" height="347" /></a>


<a href="File:SOBA_Web_03_Lengths.png" class="internal"
title="Enlarge"><img
src="../mediawiki/skins/common/images/magnify-clip.png" width="15"
height="11" /></a>

<strong>Figure:3</strong> SOBA feature lengths


</td>
<td></td>
</tr>
</tbody>
</table>

<table>
<colgroup>
<col style="width: 50%" />
<col style="width: 50%" />
</colgroup>
<tbody>
<tr class="odd">
<td>

<a href="File:SOBA_Web_04_Distribution.png" class="image"><img
src="https://raw.githubusercontent.com/GMOD/gmod.github.io/main/mediawiki/images/thumb/5/52/SOBA_Web_04_Distribution.png/800px-SOBA_Web_04_Distribution.png"
class="thumbimage"
srcset="https://raw.githubusercontent.com/GMOD/gmod.github.io/main/mediawiki/images/5/52/SOBA_Web_04_Distribution.png 1.5x, https://raw.githubusercontent.com/GMOD/gmod.github.io/main/mediawiki/images/5/52/SOBA_Web_04_Distribution.png 2x"
width="800" height="331" /></a>


<a href="File:SOBA_Web_04_Distribution.png" class="internal"
title="Enlarge"><img
src="../mediawiki/skins/common/images/magnify-clip.png" width="15"
height="11" /></a>

<strong>Figure:4</strong> SOBA Feature length distribution


</td>
<td></td>
</tr>
</tbody>
</table>

<table>
<colgroup>
<col style="width: 50%" />
<col style="width: 50%" />
</colgroup>
<tbody>
<tr class="odd">
<td>

<a href="File:SOBA_Web_05_CDS_Distribution.png" class="image"><img
src="https://raw.githubusercontent.com/GMOD/gmod.github.io/main/mediawiki/images/thumb/2/23/SOBA_Web_05_CDS_Distribution.png/800px-SOBA_Web_05_CDS_Distribution.png"
class="thumbimage"
srcset="https://raw.githubusercontent.com/GMOD/gmod.github.io/main/mediawiki/images/2/23/SOBA_Web_05_CDS_Distribution.png 1.5x, https://raw.githubusercontent.com/GMOD/gmod.github.io/main/mediawiki/images/2/23/SOBA_Web_05_CDS_Distribution.png 2x"
width="800" height="417" /></a>


<a href="File:SOBA_Web_05_CDS_Distribution.png" class="internal"
title="Enlarge"><img
src="../mediawiki/skins/common/images/magnify-clip.png" width="15"
height="11" /></a>

<strong>Figure:5</strong> SOBA CDS length histogram


</td>
<td></td>
</tr>
</tbody>
</table>

<table>
<colgroup>
<col style="width: 50%" />
<col style="width: 50%" />
</colgroup>
<tbody>
<tr class="odd">
<td>

<a href="File:SOBA_Web_06_Ontology.png" class="image"><img
src="https://raw.githubusercontent.com/GMOD/gmod.github.io/main/mediawiki/images/thumb/3/33/SOBA_Web_06_Ontology.png/800px-SOBA_Web_06_Ontology.png"
class="thumbimage"
srcset="https://raw.githubusercontent.com/GMOD/gmod.github.io/main/mediawiki/images/3/33/SOBA_Web_06_Ontology.png 1.5x, https://raw.githubusercontent.com/GMOD/gmod.github.io/main/mediawiki/images/3/33/SOBA_Web_06_Ontology.png 2x"
width="800" height="471" /></a>


<a href="File:SOBA_Web_06_Ontology.png" class="internal"
title="Enlarge"><img
src="../mediawiki/skins/common/images/magnify-clip.png" width="15"
height="11" /></a>

<strong>Figure:6</strong> SOBA ontology graph


</td>
<td></td>
</tr>
</tbody>
</table>

# <span id="SOBAcl" class="mw-headline">SOBAcl</span>

Information and downloads for
<a href="http://www.sequenceontology.org/resources/sobacl.html"
class="external text" rel="nofollow">SOBAcl</a> is available from the
<a href="http://www.sequenceontology.org/" class="external text"
rel="nofollow">Sequence Ontology</a> website.

Let's start by grabbing some data to play with.

``` enter
cd /home/gmod/Documents/Data/
wget topaz.genetics.utah.edu/SOBA_GMOD_demo.tar.gz
tar -xzvf SOBA_GMOD_demo.tar.gz 
cd soba/
export PATH=$PATH:/home/gmod/Documents/Software/soba/bin
```

## <span id="Help" class="mw-headline">Help</span>

Documentation for the command line version - SOBAcl - is available as a
usage statement with the script itself:

``` enter
SOBAcl --help 2> soba_help.txt
```

    Synopsis:

    SOBAcl [options] db_name
    SOBAcl [options] file.gff3

    SOBAcl file.gff3 2> soba_count.txt

    Description:

    The Sequence Ontology Bioinformatics Analysis command line tool
    (SOBAcl) will generate a variety of reports from the data in GFF3
    files.  The data can optionally first be loaded into a database.

    Options:

      --help      Print this help page and exit.

      --title     A title for the table, graph, or report.

      --columns [--series]
                  The columns parameter indicates how data will be
                  grouped into columns (or series for axis graphs and
                  seperate graphs for pie graphs).  For example, using
                  seqid as the value would create one column of data for
                  each seqid (chromosome).  For bar and line graphs there
                  would be a data series for each value.  For pie graphs,
                  a separate graph would be generated for each
                  value. (seqid, source, type, strand, phase, [file],
                  stats).

      --rows [--x_data]
                  The rows parameter indicates data will be grouped into
                  rows (x-axis labels for graphs with axes; wedges for
                  pie graphs).  For example, using type as the value
                  would create one row of data for each unique feature
                  type in the GFF3 file.  For bar and line graphs there
                  would be one x-axis label for each type and for pie
                  graphs there would be one pie wedge for each
                  type. (seqid, source, [type], strand, phase, file)

      --data [--y_data]
                  The data parameter indicates which data fields (columns
                  or attributes in the GFF3 file) will be reported.  For
                  example using score for the data parameter will create
                  a report on the scores of features. (seqid, source,
                  type, start, end, [length], score, strand, phase)

      --data_type The data_type parameter indicates how the data described
              in the data parameter should be summarized.  For
              example if data is length and data_type is 'mean', then
              the mean length would be reported for each grouping of
              the data. (count, [mean], harmonic_mean,
              geometric_mead, median, mode, sum, min, max, variance,
              standard deviation, range, footprint)

      --layout    The layout parameter describes how the data will be
              presented.  ([table], lines, bars, hbars, points,
              linespoints, area, pie)

      --format    The format parameter determines how the output will be
              formatted.  For all text based outputs the options are
              (text, [tab], html, html_page, pdf).  For all graphical
              layouts the options are (jpeg, [png], gif).

      --collapse  Collapse series data onto one graph.

## <span id="Tables" class="mw-headline">Tables</span>

First let's just run SOBAcl with all default parameters and see what we
get...

``` enter
SOBAcl hsap_hg18_demo.gff3
```

By default SOBA prints count of each feature type.

              type type (count)
    =====================================
    |               |hsap_hg18_demo.gff3|
    =====================================
    |CDS            |11944              |
    +---------------+-------------------+
    |contig         |    3              |
    +---------------+-------------------+
    |exon           |12918              |
    +---------------+-------------------+
    |five_prime_UTR | 1381              |
    +---------------+-------------------+
    |gene           | 1157              |
    +---------------+-------------------+
    |mRNA           | 1085              |
    +---------------+-------------------+
    |ncRNA          |   72              |
    +---------------+-------------------+
    |three_prime_UTR| 1385              |
    -------------------------------------

Next let's customize the report just a bit by specifying the data that
we want to summarize in the table rows.

``` enter
SOBAcl --rows seqid hsap_hg18_demo.gff3
```

        seqid seqid (count)
    ===========================
    |seqid|hsap_hg18_demo.gff3|
    ===========================
    |chr1 |9986               |
    +-----+-------------------+
    |chr2 |9977               |
    +-----+-------------------+
    |chr3 |9982               |
    ---------------------------

Now we will customize the table a bit more by indicating what data we
want to represent in our rows and columns.

``` enter
SOBAcl --rows type --columns seqid hsap_hg18_demo.gff3
```

           type type (count)
    ================================
    |type           |chr1|chr2|chr3|
    ================================
    |CDS            |3815|4144|3985|
    +---------------+----+----+----+
    |contig         |   1|   1|   1|
    +---------------+----+----+----+
    |exon           |4182|4416|4320|
    +---------------+----+----+----+
    |five_prime_UTR | 540| 387| 454|
    +---------------+----+----+----+
    |gene           | 463| 318| 376|
    +---------------+----+----+----+
    |mRNA           | 430| 301| 354|
    +---------------+----+----+----+
    |ncRNA          |  33|  17|  22|
    +---------------+----+----+----+
    |three_prime_UTR| 522| 393| 470|
    --------------------------------

By default we've just been getting the counts of the different feature
types. Let's look at their lengths by specifying `length` to the
`--data` parameter and `mean` to the `--data_type` parameter.

``` enter
SOBAcl --rows type --columns seqid --data length --data_type mean hsap_hg18_demo.gff3
```

                       type length (mean)
    ========================================================
    |type           |chr1        |chr2        |chr3        |
    ========================================================
    |CDS            |      168.67|      169.28|      159.59|
    +---------------+------------+------------+------------+
    |contig         |247249718   |242951148   |199501826   |
    +---------------+------------+------------+------------+
    |exon           |      308.16|      270.85|      287.11|
    +---------------+------------+------------+------------+
    |five_prime_UTR |      554.27|      618.66|      629.51|
    +---------------+------------+------------+------------+
    |gene           |    48070.89|    88243.71|    73324.19|
    +---------------+------------+------------+------------+
    |mRNA           |    50172.13|    90551.96|    77185.4 |
    +---------------+------------+------------+------------+
    |ncRNA          |    20691.15|    47374.06|    11193.95|
    +---------------+------------+------------+------------+
    |three_prime_UTR|      539.2 |      579.47|      596.2 |
    --------------------------------------------------------

Let's look at the minimum feature length for the entire file.

``` enter
SOBAcl --rows type --data length --data_type min hsap_hg18_demo.gff3
```

              type length (min)
    =====================================
    |type           |hsap_hg18_demo.gff3|
    =====================================
    |CDS            |        2          |
    +---------------+-------------------+
    |contig         |199501826          |
    +---------------+-------------------+
    |exon           |        6          |
    +---------------+-------------------+
    |five_prime_UTR |        0          |
    +---------------+-------------------+
    |gene           |       74          |
    +---------------+-------------------+
    |mRNA           |      287          |
    +---------------+-------------------+
    |ncRNA          |       74          |
    +---------------+-------------------+
    |three_prime_UTR|        0          |
    -------------------------------------

Specifying `--data_type footprint` will give us a look at the "tiled"
length of the features on the chromosome.

``` enter
SOBAcl --rows type --data length --data_type footprint hsap_hg18_demo.gff3
```

           type length (footprint)
    =====================================
    |type           |hsap_hg18_demo.gff3|
    =====================================
    |CDS            |  1829153          |
    +---------------+-------------------+
    |contig         |247249719          |
    +---------------+-------------------+
    |exon           |  3423479          |
    +---------------+-------------------+
    |five_prime_UTR |   785362          |
    +---------------+-------------------+
    |gene           | 61344223          |
    +---------------+-------------------+
    |mRNA           | 60303556          |
    +---------------+-------------------+
    |ncRNA          |  1627355          |
    +---------------+-------------------+
    |three_prime_UTR|   717369          |
    -------------------------------------

Perhaps we want to load that data into Excel so the we can prepare a
table or figure for our paper.

``` enter
SOBAcl --rows type --data length --data_type footprint --format tab hsap_hg18_demo.gff3
```

        hsap_hg18_demo.gff3
    CDS         1829153
    contig          247249719
    exon            3423479
    five_prime_UTR  785362
    gene            61344223
    mRNA            60303556
    ncRNA           1627355
    three_prime_UTR 717369

## <span id="Charts" class="mw-headline">Charts</span>

Let's start by looking at the mean length of the features.

``` enter
SOBAcl --x_data type --series seqid --data length --data_type mean --layout bars --format png hsap_hg18_demo.gff3
firefox SOBAcl_graphic_chr*.png
```

<table>
<colgroup>
<col style="width: 50%" />
<col style="width: 50%" />
</colgroup>
<tbody>
<tr class="odd">
<td>

<a href="File:SOBAcl_graphic_chr1.png" class="image"><img
src="https://raw.githubusercontent.com/GMOD/gmod.github.io/main/mediawiki/images/thumb/8/81/SOBAcl_graphic_chr1.png/300px-SOBAcl_graphic_chr1.png"
class="thumbimage"
srcset="https://raw.githubusercontent.com/GMOD/gmod.github.io/main/mediawiki/images/8/81/SOBAcl_graphic_chr1.png 1.5x, https://raw.githubusercontent.com/GMOD/gmod.github.io/main/mediawiki/images/8/81/SOBAcl_graphic_chr1.png 2x"
width="300" height="225" /></a>


<a href="File:SOBAcl_graphic_chr1.png" class="internal"
title="Enlarge"><img
src="../mediawiki/skins/common/images/magnify-clip.png" width="15"
height="11" /></a>

<strong>Figure:7</strong> SOBA feature lengths for chromosome 1


<a href="File:SOBAcl_graphic_chr2.png" class="image"><img
src="https://raw.githubusercontent.com/GMOD/gmod.github.io/main/mediawiki/images/thumb/7/71/SOBAcl_graphic_chr2.png/300px-SOBAcl_graphic_chr2.png"
class="thumbimage"
srcset="https://raw.githubusercontent.com/GMOD/gmod.github.io/main/mediawiki/images/7/71/SOBAcl_graphic_chr2.png 1.5x, https://raw.githubusercontent.com/GMOD/gmod.github.io/main/mediawiki/images/7/71/SOBAcl_graphic_chr2.png 2x"
width="300" height="225" /></a>


<a href="File:SOBAcl_graphic_chr2.png" class="internal"
title="Enlarge"><img
src="../mediawiki/skins/common/images/magnify-clip.png" width="15"
height="11" /></a>

<strong>Figure:7</strong> SOBA feature lengths for chromosome 2


<a href="File:SOBAcl_graphic_chr3.png" class="image"><img
src="https://raw.githubusercontent.com/GMOD/gmod.github.io/main/mediawiki/images/thumb/b/b8/SOBAcl_graphic_chr3.png/300px-SOBAcl_graphic_chr3.png"
class="thumbimage"
srcset="https://raw.githubusercontent.com/GMOD/gmod.github.io/main/mediawiki/images/b/b8/SOBAcl_graphic_chr3.png 1.5x, https://raw.githubusercontent.com/GMOD/gmod.github.io/main/mediawiki/images/b/b8/SOBAcl_graphic_chr3.png 2x"
width="300" height="225" /></a>


<a href="File:SOBAcl_graphic_chr3.png" class="internal"
title="Enlarge"><img
src="../mediawiki/skins/common/images/magnify-clip.png" width="15"
height="11" /></a>

<strong>Figure:7</strong> SOBA feature lengths for chromosome 3


</td>
<td></td>
</tr>
</tbody>
</table>

O.K. that worked, but it doesn't look quite like what we had in mind.
First of all, we'd the X-axis labels overrun each other, the contig
feature is so long that none of the other feature lengths even show up
on the chart, and we got three charts - one for each chromosome (seqid).
Let's fix all of those problems using the `--gd`, `--collapse` and
`--select` parameters.

``` enter
SOBAcl --x_data type --series seqid --data length --data_type mean --layout bars --format png --gd x_labels_vertical=1 --select 'type => "exon"' --collapse hsap_hg18_demo.gff3
firefox SOBAcl_graphic.png
```

<table>
<colgroup>
<col style="width: 50%" />
<col style="width: 50%" />
</colgroup>
<tbody>
<tr class="odd">
<td>

<a href="File:SOBAcl_graphic_exon.png" class="image"><img
src="https://raw.githubusercontent.com/GMOD/gmod.github.io/main/mediawiki/images/c/c0/SOBAcl_graphic_exon.png"
class="thumbimage" width="400" height="300" /></a>


<a href="File:SOBAcl_graphic_exon.png" class="internal"
title="Enlarge"><img
src="../mediawiki/skins/common/images/magnify-clip.png" width="15"
height="11" /></a>

<strong>Figure:8</strong> SOBA feature lengths by chromosome


</td>
<td></td>
</tr>
</tbody>
</table>

If we just wanted to exclude the contigs, our `--select` parameter an do
that as well.

``` enter
SOBAcl --x_data type --series seqid --data length --data_type mean --layout bars --format png --gd x_labels_vertical=1 --select 'type => ["ne", "contig"]' --collapse hsap_hg18_demo.gff3
```

<table>
<colgroup>
<col style="width: 50%" />
<col style="width: 50%" />
</colgroup>
<tbody>
<tr class="odd">
<td>

<a href="File:SOBAcl_graphic.png" class="image"><img
src="https://raw.githubusercontent.com/GMOD/gmod.github.io/main/mediawiki/images/e/ea/SOBAcl_graphic.png" class="thumbimage"
width="400" height="300" /></a>


<a href="File:SOBAcl_graphic.png" class="internal" title="Enlarge"><img
src="../mediawiki/skins/common/images/magnify-clip.png" width="15"
height="11" /></a>

<strong>Figure:8</strong> SOBA feature lengths by chromosome


</td>
<td></td>
</tr>
</tbody>
</table>

We can constrain the features reported in other ways as well.

``` enter
SOBAcl --columns seqid --rows type --data length --data_type mean --layout table --format text --select 'start => [">=", "1000"], end => ["<=", "1000000"]' hsap_hg18_demo.gff3
```

## <span id="Reports" class="mw-headline">Reports</span>

SOBAcl has support for more complex reports.

``` enter
SOBAcl --report attributes --format html_page hsap_hg18_demo.gff3
```

These reports can be generated by custom templates.

``` enter
SOBAcl --columns file   --rows type --data length --data_type mean  --layout table --format tab --template soba_custom_template_text.tt hsap_hg18_demo.gff3
```

                 count  length (mean)   
    CDS          11944  165.853064300067
    contig           3  229900897.333333
    exon             12918  288.366697631212
    five_prime_UTR   1381   597.052136133237
    gene             1157   67319.117545376
    mRNA             1085   70187.8202764977
    ncRNA            72 24089.3611111111
    three_prime_UTR  1385   569.969675090253




[Categories](Special%3ACategories "Special%3ACategories"):

- [2011 Spring
  Training](Category%3A2011_Spring_Training "Category%3A2011 Spring Training")
- [Tutorials](Category%3ATutorials "Category%3ATutorials")
- [SOBA](Category%3ASOBA "Category%3ASOBA")






## Navigation menu



### Namespaces


- <span id="ca-talk"><a
  href="http://gmod.org/mediawiki/index.php?title=Talk:SOBA_Tutorial_2011&amp;action=edit&amp;redlink=1"
  accesskey="t"
  title="Discussion about the content page [t]">Discussion</a></span>


### 

### Variants[](#)








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

- <span id="t-smwbrowselink"><a href="Special%3ABrowse/SOBA_Tutorial_2011" rel="smw-browse">Browse
  properties</a></span>



- <span id="footer-info-lastmod">Last updated at 03:36 on 24 June
  2014.</span>
<!-- - <span id="footer-info-viewcount">7,924 page views.</span> -->
- <span id="footer-info-copyright">Content is available under
  <a href="http://www.gnu.org/licenses/fdl-1.3.html" class="external"
  rel="nofollow">a GNU Free Documentation License</a> unless otherwise
  noted.</span>

<!-- -->

- <span id="footer-places-about">[About
  GMOD](GMOD%3AAbout "GMOD%3AAbout")</span>

<!-- -->




