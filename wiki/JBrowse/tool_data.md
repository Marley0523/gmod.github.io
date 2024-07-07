



<span id="top"></span>


# <span dir="auto">JBrowse/tool data</span>









This page stores the data that populates the
[JBrowse](../JBrowse.1 "JBrowse") wiki page.

\| name = JBrowse \| full_name = \| contact_email =
rbuels@gmail.com \| status = mature \| dev = active \| support = active
\| type = Genome visualization \| platform = web \| logo =
JBrowseLogo.png \| input = [GFF3](../GFF3 "GFF3"), BED, FASTA, Wiggle,
BigWig, BAM \| output = \| licence =
<a href="http://www.gnu.org/licenses/lgpl.txt" class="external text"
rel="nofollow">LGPL</a> and
<a href="http://www.perlfoundation.org/artistic_license_2_0"
class="external text" rel="nofollow">Artistic license</a> \| open source
= yes \| language = Javascript, Perl \| release date = 2008 \| home =
<a href="http://jbrowse.org" class="external free"
rel="nofollow">http://jbrowse.org</a> \| demo_server = <a
href="http://jbrowse.org/code/JBrowse-1.5.0-full/index.html?loc=ctgA%3A5947..26686&amp;tracks=DNA%2CCDS%2CTranscript%2Cvolvox_microarray.wig%2Cvolvox_microarray.bw&amp;data=sample_data%2Fjson%2Fvolvox"
class="external text" rel="nofollow">Volvox example data</a> \|
wild_urls = \| about = JBrowse is a genome browser with a fully dynamic
HTML5 user interface, being developed as the successor to GBrowse. It is
very fast and scales well to large datasets. JBrowse does almost all of
its work directly in the user's web browser, with minimal requirements
for the server.

### <span id="Features" class="mw-headline">Features</span>

- Fast, smooth scrolling and zooming. Explore your genome with
  unparalleled speed.
- Scales easily to multi-gigabase genomes.
- Supports GFF3, BED, FASTA, Wiggle, BigWig, BAM, and more.
- Very light server resource requirements. Serve huge datasets from a
  single low-cost cloud instance.

\| screenshot =


<a href="../File:JBrowse_alignment_and_coverage.png" class="image"><img
src="https://raw.githubusercontent.com/GMOD/gmod.github.io/main/mediawiki/images/thumb/7/7e/JBrowse_alignment_and_coverage.png/600px-JBrowse_alignment_and_coverage.png"
srcset="https://raw.githubusercontent.com/GMOD/gmod.github.io/main/mediawiki/images/thumb/7/7e/JBrowse_alignment_and_coverage.png/900px-JBrowse_alignment_and_coverage.png 1.5x, https://raw.githubusercontent.com/GMOD/gmod.github.io/main/mediawiki/images/7/7e/JBrowse_alignment_and_coverage.png 2x"
width="600" height="373" alt="JBrowse alignment and coverage.png" /></a>


\| public_server = \| dl = \| dl_url =
<a href="http://jbrowse.org/install/" class="external free"
rel="nofollow">http://jbrowse.org/install/</a> \| dl_src = \| dl_src_url
= <a href="http://github.com/GMOD/jbrowse" class="external free"
rel="nofollow">http://github.com/GMOD/jbrowse</a> \|
getting_started_preamble = The
<a href="http://jbrowse.org/code/latest-release/docs/tutorial/"
class="external text" rel="nofollow">JBrowse Quick-Start Tutorial</a>
provides a basic step-by-step recipe for quickly getting up and running
with JBrowse. \| req = JBrowse requires libpng, Zlib, and GD development
libraries, plus make and a C compiler. On Ubuntu, you can install these
prerequisites using the command:

     sudo apt-get install libpng-dev libgd2-noxpm-dev build-essential

For tips on installing these baseline libraries, see [JBrowse
Troubleshooting](../JBrowse_Troubleshooting "JBrowse Troubleshooting").

\| install = The
<a href="http://jbrowse.org/code/latest-release/docs/tutorial/"
class="external text" rel="nofollow">JBrowse Quick-Start Tutorial</a>
provides a basic step-by-step recipe for quickly getting up and running
with JBrowse.

1\. <a href="http://jbrowse.org/install/" class="external text"
rel="nofollow">Download JBrowse</a> onto your web server.

2\. Unpack JBrowse into a directory that is served by your web browser.
On many systems, this defaults to `/var/www`.

       cd /var/www
       unzip JBrowse-*.zip

**Make sure you have permissions to write to the contents of the
`jbrowse/` directory you have just created.**

3\. Run the automated-setup script, `./setup.sh`, which will attempt to
install all of JBrowse's (modest) prerequisites for you in the
`jbrowse/` directory itself. Note that `setup.sh` does not need to be
run as root or with `sudo`. For help troubleshooting failures of
setup.sh, see [JBrowse
Troubleshooting](../JBrowse_Troubleshooting "JBrowse Troubleshooting").

4\. Visit JBrowse on your machine, substituting the
http://(your_machine/path_to_jbrowse)/index.html?data=sample_data/json/volvox.
If you can see the included Volvox example data, you are ready to
configure JBrowse to show your own data!

\| config = See the [JBrowse Configuration
Guide](../JBrowse_Configuration_Guide "JBrowse Configuration Guide") for
information on:

- [Formatting reference
  sequences](../JBrowse_Configuration_Guide#Reference_Sequences "JBrowse Configuration Guide")
  (e.g. from FASTA files, or a Chado database)
- [Feature
  Tracks](../JBrowse_Configuration_Guide#Feature_Tracks "JBrowse Configuration Guide")
  (e.g. from BED or GFF files, a Chado database, or the UCSC genome
  browser)
- [Image
  Tracks](../JBrowse_Configuration_Guide#Image_Tracks "JBrowse Configuration Guide")
  (e.g. from WIG files)
- [Wiggle/BigWig
  Tracks](../JBrowse_Configuration_Guide#Wiggle_Tracks "JBrowse Configuration Guide")
- [Name Search and
  Autocompletion](../JBrowse_Configuration_Guide#Name_Searching_and_Autocompletion "JBrowse Configuration Guide")
- [Removing
  tracks](../JBrowse_Configuration_Guide#Removing_Tracks "JBrowse Configuration Guide")
- [Compressing data stored on the
  server](../JBrowse_Configuration_Guide#Compressing_data_on_the_server "JBrowse Configuration Guide")
- [URL
  control](../JBrowse_Configuration_Guide#URL_Control "JBrowse Configuration Guide")
- [Faceted track
  selection](../JBrowse_Configuration_Guide#Faceted_Track_Selection "JBrowse Configuration Guide")
- [Anonymous usage
  statistics](../JBrowse_Configuration_Guide#Anonymous_Usage_Statistics "JBrowse Configuration Guide")

Additional topics:

- <a href="../JBrowseDev/Using_a_Database_With_JBrowse"
  class="mw-redirect"
  title="JBrowseDev/Using a Database With JBrowse">Using an Existing
  Database with JBrowse</a>

## <span id="Upgrading_JBrowse" class="mw-headline">Upgrading JBrowse</span>

To upgrade an existing JBrowse (1.3.0 or later) to the latest version,
simply move its data directory (and `jbrowse_conf.json` if you are using
it) into the directory of a newer JBrowse, and the new JBrowse will
display that data.

To upgrade a 1.2.x JBrowse, copy its data directory into the new JBrowse
directory, and point your browser at compat_121.html in the new JBrowse
directory, instead of index.html.

If you are upgrading from a version of JBrowse older than 1.2.0, a fresh
installation is required.

\| doc = \| papers = \| presentations =

- April 2013 - Bio-IT World, Robert Buels:
  <a href="https://raw.githubusercontent.com/GMOD/gmod.github.io/main/mediawiki/images/0/0c/JBrowse_bioit_world_apr2013.pdf"
  class="internal" title="JBrowse bioit world apr2013.pdf">PDF</a>
- August 2012 - presentation given as part of the [2012 GMOD Summer
  School](../2012_GMOD_Summer_School "2012 GMOD Summer School"):
  <a href="https://raw.githubusercontent.com/GMOD/gmod.github.io/main/mediawiki/images/f/fa/JBrowse_gmod_aug2012.pdf"
  class="internal" title="JBrowse gmod aug2012.pdf">PDF</a>
- April 2012 - GMOD 2012 Community Meeting, Robert Buels:
  <a href="https://raw.githubusercontent.com/GMOD/gmod.github.io/main/mediawiki/images/b/ba/RBuels_JBrowse_apr2012.pdf"
  class="internal" title="RBuels JBrowse apr2012.pdf">PDF</a>
- January 2012 - Plant and Animal Genome (PAG) XX:
  <a href="https://raw.githubusercontent.com/GMOD/gmod.github.io/main/mediawiki/images/e/ed/Rbuels_jbrowse_pag2012.pdf"
  class="internal" title="Rbuels jbrowse pag2012.pdf">PDF</a>
- April 2010 - UCSC genome browser group ("genecats") meeting:
  <a href="https://raw.githubusercontent.com/GMOD/gmod.github.io/main/mediawiki/images/6/67/JBrowse-UCSC-4-21-10.pdf"
  class="internal" title="JBrowse-UCSC-4-21-10.pdf">PDF</a>
- August 2009 - [GMOD Community
  Meeting](../August_2009_GMOD_Meeting "August 2009 GMOD Meeting"):
  [Talk
  summary](../August_2009_GMOD_Meeting#JBrowse "August 2009 GMOD Meeting")
  \| <a href="https://raw.githubusercontent.com/GMOD/gmod.github.io/main/mediawiki/images/5/59/Aug2009JBrowse.pdf"
  class="internal" title="Aug2009JBrowse.pdf">PDF</a>
- January 2009 - [GMOD Community
  Meeting](../January_2009_GMOD_Meeting "January 2009 GMOD Meeting"):
  [Talk
  summary](../January_2009_GMOD_Meeting#JBrowse "January 2009 GMOD Meeting")
  \| [PDF](../File:Jan2009JBrowse.pdf "File:Jan2009JBrowse.pdf")
- July 2008 - [GMOD Community
  Meeting](../July_2008_GMOD_Meeting "July 2008 GMOD Meeting"): [Talk
  summary](../July_2008_GMOD_Meeting#GBrowse_3.0 "July 2008 GMOD Meeting")
  \| [PDF](../File:GBrowse3GMOD2008.pdf "File:GBrowse3GMOD2008.pdf")

\| tutorials =

<a href="../JBrowse_Tutorial" class="mw-redirect"
title="JBrowse Tutorial">JBrowse Tutorial</a> covering installation and configuration  
part of the [2013 GMOD Summer
School](../2013_GMOD_Summer_School "2013 GMOD Summer School")

<a href="http://jbrowse.org/code/latest-release/docs/tutorial/"
class="external text" rel="nofollow">Getting Started with JBrowse
Tutorial</a>  
part of the JBrowse documentation

<a
href="https://raw.githubusercontent.com/GMOD/gmod.github.io/main/mediawiki/images/4/44/Exploring_structural_variation_in_the_tomato_clade_using_JBrowse.pdf"
class="internal"
title="Exploring structural variation in the tomato clade using JBrowse.pdf">Exploration
of structural variation in the tomato clade using JBrowse</a>  
Tutorial explaining how to browse structural variants from the 150+
tomato genome resequencing project
(<a href="http://www.tomatogenome.net" class="external free"
rel="nofollow">http://www.tomatogenome.net</a>) using JBrowse

\| mail = Please direct questions and inquiries regarding JBrowse to the
mailing lists below.

_Requests for help should be directed to
<a href="mailto:gmod-ajax@lists.sourceforge.net" class="external text"
rel="nofollow">gmod-ajax@lists.sourceforge.net</a>._

|                                                    |                                                                  |                                                                         |            |
| -------------------------------------------------- | ---------------------------------------------------------------- | ----------------------------------------------------------------------- | ---------- |
|                                                    | Mailing List Link                                                | Description                                                             | Archive(s) |
| [JBrowse](../JBrowse.1 "JBrowse")                  | <a href="https://lists.sourceforge.net/lists/listinfo/gmod-ajax" |
| class="external text" rel="nofollow">gmod-ajax</a> | [JBrowse](../JBrowse.1 "JBrowse") help and general questions.    | <a href="http://gmod.827538.n3.nabble.com/JBrowse-Support-f815920.html" |

class="external text" rel="nofollow">Nabble</a> (2010/05+), <a href="https://lists.sourceforge.net/lists/listinfo/gmod-ajax"
class="external text" rel="nofollow">Sourceforge</a> |
| | <a
href="https://calmail.berkeley.edu/manage/list/listinfo/jbrowse-dev@lists.berkeley.edu"
class="external text" rel="nofollow">jbrowse-dev</a> | [JBrowse](../JBrowse.1 "JBrowse") development discussions. | <a
href="http://gmod.827538.n3.nabble.com/JBrowse-Development-f3296666.html"
class="external text" rel="nofollow">Nabble</a> (2011/08+) |

\| logo_info = \| dev_ppl = JBrowse is an open-source project, started
and managed by the laboratory of
**<a href="mailto:ihh@berkeley.edu" class="external text"
rel="nofollow">Ian Holmes</a>** at the
<a href="http://berkeley.edu" class="external text"
rel="nofollow">University of California, Berkeley</a>.

As of January 2012, the lead developer of JBrowse is [Robert
Buels](../User%3ARobertBuels "User%3ARobertBuels"). Most of JBrowse was
originally written by
<a href="mailto:mitch_skinner@berkeley.edu" class="external text"
rel="nofollow">Mitch Skinner</a>.

There is a [mailing list for developers](#Mailing_Lists), and there is
usually a teleconference on the 3rd Monday of the month at 2pm Pacific
US time. We welcome participation from anyone and everyone. Please
contact [Robert Buels](../User%3ARobertBuels "User%3ARobertBuels") if you
would like to listen in or participate.

\| dev_status = The
<a href="http://github.com/GMOD/jbrowse" class="external text"
rel="nofollow">JBrowse source code repository</a> is kept on GitHub.
Please feel very free to fork the code on GitHub and make modifications
and improvements, submitting pull requests. GitHub has a very nice
<a href="http://help.github.com/fork-a-repo/" class="external text"
rel="nofollow">tutorial</a> on how to get started with this style of
development.

\| see_also = \| extras =



[Cloud component](../Cloud.1 "Cloud")



Included in


[<img
src="https://raw.githubusercontent.com/GMOD/gmod.github.io/main/mediawiki/images/thumb/6/69/GitcLogo.png/150px-GitcLogo.png"
srcset="https://raw.githubusercontent.com/GMOD/gmod.github.io/main/mediawiki/images/thumb/6/69/GitcLogo.png/225px-GitcLogo.png 1.5x, https://raw.githubusercontent.com/GMOD/gmod.github.io/main/mediawiki/images/thumb/6/69/GitcLogo.png/300px-GitcLogo.png 2x"
width="150" height="86" alt="Cloud component" />](../Cloud.1 "Cloud")


}}




[Categories](../Special%3ACategories "Special%3ACategories"):

- <a
  href="http://gmod.org/mediawiki/index.php?title=Category%3ATemplate&amp;action=edit&amp;redlink=1"
  class="new" title="Category%3ATemplate (page does not exist)">Template</a>
- [GMOD in the
  Cloud](../Category%3AGMOD_in_the_Cloud "Category%3AGMOD in the Cloud")
- [JBrowse](../Category%3AJBrowse "Category%3AJBrowse")
- [GMOD
  Components](../Category%3AGMOD_Components "Category%3AGMOD Components")
- [Tool data](../Category%3ATool_data "Category%3ATool data")






## Navigation menu




### Namespaces

- <span id="ca-talk"><a
  href="http://gmod.org/mediawiki/index.php?title=Talk:JBrowse/tool_data&amp;action=edit&amp;redlink=1"
  accesskey="t"
  title="Discussion about the content page [t]">Discussion</a></span>


###

### Variants[](#)







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



- <span id="t-smwbrowselink"><a href="../Special%3ABrowse/JBrowse-2Ftool_data" rel="smw-browse">Browse
  properties</a></span>





- <span id="footer-info-lastmod">Last updated at 08:09 on 28 January 2014.</span>
<!-- - <span id="footer-info-viewcount">52,030 page views.</span> -->
- <span id="footer-info-copyright">Content is available under
  <a href="http://www.gnu.org/licenses/fdl-1.3.html" class="external"
  rel="nofollow">a GNU Free Documentation License</a> unless otherwise
  noted.</span>

<!-- -->

- <span id="footer-places-about">[About
  GMOD](../GMOD%3AAbout "GMOD%3AAbout")</span>

<!-- -->


