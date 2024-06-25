<div id="mw-page-base" class="noprint">

</div>

<div id="mw-head-base" class="noprint">

</div>

<div id="content" class="mw-body" role="main">

<span id="top"></span>

<div id="mw-js-message" style="display:none;">

</div>



# <span dir="auto">GSOC Project Ideas 2019</span>

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

**Got an idea for [GSOC 2019](GSoC "GSoC")?**

Then please post it. You can either

1.  Add it here, by directly editing this page. Just copy, paste and
    update the [template](#Template) below. This requires that you have
    or create a GMOD.org login.
2.  Describe it in the
    **<a href="http://bit.ly/gsoc-2019-ogi-propose" class="external text"
    rel="nofollow">online form</a>** and *we'll* post it here.

  
Projects can use a broad set of skills, technologies, and domains, such
as GUIs, database integration and algorithms.

Students are also encouraged to propose their own ideas related to our
projects. If you have strong computer skills and have an interest in
biology or bioinformatics, you should definitely apply! Do not hesitate
to propose your own project idea: some of the best applications we see
are by students that go this route. As long as it is relevant to one of
our projects, we will give it serious consideration. Creativity and
self-motivation are great traits for open source programmers.

  

<div id="toc" class="toc">

<div id="toctitle">

## Contents

</div>

- [<span class="tocnumber">1</span> <span class="toctext">Proposed
  project ideas for 2019</span>](#Proposed_project_ideas_for_2019)
  - [<span class="tocnumber">1.1</span>
    <span class="toctext">Template</span>](#Template)
  - [<span class="tocnumber">1.2</span> <span class="toctext">Automated
    Bioinformatics Help in
    Galaxy</span>](#Automated_Bioinformatics_Help_in_Galaxy)
  - [<span class="tocnumber">1.3</span> <span class="toctext">Use Galaxy
    to run Reactome analysis and processes on genomic data
    (Reactome)</span>](#Use_Galaxy_to_run_Reactome_analysis_and_processes_on_genomic_data_.28Reactome.29)
  - [<span class="tocnumber">1.4</span> <span class="toctext">Create a
    software package for use in R to query Reactome’s Graph Database in
    Neo4J</span>](#Create_a_software_package_for_use_in_R_to_query_Reactome.E2.80.99s_Graph_Database_in_Neo4J)
  - [<span class="tocnumber">1.5</span> <span class="toctext">Revision
    tracking curation and tools usage
    (Reactome)</span>](#Revision_tracking_curation_and_tools_usage_.28Reactome.29)

</div>

# <span id="Proposed_project_ideas_for_2019" class="mw-headline">Proposed project ideas for 2019</span>

*Be the first to add a project idea.*

## <span id="Template" class="mw-headline">Template</span>

- **Project Idea Name (Project Name/Lab Name)**
  - *Brief explanation:* Brief description of the idea, including any
    relevant links, etc.
  - *Expected results:* describe the outcome of the project idea.
  - *Project Home Page URL:* if there is one.
  - *Project paper reference and URL:* Is there a paper about the
    project this effort will be a part of?
  - *Knowledge prerequisites:* programming language(s) to be used, plus
    any other particular computer science skills needed.
  - *Skill level:* Basic, Medium or Advanced.
  - *Mentors:* name + contact details of the lead mentor, name + contact
    details of 1 or 2 backup mentors.

  

## <span id="Automated_Bioinformatics_Help_in_Galaxy" class="mw-headline">Automated Bioinformatics Help in Galaxy</span>

- *Brief explanation:*
  - <a href="https://galaxyproject.org/" class="external text"
    rel="nofollow">Galaxy</a> users often encounter errors when trying
    to run a bioinformatics analysis. These errors may be user or data
    errors (e.g. misformatted dataset) or errors due to underlying
    computing hardware (e.g. disk is full). Helping users and Galaxy
    support staff determine the kind of error they encountered would be
    useful because a user can likely address the first type of error,
    while the second type requires expert invention.
  - This project will improve Galaxy’s error system by using heuristics
    or machine learning to identify common types of user/data errors and
    make suggestions on likely causes of the error and how they might be
    fixed. This will benefit Galaxy users with clear and actionable
    error messages and support staff by reducing the amount of reported,
    non-system errors.
- *Expected results:*
  - Create a tool for analyzing, identifying, and classifying common
    error messages from the extensive history of error messages from the
    main public Galaxy server
    (<a href="https://usegalaxy.org" class="external free"
    rel="nofollow">https://usegalaxy.org</a>).
    - The diversity and size of this data suggests a machine learning
      approach, but the specific approach taken would be decided by the
      student and mentor.
  - Extend Galaxy’s tool definition syntax to support defining common
    error classes and suggested resolutions.
  - Update Galaxy’s user interface to display potential resolutions and
    suggested actions based on the types of errors found in an analysis.
- *Project Home Page URL:*
  <a href="https://galaxyproject.org/" class="external text"
  rel="nofollow">galaxyproject.org</a>
- *Project paper reference and URL:*
  <a href="https://doi.org/10.1093/nar/gky379" class="external text"
  rel="nofollow">The Galaxy platform for accessible, reproducible and
  collaborative biomedical analyses: 2018 update</a>, Enis Afgan et al.,
  *Nucleic Acids Research*, Volume 46, Issue W1, 2 July 2018, Pages
  W537–W544,
  <a href="https://doi.org/10.1093/nar/gky379" class="external free"
  rel="nofollow">https://doi.org/10.1093/nar/gky379</a>
- *Knowledge prerequisites:* programming language(s) to be used, plus
  any other particular computer science skills needed.
- *Skill level:* Medium.
- *Mentors:*

## <span id="Use_Galaxy_to_run_Reactome_analysis_and_processes_on_genomic_data_.28Reactome.29" class="mw-headline">Use Galaxy to run Reactome analysis and processes on genomic data (Reactome)</span>

- - *Brief explanation:* Reactome is a free, open-source, curated and
    peer-reviewed pathway database. Our goal is to provide intuitive
    bioinformatics tools for the visualization, interpretation and
    analysis of pathway knowledge to support basic research, genome
    analysis, modelling, systems biology and education. Galaxy is an
    open, web-based platform for data intensive biomedical research,
    which allows users to perform, reproduce, and share complete
    analyses.
  - *Expected results:* There are two potential sub-projects. 1) Adding
    Reactome as a data resource in Galaxy, to enable Galaxy users to use
    Reactome reaction and pathway annotation data, and 2) Performing
    identifier mapping and over-representation analysis workflows from
    Reactome in Galaxy. Reactome
    <a href="https://github.com/reactome/" class="external text"
    rel="nofollow">Github</a>.
  - *Project Home Page URL:* if there is one.
  - *Project paper reference and URL:*
    <a href="https://reactome.org/" class="external text"
    rel="nofollow">reactome.org</a>,
    <a href="https://galaxyproject.org/" class="external text"
    rel="nofollow">galaxyproject.org</a>
  - *Knowledge prerequisites:* Galaxy, Java, web services.
  - *Skill level:* Medium.
  - *Mentors:* Robin Haw (robin.haw\[AT\]oicr.on.ca) and Joel Weiser
    (joel.weiser\[AT\]oicr.on.ca).

## <span id="Create_a_software_package_for_use_in_R_to_query_Reactome.E2.80.99s_Graph_Database_in_Neo4J" class="mw-headline">Create a software package for use in R to query Reactome’s Graph Database in Neo4J</span>

- **Project Idea Name (Project Name/Lab Name)**
  - *Brief explanation:* The R programming language has an
    <a href="https://neo4j.com/developer/r/" class="external text"
    rel="nofollow">existing package</a> for connection to Neo4J
    databases. This project’s purpose would be to use this package as a
    base to create a connection for querying Reactome’s Neo4J
    <a href="https://www.reactome.org/dev/graph-database"
    class="external text" rel="nofollow">graph database</a> and return
    data structures for manipulating Reactome pathway and reaction
    data..
  - *Expected results:*Allow R end-users to be able to retrieve Reactome
    pathway and reaction data for analysis by both pre-written functions
    and custom queries. Examples of categories for such functions may
    include pathways and reactions which contain certain genes,
    proteins, Gene Ontology terms or cross-references to other external
    databases as well as other useful queries for Reactome end-users.
  - *Project Home Page URL:*
    <a href="https://reactome.org/" class="external text"
    rel="nofollow">reactome.org</a>.
  - *Knowledge prerequisites:* R Programming Language, Neo4J.
  - *Skill level:* Medium.
  - *Mentors:* Joel Weiser (joel.weiser\[AT\]oicr.on.ca) and Antonio
    Fabregat (fabregat\[AT\]ebi.ac.uk).

## <span id="Revision_tracking_curation_and_tools_usage_.28Reactome.29" class="mw-headline">Revision tracking curation and tools usage (Reactome)</span>

- - *Brief explanation:* Reactome is a free, open-source, curated and
    peer-reviewed pathway database. Our goal is to provide intuitive
    bioinformatics tools for the visualization, interpretation and
    analysis of pathway knowledge to support basic research, genome
    analysis, modelling, systems biology and education. Our current
    curation and tool access statistics are static and generated on an
    ad-hoc basis.
  - *Expected results:* Developing scripts to proocess data and a web
    interface to support interactive curation and tool access statistics
    (maps, tables, charts, graphs).
  - *Project Home Page URL:*
    <a href="https://reactome.org/" class="external text"
    rel="nofollow">reactome.org</a>.
  - *Knowledge prerequisites:* Java, Neo4J, Java, web services.
  - *Skill level:* Easy.
  - *Mentors:* Robin Haw (robin.haw\[AT\]oicr.on.ca).

</div>

<div class="printfooter">

Retrieved from
"<http://gmod.org/mediawiki/index.php?title=GSOC_Project_Ideas_2019&oldid=27773>"

</div>

<div id="catlinks" class="catlinks">

<div id="mw-normal-catlinks" class="mw-normal-catlinks">

[Category](Special:Categories "Special:Categories"):

- [GSoC](Category:GSoC "Category:GSoC")

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

- <span id="ca-nstab-main"><a href="GSOC_Project_Ideas_2019" accesskey="c"
  title="View the content page [c]">Page</a></span>
- <span id="ca-talk"><a
  href="http://gmod.org/mediawiki/index.php?title=Talk:GSOC_Project_Ideas_2019&amp;action=edit&amp;redlink=1"
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

- <span id="t-whatlinkshere"><a href="Special:WhatLinksHere/GSOC_Project_Ideas_2019" accesskey="j"
  title="A list of all wiki pages that link here [j]">What links here</a></span>
- <span id="t-recentchangeslinked"><a href="Special:RecentChangesLinked/GSOC_Project_Ideas_2019"
  accesskey="k"
  title="Recent changes in pages linked from this page [k]">Related
  changes</a></span>
- <span id="t-specialpages"><a href="Special:SpecialPages" accesskey="q"
  title="A list of all special pages [q]">Special pages</a></span>
- <span id="t-print"><a
  href="http://gmod.org/mediawiki/index.php?title=GSOC_Project_Ideas_2019&amp;printable=yes"
  rel="alternate" accesskey="p"
  title="Printable version of this page [p]">Printable version</a></span>
- <span id="t-permalink">[Permanent
  link](http://gmod.org/mediawiki/index.php?title=GSOC_Project_Ideas_2019&oldid=27773 "Permanent link to this revision of the page")</span>
- <span id="t-info">[Page
  information](http://gmod.org/mediawiki/index.php?title=GSOC_Project_Ideas_2019&action=info)</span>
- <span id="t-smwbrowselink"><a href="Special:Browse/GSOC_Project_Ideas_2019" rel="smw-browse">Browse
  properties</a></span>
- <span id="t-pdf">[Print as
  PDF](http://gmod.org/mediawiki/index.php?title=Special:PdfPrint&page=GSOC_Project_Ideas_2019)</span>

</div>

</div>

</div>

</div>

<div id="footer" role="contentinfo">

- <span id="footer-info-lastmod">Last updated at 15:52 on 19 February
  2019.</span>
- <span id="footer-info-viewcount">41,274 page views.</span>
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
