



<span id="top"></span>




# <span dir="auto">GMOD Malaysia 2014/MAKER Tutorial</span>









This [MAKER](../MAKER.1 "MAKER") tutorial was presented by [Michael
Campbell](../User%3AMichael_Campbell "User%3AMichael Campbell") at [GMOD
Malaysia 2014](../GMOD_Malaysia_2014.1 "GMOD Malaysia 2014"), February
2014. This tutorial requires MAKER version 2.x.

The most recent MAKER tutorial can be found at the
<a href="../MAKER_Tutorial" class="mw-redirect"
title="MAKER Tutorial">MAKER Tutorial</a> page.

This tutorial uses the AWS AMI ' ***named '*** in the '

.

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
  <span class="toctext">MAKER-P</span>](#MAKER-P)
  - [<span class="tocnumber">4.1</span>
    <span class="toctext">Performance on large computing
    clusters</span>](#Performance_on_large_computing_clusters)
  - [<span class="tocnumber">4.2</span> <span class="toctext">Tutorials
    for custom repeat library
    generation</span>](#Tutorials_for_custom_repeat_library_generation)
  - [<span class="tocnumber">4.3</span> <span class="toctext">Pseudogene
    identification pipeline</span>](#Pseudogene_identification_pipeline)
  - [<span class="tocnumber">4.4</span> <span class="toctext">Non-coding
    RNA annotation</span>](#Non-coding_RNA_annotation)
- [<span class="tocnumber">5</span>
  <span class="toctext">Installation</span>](#Installation)
  - [<span class="tocnumber">5.1</span>
    <span class="toctext">Prerequisites</span>](#Prerequisites)
  - [<span class="tocnumber">5.2</span> <span class="toctext">The MAKER
    Package</span>](#The_MAKER_Package)
- [<span class="tocnumber">6</span> <span class="toctext">Getting
  Started with MAKER</span>](#Getting_Started_with_MAKER)
  - [<span class="tocnumber">6.1</span>
    <span class="toctext">Note</span>](#Note)
  - [<span class="tocnumber">6.2</span> <span class="toctext">Running
    MAKER with example data</span>](#Running_MAKER_with_example_data)
- [<span class="tocnumber">7</span> <span class="toctext">Details of
  What is Going on Inside of
  MAKER</span>](#Details_of_What_is_Going_on_Inside_of_MAKER)
  - [<span class="tocnumber">7.1</span> <span class="toctext">Repeat
    Masking</span>](#Repeat_Masking)
  - [<span class="tocnumber">7.2</span> <span class="toctext">*Ab
    Initio* Gene Prediction</span>](#Ab_Initio_Gene_Prediction)
  - [<span class="tocnumber">7.3</span> <span class="toctext">RNA and
    Protein Evidence
    Alignment</span>](#RNA_and_Protein_Evidence_Alignment)
  - [<span class="tocnumber">7.4</span> <span class="toctext">Polishing
    Evidence Alignments</span>](#Polishing_Evidence_Alignments)
  - [<span class="tocnumber">7.5</span>
    <span class="toctext">Integrating Evidence to Synthesize
    Annotations</span>](#Integrating_Evidence_to_Synthesize_Annotations)
  - [<span class="tocnumber">7.6</span> <span class="toctext">Selecting
    and Revising the Final Gene
    Model</span>](#Selecting_and_Revising_the_Final_Gene_Model)
  - [<span class="tocnumber">7.7</span> <span class="toctext">Quality
    Control</span>](#Quality_Control)
- [<span class="tocnumber">8</span> <span class="toctext">MAKER's
  Output</span>](#MAKER.27s_Output)
- [<span class="tocnumber">9</span> <span class="toctext">Viewing MAKER
  Annotations</span>](#Viewing_MAKER_Annotations)
  - [<span class="tocnumber">9.1</span>
    <span class="toctext">Apollo</span>](#Apollo)
  - [<span class="tocnumber">9.2</span> <span class="toctext">GAL
    (genome annotation
    library)</span>](#GAL_.28genome_annotation_library.29)
- [<span class="tocnumber">10</span> <span class="toctext">Advanced
  MAKER Configuration, Re-annotation Options, and Improving Annotation
  Quality</span>](#Advanced_MAKER_Configuration.2C_Re-annotation_Options.2C_and_Improving_Annotation_Quality)
  - [<span class="tocnumber">10.1</span>
    <span class="toctext">Configuration Files in
    Detail</span>](#Configuration_Files_in_Detail)
    - [<span class="tocnumber">10.1.1</span>
      <span class="toctext">Genome Options
      (Required)</span>](#Genome_Options_.28Required.29)
    - [<span class="tocnumber">10.1.2</span>
      <span class="toctext">Re-annotation Using MAKER Derived
      GFF3</span>](#Re-annotation_Using_MAKER_Derived_GFF3)
    - [<span class="tocnumber">10.1.3</span> <span class="toctext">RNA
      (EST) Evidence</span>](#RNA_.28EST.29_Evidence)
    - [<span class="tocnumber">10.1.4</span>
      <span class="toctext">Protein Homology
      Evidence</span>](#Protein_Homology_Evidence)
    - [<span class="tocnumber">10.1.5</span>
      <span class="toctext">Repeat Masking</span>](#Repeat_Masking_2)
    - [<span class="tocnumber">10.1.6</span> <span class="toctext">Gene
      Prediction</span>](#Gene_Prediction)
    - [<span class="tocnumber">10.1.7</span> <span class="toctext">Other
      Annotation Feature Types</span>](#Other_Annotation_Feature_Types)
    - [<span class="tocnumber">10.1.8</span>
      <span class="toctext">External Application Behavior
      Options</span>](#External_Application_Behavior_Options)
    - [<span class="tocnumber">10.1.9</span> <span class="toctext">MAKER
      Behavior Options</span>](#MAKER_Behavior_Options)
  - [<span class="tocnumber">10.2</span> <span class="toctext">Training
    *ab initio* Gene
    Predictors</span>](#Training_ab_initio_Gene_Predictors)
  - [<span class="tocnumber">10.3</span> <span class="toctext">Improving
    Annotation Quality with MAKER's AED
    score</span>](#Improving_Annotation_Quality_with_MAKER.27s_AED_score)
  - [<span class="tocnumber">10.4</span>
    <span class="toctext">Merge/Resolve Legacy
    Annotations</span>](#Merge.2FResolve_Legacy_Annotations)
  - [<span class="tocnumber">10.5</span> <span class="toctext">MPI
    Support</span>](#MPI_Support)
  - [<span class="tocnumber">10.6</span> <span class="toctext">MAKER
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

<a href="../File:Structural.png" class="image"><img
src="https://raw.githubusercontent.com/GMOD/gmod.github.io/main/mediawiki/images/c/cf/Structural.png" width="152" height="32"
alt="Structural.png" /></a>


<a href="../File:MAKER_UCSC_Genome_Browser.jpg" class="image"><img
src="https://raw.githubusercontent.com/GMOD/gmod.github.io/main/mediawiki/images/thumb/7/7d/MAKER_UCSC_Genome_Browser.jpg/700px-MAKER_UCSC_Genome_Browser.jpg"
class="thumbimage"
srcset="https://raw.githubusercontent.com/GMOD/gmod.github.io/main/mediawiki/images/thumb/7/7d/MAKER_UCSC_Genome_Browser.jpg/1050px-MAKER_UCSC_Genome_Browser.jpg 1.5x, https://raw.githubusercontent.com/GMOD/gmod.github.io/main/mediawiki/images/thumb/7/7d/MAKER_UCSC_Genome_Browser.jpg/1400px-MAKER_UCSC_Genome_Browser.jpg 2x"
width="700" height="173" /></a>


<a href="../File:MAKER_UCSC_Genome_Browser.jpg" class="internal"
title="Enlarge"><img
src="../../mediawiki/skins/common/images/magnify-clip.png" width="15"
height="11" /></a>



Structural Annotations




- Functional Annotations: process a gene is involved in (metabolism),
  molecular function (hydrolase), location of expression (expressed in
  the mitochondria), etc.
  (<a href="http://www.geneontology.org/" class="external text"
  rel="nofollow">Gene Ontology</a>)


<a href="../File:MAKER_GO_Screenshot.jpg" class="image"><img
src="https://raw.githubusercontent.com/GMOD/gmod.github.io/main/mediawiki/images/thumb/2/25/MAKER_GO_Screenshot.jpg/700px-MAKER_GO_Screenshot.jpg"
class="thumbimage"
srcset="https://raw.githubusercontent.com/GMOD/gmod.github.io/main/mediawiki/images/thumb/2/25/MAKER_GO_Screenshot.jpg/1050px-MAKER_GO_Screenshot.jpg 1.5x, https://raw.githubusercontent.com/GMOD/gmod.github.io/main/mediawiki/images/2/25/MAKER_GO_Screenshot.jpg 2x"
width="700" height="294" /></a>


<a href="../File:MAKER_GO_Screenshot.jpg" class="internal"
title="Enlarge"><img
src="../../mediawiki/skins/common/images/magnify-clip.png" width="15"
height="11" /></a>



Functional Annotations




It is especially important that all genome annotations include an
evidence trail that describes in detail the evidence that was used to
both suggest and support each annotation. This assists in curation,
quality control and management of genome annotations.

Examples of evidence supporting a structural annotation:

- *Ab initio* gene predictions
- Transcribed RNA (mRNA-Seq/ESTs/cDNA/transcript)
- Proteins

### <span id="Importance_of_Genome_Annotations" class="mw-headline">Importance of Genome Annotations</span>

Why should the average biologist care about genome annotations?


<a href="../File:Process.png" class="image"><img
src="https://raw.githubusercontent.com/GMOD/gmod.github.io/main/mediawiki/images/thumb/a/a7/Process.png/560px-Process.png"
class="thumbimage"
srcset="https://raw.githubusercontent.com/GMOD/gmod.github.io/main/mediawiki/images/thumb/a/a7/Process.png/840px-Process.png 1.5x, https://raw.githubusercontent.com/GMOD/gmod.github.io/main/mediawiki/images/a/a7/Process.png 2x"
width="560" height="352" /></a>


<a href="../File:Process.png" class="internal" title="Enlarge"><img
src="../../mediawiki/skins/common/images/magnify-clip.png" width="15"
height="11" /></a>



Genome project from sequencing to experimental application of
annotations




  
Genome sequence itself is not very useful. The first question that
occurs to most of us when a genome is sequenced is, "where are the
genes?" To identify the genes we need to annotate the genome. And while
most researchers probably don't give annotations a lot of thought, they
use them everyday.

  
Examples of Annotation Databases:

 and here <a
  href="http://gmod.org/mediawiki/index.php?title=Repeat_Library_Construction--Advanced&amp;action=edit&amp;redlink=1"
  class="new"
  title="Repeat Library Construction--Advanced (page does not exist)">Repeat
  Library Construction--Advanced</a>.
- Next MAKER uses RepeatRunner to identify transposable elements and
  viral proteins using the RepeatRunner protein database. Because
  RepeatRunner uses protein sequence libraries and protein sequence
  diverges at a slower rate than nucleotide sequence, this step picks up
  many problematic regions of divergent repeats that are missed by
  RepeatMasker (which searches in nucleotide space).

Regions identified during repeat analysis are masked out in two
different ways:

1.  Complex repeats are hard-masked - the repeat sequence is replaced
    with the letter N. This essentially removes this sequence from any
    further consideration at any later point of the annotation process.
2.  Simple repeats are soft-masked - sequences are transformed to lower
    case. This prevents alignment programs such as Blast from seeding
    any new alignments in the soft-masked region, however alignments
    that begin in a nearby (non-masked) region of the genome can extend
    into the soft-masked region. This is important because
    low-complexity regions are found within many real genes, they just
    don't make up the majority of the gene.

Masking sequence from the annotation pipeline (especially hard masking)
may seem like it might cause us to lose real protein coding genes that
are important for the organism's biology. It is true that repeat derived
genes can be co-opted and expressed by the organism and repeat masking
will affect our ability to annotate these genes. However, these genes
are rare and the number of gene models and sequence alignments improved
by the repeat masking step far outweighs the few gene models that may be
negatively affected. You do have the option to run *ab initio* gene
predictors on both the masked and unmasked sequence if repeat masking
worries you though. You do this by setting unmask:1 in the
`maker_opt.ctl` configuration file.

### <span id="Ab_Initio_Gene_Prediction" class="mw-headline">*Ab Initio* Gene Prediction</span>

Following repeat masking, MAKER runs *ab initio* gene predictors
specified by the user to produce preliminary gene models. *Ab initio*
gene predictors produce gene predictions based on underlying
mathematical models describing patterns of intron/exon structure and
consensus start signals. Because the patterns of gene structure are
going to differ from organism to organism, you must train gene
predictors before you can use them. I will discuss how to do this later
on.

<a href="../File:Prediction.jpg" class="image"
title="Generate ab initio gene predictions"><img
src="https://raw.githubusercontent.com/GMOD/gmod.github.io/main/mediawiki/images/thumb/7/7e/Prediction.jpg/560px-Prediction.jpg"
srcset="https://raw.githubusercontent.com/GMOD/gmod.github.io/main/mediawiki/images/7/7e/Prediction.jpg 1.5x, https://raw.githubusercontent.com/GMOD/gmod.github.io/main/mediawiki/images/7/7e/Prediction.jpg 2x"
width="560" height="357"
alt="Generate ab initio gene predictions" /></a>

  
MAKER currently supports:

- SNAP (Works good, easy to train, not as good as others especially on
  longer intron genomes).
- Augustus (Works great, hard to train, but getting better)
- GeneMark (Self training, no hints, buggy, not good for fragmented
  genomes or long introns).
- FGENESH (Works great, costs money even for training)

  
You must specify in the maker_opts.ctl file the training parameters file
you want to use use when running each of these algorithms.

### <span id="RNA_and_Protein_Evidence_Alignment" class="mw-headline">RNA and Protein Evidence Alignment</span>

A simple way to indicate if a sequence region is likely associated with
a gene is to identify (A) if the region is actively being transcribed or
(B) if the region has homology to a known protein. This can be done by
aligning Expressed Sequence Tags (ESTs) and proteins to the genome using
alignment algorithms.

- ESTs are sequences derived from a cDNA library. In recent years ESTs
  have been largely replaced by mRNA-seq data, which have decreases
  costs but have may of same challenges as traditional EST libraries.
  Because of the difficulties associated with working with mRNA and
  depending on how the cDNA library was prepared, EST databases and
  mRNA-seq assemblies usually represent bits and pieces of transcribed
  RNA with only a few full length transcripts. MAKER aligns these
  sequences to the genome using BLASTN. If ESTs/mrNA-seq from the
  organism being annotated are unavailable or sparse, you can use
  ESTs/mRNA-seq from a closely related organism. However, RNA from
  closely related organisms are unlikely to align using BLASTN since
  nucleotide sequences can diverge quite rapidly. For these RNAs, MAKER
  uses TBLASTX to align them in protein space.
- Protein sequence generally diverges quite slowly over large
  evolutionary distances, as a result proteins from even evolutionarily
  distant organisms can be aligned against raw genomic sequence to try
  and identify regions of homology. MAKER does this using BLASTX.


<a href="../File:Evidence.jpg" class="image"><img
src="https://raw.githubusercontent.com/GMOD/gmod.github.io/main/mediawiki/images/thumb/e/e1/Evidence.jpg/560px-Evidence.jpg"
class="thumbimage"
srcset="https://raw.githubusercontent.com/GMOD/gmod.github.io/main/mediawiki/images/e/e1/Evidence.jpg 1.5x, https://raw.githubusercontent.com/GMOD/gmod.github.io/main/mediawiki/images/e/e1/Evidence.jpg 2x"
width="560" height="354" /></a>


<a href="../File:Evidence.jpg" class="internal" title="Enlarge"><img
src="../../mediawiki/skins/common/images/magnify-clip.png" width="15"
height="11" /></a>



Align EST and protein evidence




Remember now that we are aligning against the repeat-masked genomic
sequence. How is this going to affect our alignments? For one thing we
won't be able to align against low-complexity regions. Some real
proteins contain low-complexity regions and it would be nice to identify
those, but if I let anything align to a low-complexity region, then I
will get spurious alignments all over the genome. Wouldn't it be nice if
there was a way to allow BLAST to extend alignments through
low-complexity regions, but only if there is is already alignment
somewhere else? You can do this with soft-masking. If you remember
soft-masking is using lower case letters to mask sequence without losing
the sequence information. BLAST allows you to use soft-masking to keep
alignments from seeding in low-complexity regions, but allows you to
extend through them. This of course will allow some of the spurious
alignments you were trying to avoid, but overall you still end up
suppressing the majority of poor alignments while letting through enough
real alignments to justify the cost. You can turn this behavior off
though if it bothers you by setting `softmask=0` in the `maker_bopt.ctl`
file.

### <span id="Polishing_Evidence_Alignments" class="mw-headline">Polishing Evidence Alignments</span>

Because of oddities associated with how BLAST statistics work, BLAST
alignments are not as informative as they could be. BLAST will align
regions any where it can, even if the algorithm aligns regions out of
order, with multiple overlapping alignments in the exact same region, or
with slight overhangs around splice sites.

  
To get more informative alignments MAKER uses the program Exonerate to
polish BLAST hits. Exonerate realigns each sequences identified by BLAST
around splice sites and forces the alignments to occur in order. The
result is a high quality alignment that can be used to suggest near
exact intron/exon positions. Polished alignments are produced using the
est2genome and protein2genome options for Exonerate.


<a href="../File:Polish.jpg" class="image"><img
src="https://raw.githubusercontent.com/GMOD/gmod.github.io/main/mediawiki/images/thumb/1/12/Polish.jpg/560px-Polish.jpg"
class="thumbimage"
srcset="https://raw.githubusercontent.com/GMOD/gmod.github.io/main/mediawiki/images/1/12/Polish.jpg 1.5x, https://raw.githubusercontent.com/GMOD/gmod.github.io/main/mediawiki/images/1/12/Polish.jpg 2x"
width="560" height="352" /></a>


<a href="../File:Polish.jpg" class="internal" title="Enlarge"><img
src="../../mediawiki/skins/common/images/magnify-clip.png" width="15"
height="11" /></a>



Polish BLAST alignments with Exonerate




  
One of the benefits of polishing EST alignments is the ability to
identify the strand an EST derives from. Because of amplification steps
involved in building an EST library and limitations involved in some
high throughput sequencing technologies, you don't necessarily know
whether you're really aligning the forward or reverse transcript of an
mRNA. However, if you take splice sites into account, you can only align
to one strand correctly.

  

### <span id="Integrating_Evidence_to_Synthesize_Annotations" class="mw-headline">Integrating Evidence to Synthesize Annotations</span>

Once you have *ab initio* predictions, EST alignments, and protein
alignments you can integrate this evidence to produce even better gene
predictions. MAKER does this by communicating with the gene prediction
programs. MAKER takes all the evidence, generates "hints" to where
splice sites and protein coding regions are located, and then passes
these "hints" to programs that will accept them.


<a href="../File:Hint.jpg" class="image"><img
src="https://raw.githubusercontent.com/GMOD/gmod.github.io/main/mediawiki/images/thumb/f/f4/Hint.jpg/560px-Hint.jpg"
class="thumbimage"
srcset="https://raw.githubusercontent.com/GMOD/gmod.github.io/main/mediawiki/images/f/f4/Hint.jpg 1.5x, https://raw.githubusercontent.com/GMOD/gmod.github.io/main/mediawiki/images/f/f4/Hint.jpg 2x"
width="560" height="355" /></a>


<a href="../File:Hint.jpg" class="internal" title="Enlarge"><img
src="../../mediawiki/skins/common/images/magnify-clip.png" width="15"
height="11" /></a>



Pass gene finders evidence-based ‘hints’




MAKER produces hint based predictors for:

- SNAP
- Augustus
- FGENESH
- GeneMark (under development)

### <span id="Selecting_and_Revising_the_Final_Gene_Model" class="mw-headline">Selecting and Revising the Final Gene Model</span>

MAKER then takes the entire pool of *ab initio* and evidence informed
gene predictions, updates features such as 5' and 3' UTRs based on EST
evidence, tries to determine alternative splice forms where EST data
permits, produces quality control metrics for each gene model (this is
included in the output), and then MAKER chooses from among all the gene
model possibilities the one that best matches the evidence. This is done
using a modified sensitivity/specificity distance metric.


<a href="../File:Select.jpg" class="image"><img
src="https://raw.githubusercontent.com/GMOD/gmod.github.io/main/mediawiki/images/thumb/f/f6/Select.jpg/560px-Select.jpg"
class="thumbimage"
srcset="https://raw.githubusercontent.com/GMOD/gmod.github.io/main/mediawiki/images/f/f6/Select.jpg 1.5x, https://raw.githubusercontent.com/GMOD/gmod.github.io/main/mediawiki/images/f/f6/Select.jpg 2x"
width="560" height="401" /></a>


<a href="../File:Select.jpg" class="internal" title="Enlarge"><img
src="../../mediawiki/skins/common/images/magnify-clip.png" width="15"
height="11" /></a>



Identify gene model most consistent with evidence\*




MAKER can use evidence from EST alignments to revise gene models to
include features such as 5' and 3' UTRs.


<a href="../File:Revise.jpg" class="image"><img
src="https://raw.githubusercontent.com/GMOD/gmod.github.io/main/mediawiki/images/thumb/d/d6/Revise.jpg/560px-Revise.jpg"
class="thumbimage"
srcset="https://raw.githubusercontent.com/GMOD/gmod.github.io/main/mediawiki/images/d/d6/Revise.jpg 1.5x, https://raw.githubusercontent.com/GMOD/gmod.github.io/main/mediawiki/images/d/d6/Revise.jpg 2x"
width="560" height="355" /></a>


<a href="../File:Revise.jpg" class="internal" title="Enlarge"><img
src="../../mediawiki/skins/common/images/magnify-clip.png" width="15"
height="11" /></a>



Revise model further if necessary; create new annotation




### <span id="Quality_Control" class="mw-headline">Quality Control</span>

Finally MAKER calculates quality control statistics to assist in
downstream management and curation of gene models outside of MAKER.


<a href="../File:Statistics.jpg" class="image"><img
src="https://raw.githubusercontent.com/GMOD/gmod.github.io/main/mediawiki/images/thumb/d/de/Statistics.jpg/560px-Statistics.jpg"
class="thumbimage"
srcset="https://raw.githubusercontent.com/GMOD/gmod.github.io/main/mediawiki/images/d/de/Statistics.jpg 1.5x, https://raw.githubusercontent.com/GMOD/gmod.github.io/main/mediawiki/images/d/de/Statistics.jpg 2x"
width="560" height="310" /></a>


<a href="../File:Statistics.jpg" class="internal" title="Enlarge"><img
src="../../mediawiki/skins/common/images/magnify-clip.png" width="15"
height="11" /></a>



Compute support for each portion of the gene model




## <span id="MAKER.27s_Output" class="mw-headline">MAKER's Output</span>

If you look in the current working directory, you will see that MAKER
has created an output directory called `dpp_contig.maker.output`. The
name of the output directory is based on the input genomic sequence
file, which in this case was `dpp_contig.fasta`.

  
Now let's see what's inside the output directory.

``` enter
 cd dpp_contig.maker.output
 ls -1
```

You should now see a list of directories and files created by MAKER.

    dpp_contig_datastore
    dpp_contig_master_datastore_index.log
    maker_bopts.log
    maker_exe.log
    maker_opts.log
    mpi_blastdb
    seen.dbm

- The `maker_opts.log`, `maker_exe.log`, and `maker_bopts.log` files are
  logs of the control files used for this run of MAKER.
- The `mpi_blastdb` directory contains FASTA indexes and BLAST database
  files created from the input EST, protein, and repeat databases.
- The `dpp_contig_master_datastore_index.log` contains information on
  both the run status of individual contigs and information on where
  individual contig data is stored.
- The `dpp_contig_datastore` directory contains a set of subfolders,
  each containing the final MAKER output for individual contigs from the
  genomic fasta file.

  
Once a MAKER run is finished the most important file to look at is the
`dpp_contig_master_datastore_index.log` to see if there were any
failures.

``` enter
less -S dpp_contig_master_datastore_index.log
```

  
If everything proceeded correctly you should see the following:

    contig-dpp-500-500      dpp_contig_datastore/05/1F/contig-dpp-500-500/  STARTED
    contig-dpp-500-500      dpp_contig_datastore/05/1F/contig-dpp-500-500/  FINISHED

  
There are only entries describing a single contig because there was only
one contig in the example file. These lines indicate that the contig
`contig-dpp-500-500` STARTED and then FINISHED without incident. Other
possible entries include:

- FAILED - indicates a failed run on this contig, MAKER will retry these
- RETRY - indicates that MAKER is retrying a contig that failed
- SKIPPED_SMALL - indicates the contig was too short to annotate
  (minimum contig length is specified in `maker_opt.ctl`)
- DIED_SKIPPED_PERMANENT - indicates a failed contig that MAKER will not
  attempt to retry (number of times to retry a contig is specified in
  `maker_opt.ctl`)

The entries in the `dpp_contig_master_datastore_index.log` file also
indicate that the output files for this contig are stored in the
directory `dpp_contig_datastore/contig-dpp-500-500/`. Knowing where the
output is stored may seem trivial, however, input genome fasta files can
contain thousands even hundreds-of-thousands of contigs, and many
file-systems have performance problems with large numbers of
sub-directories and files within a single directory. Even when the
underlying file-system handles things gracefully, access via network
file-systems can still be an issue. To deal with this problem, MAKER
creates a hierarchy of nested sub-directory layers, starting from a
'base', and places the results for a given contig within these datastore
of possibly thousands of nested directories. The
`master_datastore_index.log` file this is essential for identifying
where the output for a given contig is stored.

Now let's take a look at what MAKER produced for the contig
'contig-dpp-500-500'.

``` enter
 cd dpp_contig_datastore/05/1F/contig-dpp-500-500/
 ls -1
```

The directory should contain a number of files and a directory.

    contig-dpp-500-500.gff
    contig-dpp-500-500.maker.proteins.fasta
    contig-dpp-500-500.maker.transcripts.fasta
    contig-dpp-500-500.maker.trnascan.transcripts.fasta
    run.log
    theVoid.contig-dpp-500-500

  

- The `contig-dpp-500-500.gff` contains all annotations and evidence
  alignments in [GFF3](../GFF3 "GFF3") format. This is the important
  file for use with [Apollo](../Apollo.1 "Apollo") or
  [GBrowse](../GBrowse.1 "GBrowse").
- The `contig-dpp-500-500.maker.transcripts.fasta` and
  `contig-dpp-500-500.maker.proteins.fasta` files contain the transcript
  and protein sequences for MAKER produced gene annotations.
- The `run.log` file is a log file. If you change settings and rerun
  MAKER on the same dataset, or if you are running a job on an entire
  genome and the system fails, this file lets MAKER know what analyses
  need to be deleted, rerun, or can be carried over from a previous run.
  One advantage of this is that rerunning MAKER is extremely fast, and
  your runs are virtually immune to all system failures.
- The directory `theVoid.contig-dpp-500-500` contains raw output files
  from all the programs MAKER runs (Blast, SNAP, RepeatMasker, etc.).
  You can usually ignore this directory and its contents.

## <span id="Viewing_MAKER_Annotations" class="mw-headline">Viewing MAKER Annotations</span>

Let's take a look at the GFF3 file produced by MAKER.

    less contig-dpp-500-500.gff

As you can see, manually viewing the raw GFF3 file produced by MAKER
really isn't that meaningful. While you can identify individual features
such as genes, mRNAs, and exons, trying to interpret those features in
the context of thousands of other genes and thousands of bases of
sequence really can't be done by directly looking at the GFF3 file.

  
For sanity check purposes it would be nice to have a graphical view of
what's in the GFF3 file. To do that, GFF3 files can be loaded into
programs like [Apollo](../Apollo.1 "Apollo") and
[GBrowse](../GBrowse.1 "GBrowse").

### <span id="Apollo" class="mw-headline">Apollo</span>

While genome browsers like Gbrowse and JBrowse are very useful for
displaying and distributing our annotations to the broader scientific
community, since we've created and maintain these annotations we'll want
to be able to manually curate them. \[Apollo\] is the tool for this job!

Apollo comes in two flavors a desktop application and a web-application.
For a quick look at the annotations the Apollo desktop application is
about as easy to use as it gets. We could run Apollo on our AWS server
to view our annotations on our laptop by setting up X-11 forwarding, but
with a roomful of us running GUIS on a remote server over a shared
wireless connection is asking for trouble. So let's copy our genome
files to our laptop and view them there. If you don't have Apollo
installed on your local machine just follow along for a while on the
main screen or a neighbor's computer.

``` enter
scp -i .ssh/summerschool.pem ubuntu@ec2-107-22-1-182.compute-1.amazonaws.com:\
/home/ubuntu/maker/maker_course/example1_dmel/dpp_contig.maker.output/\
dpp_contig_datastore/05/1F/contig-dpp-500-500/contig-dpp-500-500.gff
```

Your AWS connection string will be different.

Before starting Apollo let's configure it for MAKER output. MAKER comes
with a configuration file that will allow Apollo to display MAKER
annotations and evidence in nice color (otherwise everything will be the
same color of white). Put a copy of this
<a href="http://topaz.genetics.utah.edu/gff3.tiers"
class="external text" rel="nofollow">configuration file</a> `~/.apollo`
directory. If you are on a mac this files goes here
`/Applications/Apollo.app/Contents/Resources/app/`

Now start Apollo and load the `contig-dpp-500-500.gff` into
[Apollo](../Apollo.1 "Apollo") and take a look at what MAKER produced.
We put the `contig-dpp-500-500.gff` file in our home directory to make
it easy to locate.

You will notice that there are a number of bars representing the gene
annotations and the evidence alignments supporting those annotations.
Annotations are in the middle light colored panel, and evidence
alignments are in the dark panels at the top and bottom. As you have
probably realized, this view is much easier to interpret than looking
directly at the GFF3 file.

Now click on each piece of evidence and you will see its source in the
table at the bottom of the Apollo screen.

Possible Sources Include:

- BLASTN - BLASTN alignment of EST evidence
- BLASTX - BLASTX alignment of protein evidence
- TBLASTX - TBLASTX alignment of EST evidence from closely related
  organisms
- EST2Genome - Polished EST alignment from Exonerate
- Protein2Genome - Polished protein alignment from Exonerate
- SNAP - SNAP *ab inito* gene prediction
- GENEMARK - GeneMark*ab inito* gene prediction
- Augustus - Augustus *ab inito* gene prediction
- FgenesH - FGENESH *ab inito* gene prediction
- Repeatmasker - RepeatMasker identified repeat
- RepeatRunner - RepeatRunner identified repeat from the repeat protein
  database
- tRNAScan - tRNAScan-SE tRNA predictions (coming soon)
- PASA - PASA gene predictions (coming soon)

  

### <span id="GAL_.28genome_annotation_library.29" class="mw-headline">GAL (genome annotation library)</span>

In addition to visualizing our annotations we also want some basic
statistics. We are interested in information such as number of genes,
average exon length, average intron length, and fraction of splice sites
confirmed by mRNA-seq data can give us insights into the quality of our
annotations. These data also give us a way to compare multiple
annotations of the same genome. The genome analysis library
(<a href="http://www.sequenceontology.org/software/GAL.html"
class="external text" rel="nofollow">GAL</a>) is an object oriented perl
library designed to simplify writing code to analyze data in gff3
format. Lets look at a script that takes a MAKER generated gff3 file,
and using GAL, returns some basic statistics from our annotation.

``` enter
nano ~/maker_course/GAL_scripts/Simple_GAL_script.pl
```

  

``` enter
#!/usr/bin/perl  

# Use the module in GAL that lets you make the annotation object
use GAL::Annotation;

#-----------------------------------------------------------------------------
#----------------------------------- MAIN ------------------------------------
#-----------------------------------------------------------------------------
my $usage = "\n\n\t
This is to get you started using GAL. This script will return
the total number and average lengths of specified features in
a gff3 file
Simple_GAL_script.pl GFF3.gff FASTA.fa
\n\n";

die($usage) unless $ARGV[1];
my ( $GFF3, $FASTA ) = @ARGV;

# Make an annotation object
my $ANNOTATION = GAL::Annotation->new( $GFF3, $FASTA );

# Make a Features object using the annotation object
my $FEATURES = $ANNOTATION->features;

get_length_and_count($FEATURES);
#-----------------------------------------------------------------------------
#---------------------------------- SUBS -------------------------------------
#-----------------------------------------------------------------------------
sub get_length_and_count{
    my $features_obj = shift;
    my $mRNA_count    =0;
    my $mRNA_length   =0;
    my $exon_count    =0;
    my $exon_length   =0;
    my $intron_count  =0;
    my $intron_length =0;

# Do a search of the feature object and get an iterator object for all of the mRNAs
    my $mRNAs = $features_obj->search( { type => 'mRNA' } );

# Get the number of mRNAs
    $mRNA_count = $mRNAs->count;

# Go through the mRNAs one at a time
    while ( my $mRNA  = $mRNAs->next ) {

# Get the length of the mRNA
        $mRNA_length += $mRNA->length;

# Get an iterator object for the exons
        my $exons     = $mRNA->exons;

# Get the number of exons in the mRNA
        $exon_count   += $exons->count;

# Do a search of the mRNA object and get an iterator object for all of the exons
        while (my $exon   = $exons->next){
            $exon_length += $exon->length;
        }

# Even though introns do not technically exist in the gff3 file, GAL will infer them
        my $introns    = $mRNA->introns;
        $intron_count += $introns->count;
        while (my $intron   = $introns->next){
            $intron_length += $intron->length;
        }
    }

# Print out what you found
 print "\n\nfeature type\tcount\taverage_length\n";
    print "mRNA\t$mRNA_count\t". int($mRNA_length/$mRNA_count)."\n";
    print "exon\t$exon_count\t". int($exon_length/$exon_count)."\n";
    print "intron\t$intron_count\t". int($intron_length/$intron_count)."\n";
}
```

  
Now lets see what happens when we run it on our data

``` enter
~/maker_course/GAL_scripts/Simple_GAL_script.pl  \
contig-dpp-500-500.gff                                          \
~/applications/maker/data/dpp_contig.fasta
```

``` enter
INFO : fasta_database_loading_indexing : Loading (and possibly indexing) /home/ubuntu/applications/maker/data/dpp_contig.fasta
WARN : resetting_attribute_values : GAL::Base is about to reset the value of fasta on behalf of a GAL::Annotation object.  This may be a bad idea.
INFO : fasta_database_loading_indexing : Loading (and possibly indexing) /home/ubuntu/applications/maker/data/dpp_contig.fasta
INFO : loading_database : contig-dpp-500-500.gff
INFO : finished_loading_database : contig-dpp-500-500.gff
INFO : indexing_database : contig-dpp-500-500.sqlite
INFO : indexing_feature_id : contig-dpp-500-500.sqlite
INFO : indexing_locus : contig-dpp-500-500.sqlite
INFO : indexing_feature_type : contig-dpp-500-500.sqlite
INFO : indexing_feature_attributes : contig-dpp-500-500.sqlite
INFO : indexing_relationships : contig-dpp-500-500.sqlite
INFO : analyzing_database : contig-dpp-500-500.sqlite
INFO : finished_indexing_database : contig-dpp-500-500.sqlite


feature type    count   average_length
mRNA    3   3777
exon    9   1259
intron  6   2117
```

In addition to our expected output GAL did a couple of other things that
you should be aware of. Namely, GAL created an sqlite database for us
out of the gff3 file, and indexed the fasta file. We can see them here.

``` enter
ls -1

contig-dpp-500-500.gff
contig-dpp-500-500.maker.proteins.fasta
contig-dpp-500-500.maker.transcripts.fasta
contig-dpp-500-500.sqlite  <- This is the database
run.log
```

and here

``` enter
ls -1 ~/applications/maker/data/dpp* 

/home/ubuntu/applications/maker/data/dpp_contig.fasta
/home/ubuntu/applications/maker/data/dpp_contig.fasta.index <- This is the fasta index
/home/ubuntu/applications/maker/data/dpp_est.fasta
/home/ubuntu/applications/maker/data/dpp_protein.fasta
```

Saving these files allows GAL scripts to run much faster in subsequent
runs. That being said, the GAL library was written under the assumption
that user time is more valuable than computation time. The intuitive
object oriented nature of GAL can dramatically decrease development
time, but there is a cost in run time. If you are iterating over
thousands of genes and descending the sequence ontology to capture
exons, infer introns, and translate CDSs into proteins; you are going to
want to write the script, start it running, and go to lunch.

# <span id="Advanced_MAKER_Configuration.2C_Re-annotation_Options.2C_and_Improving_Annotation_Quality" class="mw-headline">Advanced MAKER Configuration, Re-annotation Options, and Improving Annotation Quality</span>

The remainder of this page addresses issues that can be encountered
during the annotation process. I then describe how MAKER can be used to
resolve each issue.

## <span id="Configuration_Files_in_Detail" class="mw-headline">Configuration Files in Detail</span>

Let's take a closer look at the configuration options in the
`maker_opt.ctl` file.

``` enter
 cd /home/ubuntu/maker_course/example1_dmel
 nano maker_opts.ctl
```

### <span id="Genome_Options_.28Required.29" class="mw-headline">Genome Options (Required)</span>

    genome=dpp_contig.fasta #genome sequence (fasta file or fasta embeded in GFF3 file)
    organism_type=eukaryotic #eukaryotic or prokaryotic. Default is eukaryotic

### <span id="Re-annotation_Using_MAKER_Derived_GFF3" class="mw-headline">Re-annotation Using MAKER Derived GFF3</span>

    maker_gff= #MAKER derived GFF3 file
    est_pass=0 #use ESTs in maker_gff: 1 = yes, 0 = no
    altest_pass=0 #use alternate organism ESTs in maker_gff: 1 = yes, 0 = no
    protein_pass=0 #use protein alignments in maker_gff: 1 = yes, 0 = no
    rm_pass=0 #use repeats in maker_gff: 1 = yes, 0 = no
    model_pass=0 #use gene models in maker_gff: 1 = yes, 0 = no
    pred_pass=0 #use ab-initio predictions in maker_gff: 1 = yes, 0 = no
    other_pass=0 #passthrough anyything else in maker_gff: 1 = yes, 0 = no

### <span id="RNA_.28EST.29_Evidence" class="mw-headline">RNA (EST) Evidence</span>

    est=dpp_transcripts.fasta #set of ESTs or assembled mRNA-seq in fasta format
    altest= #EST/cDNA sequence file in fasta format from an alternate organism
    est_gff= #aligned ESTs or mRNA-seq from an external GFF3 file
    altest_gff= #aligned ESTs from a closly relate species in GFF3 format

### <span id="Protein_Homology_Evidence" class="mw-headline">Protein Homology Evidence</span>

    protein=dpp_proteins.fasta #protein sequence file in fasta format (i.e. from mutiple oransisms)
    protein_gff= #aligned protein homology evidence from an external GFF3 file

### <span id="Repeat_Masking_2" class="mw-headline">Repeat Masking</span>

    model_org=all #select a model organism for RepBase masking in RepeatMasker
    rmlib= #provide an organism specific repeat library in fasta format for RepeatMasker
    repeat_protein=/usr/local/maker/data/te_proteins.fasta #provide
    # [cont'd]  a fasta file of transposable element proteins for RepeatRunner
    rm_gff= #pre-identified repeat elements from an external GFF3 file
    prok_rm=0 #forces MAKER to repeatmask prokaryotes
    # [cont'd]  (no reason to change this), 1 = yes, 0 = no
    softmask=1 #use soft-masking rather than hard-masking in BLAST
    # [cont'd]  (i.e. seg and dust filtering)

### <span id="Gene_Prediction" class="mw-headline">Gene Prediction</span>

    snaphmm= #SNAP HMM file
    gmhmm= #GeneMark HMM file
    augustus_species= #Augustus gene prediction species model
    fgenesh_par_file= #FGENESH parameter file
    pred_gff= #ab-initio predictions from an external GFF3 file
    model_gff= #annotated gene models from an external GFF3 file (annotation pass-through)
    est2genome=1 #infer gene predictions directly from ESTs, 1 = yes, 0 = no
    protein2genome=0 #infer predictions from protein homology, 1 = yes, 0 = no
    trna=0 #find tRNAs with tRNAscan, 1 = yes, 0 = no
    snoscan_rrna= #rRNA file to have Snoscan find snoRNAs
    unmask=0 #also run ab-initio prediction programs on unmasked sequence, 1 = yes, 0 = no

### <span id="Other_Annotation_Feature_Types" class="mw-headline">Other Annotation Feature Types</span>

    other_gff= #extra features to pass-through to final MAKER generated GFF3 file

### <span id="External_Application_Behavior_Options" class="mw-headline">External Application Behavior Options</span>

    alt_peptide=C #amino acid used to replace non-standard amino acids in BLAST databases
    cpus=1 #max number of cpus to use in BLAST and RepeatMasker (not for MPI, leave 1 when using MPI)

### <span id="MAKER_Behavior_Options" class="mw-headline">MAKER Behavior Options</span>

    max_dna_len=100000 #length for dividing up contigs into chunks (increases/decreases memory usage)
    min_contig=1 #skip genome contigs below this length (under 10kb are often useless)

    pred_flank=200 #flank for extending evidence clusters sent to gene predictors
    pred_stats=0 #report AED and QI statistics for all predictions as well as models
    AED_threshold=1 #Maximum Annotation Edit Distance allowed (bound by 0 and 1)
    min_protein=0 #require at least this many amino acids in predicted proteins
    alt_splice=0 #Take extra steps to try and find alternative splicing, 1 = yes, 0 = no
    always_complete=0 #extra steps to force start and stop codons, 1 = yes, 0 = no
    map_forward=0 #map names and attributes forward from old GFF3 genes, 1 = yes, 0 = no
    keep_preds=0 #Concordance threshold to add unsupported gene prediction (bound by 0 and 1)

    split_hit=10000 #length for the splitting of hits (expected max intron size for evidence alignments)
    single_exon=0 #consider single exon EST evidence when generating annotations, 1 = yes, 0 = no
    single_length=250 #min length required for single exon ESTs if 'single_exon is enabled'
    correct_est_fusion=0 #limits use of ESTs in annotation to avoid fusion genes

    tries=2 #number of times to try a contig if there is a failure for some reason
    clean_try=0 #remove all data from previous run before retrying, 1 = yes, 0 = no
    clean_up=0 #removes theVoid directory with individual analysis files, 1 = yes, 0 = no
    TMP= #specify a directory other than the system default temporary directory for temporary files

## <span id="Training_ab_initio_Gene_Predictors" class="mw-headline">Training *ab initio* Gene Predictors</span>

**Using the `finished.maker.output` didn't work in class because of a
soft link that made the blast indexes unusable. I executed the command
lines for the rest of the tutorial on the class machine. The image named
GMOD 2014 Malaysia end of day 1 has all of the MAKER output on it.**

If you are involved in a genome project for an emerging model organism,
you should already have an EST database, or more likely now mRANA-Seq
data, which would have been generated as part of the original sequencing
project. A protein database can be collected from closely related
organism genome databases or by using the UniProt/SwissProt protein
database or the NCBI NR protein database. However a trained *ab initio*
gene predictor is a much more difficult thing to generate. Gene
predictors require existing gene models on which to base prediction
parameters. However, with emerging model organisms you are not likely to
have any pre-existing gene models. So how then are you supposed to train
your gene prediction programs?

  
MAKER gives the user the option to produce gene annotations directly
from the EST evidence. You can then use these imperfect gene models to
train gene predictor program. Once you have re-run MAKER with the newly
trained gene predictor, you can use the second set of gene annotations
to train the gene predictors yet again. This boot-strap process allows
you to iteratively improve the performance of *ab initio* gene
predictors.

  
I've created an example file set so you can learn to train the gene
predictor SNAP using this procedure.

  
First let's move to the example directory.

``` enter
 cd /home/ubuntu/maker_course/example2_pyu
 ls -1
```

This directory looks just like the one from example1

    finished.maker.output
    opts.txt

We need to build maker configuration files and populate the appropriate
values.

``` enter
 maker -CTL

 cp opts.txt maker_opts.ctl
or
 cp /path/to/maker/data/pyu* .
and edit
 nano maker_opts.ctl
 genome=pyu_contig.fasta
 est=pyu_est.fasta
 protein=pyu_protein.fasta
 est2genome=1
```

  
MAKER is now configured to generate annotations from the EST data, so
start the program (this will take a minute or 20 to run).

``` enter
 maker
```

Once finished load the file
`pyu_contig.maker.output/pyu-contig_datastore/09/14/scf1117875582023/scf1117875582023.gff`
into [Apollo](../Apollo.1 "Apollo"). You will see that there are far
more regions with evidence alignments than there are gene annotations.
This is because there are so few spliced ESTs that are capable of
generating gene models.

  
Now exit Apollo. We now need to convert the GFF3 gene models to ZFF
format. This is the format SNAP requires for training. To do this wee
need to collect all GFF3 files into a single directory.

``` enter
 mkdir snap
 cp pyu-contig.maker.output/pyu-contig_datastore/09/14/scf1117875582023/scf1117875582023.gff snap/
 cd snap
 maker2zff scf1117875582023.gff
 ls -1
```

There should now be two new files. The first is the ZFF format file and
the second is a FASTA file the coordinates can be referenced against.
These will be used to train SNAP.

    genome.ann
    genome.dna

The basic steps for training SNAP are first to filter the input gene
models, then capture genomic sequence immediately surrounding each model
locus, and finally uses those captured segments to produce the HMM. You
can explore the internal SNAP documentation for more details if you
wish.

``` enter
 fathom -categorize 1000 genome.ann genome.dna
 fathom -export 1000 -plus uni.ann uni.dna
 forge export.ann export.dna
 hmm-assembler.pl pyu . > pyu.hmm
 cd ..
```

  
The final training parameters file is `pyu.hmm`. We do not expect SNAP
to perform that well with this training file because it is based on
incomplete gene models; however, this file is a good starting point for
further training.

  
We need to run MAKER again with the new HMM file we just built for SNAP.

``` enter
 nano maker_opts.ctl
```

And set:

``` enter
 snaphmm=snap/pyu.hmm
 est2genome=0
```

And run

``` enter
 maker
```

Now let's look at the output in Apollo. When you examine the annotations
you should notice that final MAKER gene models displayed in light blue,
are more abundant now and are in relatively good agreement with the
evidence alignments. However the SNAP *ab initio* gene predictions in
the evidence tier do not yet match the evidence that well. This is
because SNAP predictions are based solely on the mathematic descriptions
in the HMM; whereas, MAKER models also use evidence alignments to help
further inform gene models. This demonstrates why you get better
performance by running *ab initio* gene predictors like SNAP inside of
MAKER rather than producing gene models by themselves for emerging model
organism genomes. The fact that the MAKER models are in better agreement
with the evidence than the current SNAP models also means I can use the
MAKER models to retrain SNAP in a bootstrap fashion, thereby improving
SNAP's performance and consequentially MAKER's performance.

Alternatively we can run our GAL script to get a quick look.

``` enter
~/maker_course/GAL_scripts/Simple_GAL_script.pl snap/scf1117875582023.gff ~/applications/maker/data/pyu-contig.fasta

feature type    count   average_length
mRNA    164 444
exon    479 152
intron  315 90

 ~/maker_course/GAL_scripts/Simple_GAL_script.pl \
pyu-contig.maker.output/pyu-contig_datastore/09/14/scf1117875582023/scf1117875582023.gff \
~/applications/maker/data/pyu-contig.fasta

feature type    count   average_length
mRNA    367 1622
exon    1574    378
intron  1207    110
```

Close Apollo, retrain SNAP, and run MAKER again.

``` enter
 mkdir snap2
 cp pyu-contig.maker.output/pyu-contig_datastore/09/14/scf1117875582023/scf1117875582023.gff snap2/
 cd snap2
 maker2zff scf1117875582023.gff
 fathom -categorize 1000 genome.ann genome.dna
 fathom -export 1000 -plus uni.ann uni.dna
 forge export.ann export.dna
 hmm-assembler.pl pyu . > pyu2.hmm
 cd ..
 nano maker_opts.ctl
```

Change configuration file.

``` enter
 snaphmm=snap2/pyu2.hmm
```

Run maker.

``` enter
 maker
```

Let's examine the [GFF3](../GFF3 "GFF3") file one last time in
[Apollo](../Apollo.1 "Apollo"). As you can see there, there is now a
marked degree of improvement in both the MAKER and SNAP gene models, and
both models are in more agreement with each other.

Or use the GAL script again

``` enter
 ~/maker_course/GAL_scripts/Simple_GAL_script.pl \
pyu-contig.maker.output/pyu-contig_datastore/09/14/scf1117875582023/scf1117875582023.gff \
~/applications/maker/data/pyu-contig.fasta
 
feature type    count   average_length
mRNA    396 1630
exon    1647    391
intron  1251    108
```

## <span id="Improving_Annotation_Quality_with_MAKER.27s_AED_score" class="mw-headline">Improving Annotation Quality with MAKER's AED score</span>


<a href="../File:MAKER2_Figure2.jpg" class="image"><img
src="https://raw.githubusercontent.com/GMOD/gmod.github.io/main/mediawiki/images/thumb/e/e3/MAKER2_Figure2.jpg/560px-MAKER2_Figure2.jpg"
class="thumbimage"
srcset="https://raw.githubusercontent.com/GMOD/gmod.github.io/main/mediawiki/images/thumb/e/e3/MAKER2_Figure2.jpg/840px-MAKER2_Figure2.jpg 1.5x, https://raw.githubusercontent.com/GMOD/gmod.github.io/main/mediawiki/images/thumb/e/e3/MAKER2_Figure2.jpg/1120px-MAKER2_Figure2.jpg 2x"
width="560" height="484" /></a>


<a href="../File:MAKER2_Figure2.jpg" class="internal"
title="Enlarge"><img
src="../../mediawiki/skins/common/images/magnify-clip.png" width="15"
height="11" /></a>



Re-annotation with MAKER




  


<a href="../File:MAKER-p_fig2.png" class="image"><img
src="https://raw.githubusercontent.com/GMOD/gmod.github.io/main/mediawiki/images/thumb/0/01/MAKER-p_fig2.png/560px-MAKER-p_fig2.png"
class="thumbimage"
srcset="https://raw.githubusercontent.com/GMOD/gmod.github.io/main/mediawiki/images/0/01/MAKER-p_fig2.png 1.5x, https://raw.githubusercontent.com/GMOD/gmod.github.io/main/mediawiki/images/0/01/MAKER-p_fig2.png 2x"
width="560" height="463" /></a>


<a href="../File:MAKER-p_fig2.png" class="internal" title="Enlarge"><img
src="../../mediawiki/skins/common/images/magnify-clip.png" width="15"
height="11" /></a>



Re-annotation and update of Arabidopsis with MAKER




## <span id="Merge.2FResolve_Legacy_Annotations" class="mw-headline">Merge/Resolve Legacy Annotations</span>

Legacy annotations

- Many are no longer maintained by original creators
- In some cases more than one group has annotated the same genome, using
  very different procedures, even different assemblies
- Many investigators have their own genome-scale data and would like a
  private set of annotations that reflect these data
- There will be a need to revise, merge, evaluate, and verify legacy
  annotation sets in light of RNA-seq and other data

  
<a href="../File:Legacy.png" class="image"><img
src="https://raw.githubusercontent.com/GMOD/gmod.github.io/main/mediawiki/images/thumb/d/d1/Legacy.png/560px-Legacy.png"
srcset="https://raw.githubusercontent.com/GMOD/gmod.github.io/main/mediawiki/images/d/d1/Legacy.png 1.5x, https://raw.githubusercontent.com/GMOD/gmod.github.io/main/mediawiki/images/d/d1/Legacy.png 2x"
width="560" height="274" alt="Legacy.png" /></a>

  
MAKER will:

- Identify legacy annotation most consistent with new data
- Automatically revise it in light of new data
- If no existing annotation, create new one

## <span id="MPI_Support" class="mw-headline">MPI Support</span>

MAKER optionally supports Message Passing Interface (MPI), a parallel
computation communication protocol primarily used on computer clusters.
This allows MAKER jobs to be broken up across multiple nodes/processors
for increased performance and scalability.

  
<a href="../File:Mpi_maker.png" class="image"><img
src="https://raw.githubusercontent.com/GMOD/gmod.github.io/main/mediawiki/images/thumb/6/60/Mpi_maker.png/560px-Mpi_maker.png"
srcset="https://raw.githubusercontent.com/GMOD/gmod.github.io/main/mediawiki/images/6/60/Mpi_maker.png 1.5x, https://raw.githubusercontent.com/GMOD/gmod.github.io/main/mediawiki/images/6/60/Mpi_maker.png 2x"
width="560" height="317" alt="Mpi maker.png" /></a>

  
To use this feature, you must have MPICH2 installed with the the
`--enable-sharedlibs` flag set during installation (See MPICH2
Installer's Guide). Or openmpi and allow shared libraries by adding a
line like this to your profile
`--export LD_PRELOAD=/home/ubuntu/applications/maker/exe/openmpi/lib/libmpi.so:$LD_PRELOAD`
I have installed this for you. So let's set up MPI_MAKER and run the
example file that comes with MAKER.

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

## <span id="MAKER_Accessory_Scripts" class="mw-headline">MAKER Accessory Scripts</span>

MAKER comes with a number of accessory scripts that assist in
manipulations of the MAKER input and output files.

Scripts:

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
  passthrough. By default strandless features which correspond to single
  exon cufflinks models will be ignored. This is because these features
  can correspond to repetative elements and pseudogenes. Output is to
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

- *gff3_merge* - Collects all of MAKER's GFF3 file output for each
  contig and merges them to make a single genome level GFF3

<!-- -->

     gff3_merge -d <datastore_index> -o <outfile>

- *gff3_preds2models* - Deprecated pass the predictions to MAKER in the
  `maker_opts.ctl` in gff3 format here `pred_gff`= and set
  `keep_preds=1`

<!-- -->

- *maker2eval_gtf* - This script converts MAKER GFF3 files into GTF
  formated files for the program EVAL (an annotation
  sensitivity/specificity evaluating program). The script will only
  extract features explicitly declared in the GFF3 file, and will skip
  implicit features (i.e. UTR, start codons, and stop codons). To
  extract implicit features to the GTF file, you will first need to
  expicitly declare them in the GFF3 file. This can be done by calling
  the script add_utr_to_gff3 to add formal declaration lines to the GFF3
  file.

<!-- -->

     maker2eval_gtf <maker_gff3_file>

- *iprscan2gff3* - Takes InerproScan (iprscan) output and generates GFF3
  features representing domains. Interesting tier for GBrowse.

<!-- -->

     iprscan2gff3 <iprscan_file> <gff3_fasta>

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

- *maker2zff* - Pulls out MAKER gene models from the MAKER GFF3 output
  and convert them into ZFF format for SNAP training.

<!-- -->

     maker2zff <gff3_file>

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

- *tophat2gff3* - This script converts the juctions file producted by
  TopHat into GFF3 format for use with MAKER.

<!-- -->

     tophat2gff3 <junctions.bed>




[Categories](../Special%3ACategories "Special%3ACategories"):

- [Tutorials](../Category%3ATutorials "Category%3ATutorials")
- [GMOD Schools](../Category%3AGMOD_Schools "Category%3AGMOD Schools")
- [MAKER](../Category%3AMAKER "Category%3AMAKER")



<span class="smwfactboxhead">Facts about
"<span class="swmfactboxheadbrowse">[GMOD Malaysia 2014/MAKER
Tutorial](../Special%3ABrowse/GMOD-20Malaysia-202014-2FMAKER-20Tutorial "Special%3ABrowse/GMOD-20Malaysia-202014-2FMAKER-20Tutorial")</span>"</span><span class="smwrdflink"><span class="rdflink">[RDF
feed](http://gmod.org/wiki/Special:ExportRDF/GMOD_Malaysia_2014/MAKER_Tutorial "Special:ExportRDF/GMOD Malaysia 2014/MAKER Tutorial")</span></span>

|  |  |
|----|----|
| [Has topic](../Property%3AHas_topic "Property:Has topic") | [MAKER](../MAKER.1 "MAKER") <span class="smwsearch">[+](../Special%3ASearchByProperty/Has-20topic/MAKER "Special%3ASearchByProperty/Has-20topic/MAKER")</span> |






## Navigation menu






### 



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
- <span id="n-FAQs">[FAQs](../Category%3AFAQ)</span>
- <span id="n-HOWTOs">[HOWTOs](../Category%3AHOWTO)</span>
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

- <span id="t-smwbrowselink"><a href="../Special%3ABrowse/GMOD_Malaysia_2014-2FMAKER_Tutorial"
  rel="smw-browse">Browse properties</a></span>



- <span id="footer-info-lastmod">Last updated at 00:56 on 27 February
  2014.</span>
<!-- - <span id="footer-info-viewcount">24,262 page views.</span> -->
- <span id="footer-info-copyright">Content is available under
  <a href="http://www.gnu.org/licenses/fdl-1.3.html" class="external"
  rel="nofollow">a GNU Free Documentation License</a> unless otherwise
  noted.</span>

<!-- -->

- <span id="footer-places-about">[About
  GMOD](../GMOD%3AAbout "GMOD%3AAbout")</span>

<!-- -->




