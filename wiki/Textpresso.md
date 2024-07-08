



<span id="top"></span>




# <span dir="auto">Textpresso</span>










<a href="File:TextpressoLogo.jpg" class="image"><img
src="https://raw.githubusercontent.com/GMOD/gmod.github.io/main/mediawiki/images/c/c4/TextpressoLogo.jpg" width="400"
height="126" alt="Textpresso logo" /></a>



Status



- Mature release
- Development: active
- Support: active



Licence



  
Modified GPL



Resources



- <a href="http://textpresso.org" class="external text"
  rel="nofollow">Home page</a>

<!-- -->

- <a href="http://textpresso.org/downloads.html" class="external text"
  rel="nofollow">Download</a>

  




## Contents



- [<span class="tocnumber">1</span> <span class="toctext">About
  Textpresso</span>](#About_Textpresso)
- [<span class="tocnumber">2</span>
  <span class="toctext">Downloads</span>](#Downloads)
- [<span class="tocnumber">3</span> <span class="toctext">Using
  Textpresso</span>](#Using_Textpresso)
  - [<span class="tocnumber">3.1</span> <span class="toctext">System
    Requirements</span>](#System_Requirements)
- [<span class="tocnumber">4</span>
  <span class="toctext">Documentation</span>](#Documentation)
  - [<span class="tocnumber">4.1</span> <span class="toctext">Textpresso
    2 Extensions</span>](#Textpresso_2_Extensions)
- [<span class="tocnumber">5</span> <span class="toctext">Contacts and
  Mailing Lists</span>](#Contacts_and_Mailing_Lists)
- [<span class="tocnumber">6</span> <span class="toctext">Textpresso in
  the wild</span>](#Textpresso_in_the_wild)
- [<span class="tocnumber">7</span> <span class="toctext">More on
  Textpresso</span>](#More_on_Textpresso)



## <span id="About_Textpresso" class="mw-headline">About Textpresso</span>

Textpresso is an information extracting and processing (text mining)
package for biological literature whose capabilities go far beyond that
of a simple keyword search engine. The two key elements are the
collection of the full text of scientific articles split into individual
sentences, and the implementation of semantic categories, for which a
database of articles and individual sentences can be searched. The
source of the full text articles are PDFs, and additional
bibliographical information that is obtained from other citation
databases can be processed as well.
<a href="http://ilex.caltech.edu/trac/alere/" class="external text"
rel="nofollow">Alere</a> is a package of scripts that can be used to
construct a corpus (retrieve articles) for use with **Textpresso**.
Textpresso is supported by a grant from the National Human Genome
Research Institute at the US National Institutes of Health \# HG004090.

  
Visit the <a href="http://textpresso.org" class="external text"
rel="nofollow">Textpresso website</a>.

  

## <span id="Downloads" class="mw-headline">Downloads</span>

- <a href="http://textpresso.org/downloads.html" class="external text"
  rel="nofollow">Download Textpresso</a>.

  

## <span id="Using_Textpresso" class="mw-headline">Using Textpresso</span>

The package is designed for [Linux](Category%3ALinux "Category%3ALinux")
operating systems and is tested to run on an Intel x86 based hardware.
The required minimal disk space is around 6GB per 1000 full text papers;
half of it is used by the publicly (via WWW) accessible database, while
the other half is needed for database preparation and maintenance. If
necessary, the latter can be reduced.

### <span id="System_Requirements" class="mw-headline">System Requirements</span>

- Software for a world wide web server such as Apache needs to be
  installed, and an Internet connection should exist
- Perl 5.6.1 or higher should be present, and the most common Perl
  packages.
- The installation script requires bash
- <a href="http://search.cpan.org/perldoc?XML::Checker::Parser"
  class="external text" rel="nofollow">XML::Checker::Parser</a>
- <a href="http://search.cpan.org/perldoc?XML::DOM::Parser"
  class="external text" rel="nofollow">XML::DOM::Parser</a>
- <a href="http://search.cpan.org/perldoc?XML::XQL::DOM"
  class="external text" rel="nofollow">XML::XQL::DOM</a>
- <a href="http://search.cpan.org/perldoc?XML::Checker::Parser"
  class="external text" rel="nofollow">XML::Checker::Parser</a>,
- <a href="http://search.cpan.org/perldoc?Mailer::Mail"
  class="external text" rel="nofollow">Mailer::Mail</a> (in
  MailTools-1.58)
- <a href="http://search.cpan.org/perldoc?PDF::Create"
  class="external text" rel="nofollow">PDF::Create</a> (in PDF-Create).
- If the model organism database is based on ACeDB then
  <a href="http://search.cpan.org/perldoc?AcePerl" class="external text"
  rel="nofollow">AcePerl</a> is required
- XPDF (<a href="http://www.foolabs.com/xpdf/" class="external free"
  rel="nofollow">http://www.foolabs.com/xpdf/</a>), the pdftotext
  converter
- RBT, a part-of-speech tagger developed by Eric Brill
  (<a href="http://research.microsoft.com/~brill/blog.htm"
  class="external text" rel="nofollow">blog</a>,
  <a href="http://research.microsoft.com/~brill/" class="external text"
  rel="nofollow">homepage</a>*deprecated*). RBT seems to be no longer
  available at JHU. A copy appears to be available at
  <a href="http://www.cst.dk/download/tagger/RBT1_14.tar.Z"
  class="external text" rel="nofollow">Københavns Universitet</a> (I
  didn't download and check it). RBT is distributed free of charge under
  a license of the Massachusetts Institute of Technology and the
  University of Pennsylvania. If you want to recompile either of the
  packages, you additionally need a C compiler.

This package has been tested with the Linux RedHat 9.0 distribution
(<a href="http://www.redhat.com" class="external free"
rel="nofollow">http://www.redhat.com</a>) and Debian Linux 3.1
(<a href="http://www.debian.org" class="external free"
rel="nofollow">http://www.debian.org</a>) . Both work with a 2.4.20
kernel or higher.

  

## <span id="Documentation" class="mw-headline">Documentation</span>

- <a
  href="http://www.textpresso.org/celegans/misc/Textpresso-2.0-documentation/"
  class="external text" rel="nofollow">Installation Guide</a>
- <a href="http://textpresso-www.caltech.edu/cgi-bin/celegans/user_guide"
  class="external text" rel="nofollow">User Guide</a>.

### <span id="Textpresso_2_Extensions" class="mw-headline">Textpresso 2 Extensions</span>

A <a href="http://en.wikipedia.org/wiki/Fork_%28software_development%29"
class="external text" rel="nofollow">fork</a> of Textpresso has been
created that contains a number of extensions to Textpresso 2. These
include

- Interface overhaul, including [AJAX](Glossary#AJAX "Glossary") and
  heavy integration of
  <a href="http://datatables.net" class="external text"
  rel="nofollow">jQuery DatatTables</a>, user authentication, and a GUI
  for managing the literature corpus.
- Modularization and customization for better database support
- Addition of a plug-in API
- Speed increase

The <a href="http://sourceforge.net/projects/textpresso"
class="external text" rel="nofollow">extended version of Textpresso 2 is
available at SourceForge</a>.

These extensions were written by Nathan Liles of the [Hu
Lab](User%3AJimHu.1 "User%3AJimHu") at Texas A&M University. Nathan
[presented this
work](File:Jan2010Testpresso.pdf "File:Jan2010Testpresso.pdf") at the
[January 2010 GMOD
Meeting](January_2010_GMOD_Meeting "January 2010 GMOD Meeting"). The
Textpresso team plans to fold these extensions back into the main
Textpresso code base in the future.

  

  

## <span id="Contacts_and_Mailing_Lists" class="mw-headline">Contacts and Mailing Lists</span>

For support, please contact the Textpresso developer,
<a href="mailto:mueller@caltech.edu" class="external text"
rel="nofollow">Hans-Michael Müller</a>.

## <span id="Textpresso_in_the_wild" class="mw-headline">Textpresso in the wild</span>

Public installations of Textpresso:

- <a href="http://whis.caltech.edu/textpresso/" class="external text"
  rel="nofollow">Textpresso for Sea Urchin</a>
- <a href="http://textpresso.yeastgenome.org/textpresso/"
  class="external text" rel="nofollow">Textpresso for S. cerevisiae</a>
- <a href="http://www.textpresso.org/celegans/" class="external text"
  rel="nofollow">Textpresso for C. elegans</a>

  

  

## <span id="More_on_Textpresso" class="mw-headline">More on Textpresso</span>

See [Category%3ATextpresso](Category%3ATextpresso "Category%3ATextpresso")

  

  




[Categories](Special%3ACategories "Special%3ACategories"):

- [GMOD Component](Category%3AGMOD_Component "Category%3AGMOD Component")
- <a
  href="http://gmod.org/mediawiki/index.php?title=Category%3ASemanticLink&amp;action=edit&amp;redlink=1"
  class="new"
  title="Category%3ASemanticLink (page does not exist)">SemanticLink</a>
- [GMOD Components](Category%3AGMOD_Components "Category%3AGMOD Components")
- [Textpresso](Category%3ATextpresso "Category%3ATextpresso")
- [Annotation](Category%3AAnnotation "Category%3AAnnotation")



<span class="smwfactboxhead">Facts about
"<span class="swmfactboxheadbrowse">[Textpresso](Special%3ABrowse/Textpresso "Special%3ABrowse/Textpresso")</span>"</span><span class="smwrdflink"><span class="rdflink">[RDF
feed](http://gmod.org/wiki/Special:ExportRDF/Textpresso "Special:ExportRDF/Textpresso")</span></span>

|  |  |
|----|----|
| [Available on platform](Property%3AAvailable_on_platform "Property:Available on platform") | web <span class="smwsearch">[+](Special%3ASearchByProperty/Available-20on-20platform/web "Special%3ASearchByProperty/Available-20on-20platform/web")</span> |
| [Has URL](Property%3AHas_URL "Property:Has URL") | <a href="http://textpresso.org" class="external free"
rel="nofollow">http://textpresso.org</a> <span class="smwsearch">[+](Special%3ASearchByProperty/Has-20URL/http%3A-2F-2Ftextpresso.org "Special%3ASearchByProperty/Has-20URL/http%3A-2F-2Ftextpresso.org")</span>, <a href="http://textpresso.org/downloads.html" class="external free"
rel="nofollow">http://textpresso.org/downloads.html</a> <span class="smwsearch">[+](Special%3ASearchByProperty/Has-20URL/http%3A-2F-2Ftextpresso.org-2Fdownloads.html "Special%3ASearchByProperty/Has-20URL/http%3A-2F-2Ftextpresso.org-2Fdownloads.html")</span>, <a href="http://textpresso-www.caltech.edu/cgi-bin/celegans/user_guide"
class="external free"
rel="nofollow">http://textpresso-www.caltech.edu/cgi-bin/celegans/user_guide</a> <span class="smwsearch">[+](Special%3ASearchByProperty/Has-20URL/http%3A-2F-2Ftextpresso-2Dwww.caltech.edu-2Fcgi-2Dbin-2Fcelegans-2Fuser_guide "Special%3ASearchByProperty/Has-20URL/http:-2F-2Ftextpresso-2Dwww.caltech.edu-2Fcgi-2Dbin-2Fcelegans-2Fuser guide")</span>, <a href="http://whis.caltech.edu/textpresso/" class="external free"
rel="nofollow">http://whis.caltech.edu/textpresso/</a> <span class="smwsearch">[+](Special%3ASearchByProperty/Has-20URL/http%3A-2F-2Fwhis.caltech.edu-2Ftextpresso-2F "Special%3ASearchByProperty/Has-20URL/http%3A-2F-2Fwhis.caltech.edu-2Ftextpresso-2F")</span>, <a href="http://textpresso.yeastgenome.org/textpresso/"
class="external free"
rel="nofollow">http://textpresso.yeastgenome.org/textpresso/</a> <span class="smwsearch">[+](Special%3ASearchByProperty/Has-20URL/http%3A-2F-2Ftextpresso.yeastgenome.org-2Ftextpresso-2F "Special%3ASearchByProperty/Has-20URL/http%3A-2F-2Ftextpresso.yeastgenome.org-2Ftextpresso-2F")</span> and <a href="http://www.textpresso.org/celegans/" class="external free"
rel="nofollow">http://www.textpresso.org/celegans/</a> <span class="smwsearch">[+](Special%3ASearchByProperty/Has-20URL/http%3A-2F-2Fwww.textpresso.org-2Fcelegans-2F "Special%3ASearchByProperty/Has-20URL/http%3A-2F-2Fwww.textpresso.org-2Fcelegans-2F")</span> |
| [Has description](Property%3AHas_description "Property:Has description") | Textpresso is an information extracting an<span class="smw-highlighter" data-type="2" state="persistent" data-title="Information"><span class="smwtext"> … </span><span class="smwttcontent">Textpresso is an information extracting and processing (text mining) package for biological literature whose capabilities go far beyond that of a simple keyword search engine. The two key elements are the collection of the full text of scientific articles split into individual sentences, and the implementation of semantic categories, for which a database of articles and individual sentences can be searched. The source of the full text articles are PDFs, and additional bibliographical information that is obtained from other citation databases can be processed as well. <a href="http://ilex.caltech.edu/trac/alere/" class="external text"
rel="nofollow">Alere</a> is a package of scripts that can be used to construct a corpus (retrieve articles) for use with **Textpresso**. Textpresso is supported by a grant from the National Human Genome Research Institute at the US National Institutes of Health \# HG004090.</span></span> National Institutes of Health \# HG004090. <span class="smwsearch"><a
href="http://gmod.org/mediawiki/index.php?title=Special%3ASearchByProperty&amp;x=Has-20description%2FTextpresso-20is-20an-20information-20extracting-20and-20processing-20%28text-20mining%29-20package-20for-20biological-20literature-20whose-20-20capabilities-20go-20far-20beyond-20that-20of-20a-20simple-20keyword-20search-20engine.-20The-20two-20key-20elements-20are-20the-20collection-20of-20the-20full-20text-20of-20scientific-20articles-20split-20into-20individual-20sentences%2C-20and-20the-20implementation-20of-20semantic-20categories%2C-20for-20which-20a-20database-20of-20articles-20and-20individual-20sentences-20can-20be-20searched.-20The-20source-20of-20the-20full-20text-20articles-20are-20PDFs%2C-20and-20additional-20bibliographical-20information-20that-20is-20obtained-20from-20other-20citation-20databases-20can-20be-20processed-20as-20well.-20-20-5Bhttp%3A-2F-2Filex.caltech.edu-2Ftrac-2Falere-2F-20Alere-5D-20is-20a-20package-20of-20scripts-20that-20can-20be-20used-20to-20construct-20a-20corpus-20%28retrieve-20articles%29-20for-20use-20with-20-27-27%27Textpresso-27-27%27.-20-20Textpresso-20is-20supported-20by-20a-20grant-20from-20the-20National-20Human-20Genome-20Research-20Institute-20at-20the-20US-20National-20Institutes-20of-20Health-20-23-20HG004090."
class="external text" rel="nofollow">+</a></span> |
| [Has development status](Property%3AHas_development_status "Property:Has development status") | active <span class="smwsearch">[+](Special%3ASearchByProperty/Has-20development-20status/active "Special%3ASearchByProperty/Has-20development-20status/active")</span> |
| [Has input format](Property%3AHas_input_format "Property:Has input format") | Plain text <span class="smwsearch">[+](Special%3ASearchByProperty/Has-20input-20format/Plain-20text "Special%3ASearchByProperty/Has-20input-20format/Plain-20text")</span>, PDF <span class="smwsearch">[+](Special%3ASearchByProperty/Has-20input-20format/PDF "Special%3ASearchByProperty/Has-20input-20format/PDF")</span> and html <span class="smwsearch">[+](Special%3ASearchByProperty/Has-20input-20format/html "Special%3ASearchByProperty/Has-20input-20format/html")</span> |
| [Has licence](Property%3AHas_licence "Property:Has licence") | Modified GPL <span class="smwsearch">[+](Special%3ASearchByProperty/Has-20licence/Modified-20GPL "Special%3ASearchByProperty/Has-20licence/Modified-20GPL")</span> |
| [Has logo](Property%3AHas_logo "Property:Has logo") | TextpressoLogo.jpg <span class="smwsearch">[+](Special%3ASearchByProperty/Has-20logo/TextpressoLogo.jpg "Special%3ASearchByProperty/Has-20logo/TextpressoLogo.jpg")</span> |
| [Has output format](Property%3AHas_output_format "Property:Has output format") | XML <span class="smwsearch">[+](Special%3ASearchByProperty/Has-20output-20format/XML "Special%3ASearchByProperty/Has-20output-20format/XML")</span> and text <span class="smwsearch">[+](Special%3ASearchByProperty/Has-20output-20format/text "Special%3ASearchByProperty/Has-20output-20format/text")</span> |
| [Has software maturity status](Property%3AHas_software_maturity_status "Property:Has software maturity status") | mature <span class="smwsearch">[+](Special%3ASearchByProperty/Has-20software-20maturity-20status/mature "Special%3ASearchByProperty/Has-20software-20maturity-20status/mature")</span> |
| [Has support status](Property%3AHas_support_status "Property:Has support status") | active <span class="smwsearch">[+](Special%3ASearchByProperty/Has-20support-20status/active "Special%3ASearchByProperty/Has-20support-20status/active")</span> |
| [Has title](Property%3AHas_title "Property:Has title") | Textpresso User Guide <span class="smwsearch">[+](Special%3ASearchByProperty/Has-20title/Textpresso-20User-20Guide "Special%3ASearchByProperty/Has-20title/Textpresso-20User-20Guide")</span>, Textpresso for Sea Urchin <span class="smwsearch">[+](Special%3ASearchByProperty/Has-20title/Textpresso-20for-20Sea-20Urchin "Special%3ASearchByProperty/Has-20title/Textpresso-20for-20Sea-20Urchin")</span>, Textpresso for S. cerevisiae <span class="smwsearch">[+](Special%3ASearchByProperty/Has-20title/Textpresso-20for-20S.-20cerevisiae "Special%3ASearchByProperty/Has-20title/Textpresso-20for-20S.-20cerevisiae")</span> and Textpresso for C. elegans <span class="smwsearch">[+](Special%3ASearchByProperty/Has-20title/Textpresso-20for-20C.-20elegans "Special%3ASearchByProperty/Has-20title/Textpresso-20for-20C.-20elegans")</span> |
| [Has topic](Property%3AHas_topic "Property:Has topic") | **Textpresso** <span class="smwsearch">[+](Special%3ASearchByProperty/Has-20topic/Textpresso "Special%3ASearchByProperty/Has-20topic/Textpresso")</span> |
| [Is open source](Property%3AIs_open_source "Property:Is open source") | Caveats apply <span class="smwsearch">[+](Special%3ASearchByProperty/Is-20open-20source/Caveats-20apply "Special%3ASearchByProperty/Is-20open-20source/Caveats-20apply")</span> |
| [Link type](Property%3ALink_type "Property:Link type") | website <span class="smwsearch">[+](Special%3ASearchByProperty/Link-20type/website "Special%3ASearchByProperty/Link-20type/website")</span>, download <span class="smwsearch">[+](Special%3ASearchByProperty/Link-20type/download "Special%3ASearchByProperty/Link-20type/download")</span>, documentation <span class="smwsearch">[+](Special%3ASearchByProperty/Link-20type/documentation "Special%3ASearchByProperty/Link-20type/documentation")</span> and wild URL <span class="smwsearch">[+](Special%3ASearchByProperty/Link-20type/wild-20URL "Special%3ASearchByProperty/Link-20type/wild-20URL")</span> |
| [Tool functionality or classification](Property%3ATool_functionality_or_classification "Property:Tool functionality or classification") | Literature tools <span class="smwsearch">[+](Special%3ASearchByProperty/Tool-20functionality-20or-20classification/Literature-20tools "Special%3ASearchByProperty/Tool-20functionality-20or-20classification/Literature-20tools")</span> and Text mining <span class="smwsearch">[+](Special%3ASearchByProperty/Tool-20functionality-20or-20classification/Text-20mining "Special%3ASearchByProperty/Tool-20functionality-20or-20classification/Text-20mining")</span> |
| [Written in language](Property%3AWritten_in_language "Property:Written in language") | Perl <span class="smwsearch">[+](Special%3ASearchByProperty/Written-20in-20language/Perl "Special%3ASearchByProperty/Written-20in-20language/Perl")</span> |
| <span class="smw-highlighter" data-type="1" state="inline" data-title="Property"><span class="smwbuiltin">[Has subobject](Property%3AHas_subobject "Property:Has subobject")</span><span class="smwttcontent">This property is a special property in this wiki.</span></span> | [Textpresso#http://textpresso.org](Textpresso#http:.2F.2Ftextpresso.org "Textpresso") <span class="smwsearch">[+](Special%3ASearchByProperty/Has-20subobject/Textpresso-23http%3A-2F-2Ftextpresso.org "Special%3ASearchByProperty/Has-20subobject/Textpresso-23http%3A-2F-2Ftextpresso.org")</span>, [Textpresso#http://textpresso.org/downloads.html](Textpresso#http:.2F.2Ftextpresso.org.2Fdownloads.html "Textpresso") <span class="smwsearch">[+](Special%3ASearchByProperty/Has-20subobject/Textpresso-23http%3A-2F-2Ftextpresso.org-2Fdownloads.html "Special%3ASearchByProperty/Has-20subobject/Textpresso-23http%3A-2F-2Ftextpresso.org-2Fdownloads.html")</span>, [Textpresso#http://textpresso-www.caltech.edu/cgi-bin/celegans/user_guide](Textpresso#http:.2F.2Ftextpresso-www.caltech.edu.2Fcgi-bin.2Fcelegans.2Fuser_guide "Textpresso") <span class="smwsearch">[+](Special%3ASearchByProperty/Has-20subobject/Textpresso-23http%3A-2F-2Ftextpresso-2Dwww.caltech.edu-2Fcgi-2Dbin-2Fcelegans-2Fuser_guide "Special%3ASearchByProperty/Has-20subobject/Textpresso-23http:-2F-2Ftextpresso-2Dwww.caltech.edu-2Fcgi-2Dbin-2Fcelegans-2Fuser guide")</span>, [Textpresso#http://whis.caltech.edu/textpresso/](Textpresso#http:.2F.2Fwhis.caltech.edu.2Ftextpresso.2F "Textpresso") <span class="smwsearch">[+](Special%3ASearchByProperty/Has-20subobject/Textpresso-23http%3A-2F-2Fwhis.caltech.edu-2Ftextpresso-2F "Special%3ASearchByProperty/Has-20subobject/Textpresso-23http%3A-2F-2Fwhis.caltech.edu-2Ftextpresso-2F")</span>, [Textpresso#http://textpresso.yeastgenome.org/textpresso/](Textpresso#http:.2F.2Ftextpresso.yeastgenome.org.2Ftextpresso.2F "Textpresso") <span class="smwsearch">[+](Special%3ASearchByProperty/Has-20subobject/Textpresso-23http%3A-2F-2Ftextpresso.yeastgenome.org-2Ftextpresso-2F "Special%3ASearchByProperty/Has-20subobject/Textpresso-23http%3A-2F-2Ftextpresso.yeastgenome.org-2Ftextpresso-2F")</span> and [Textpresso#http://www.textpresso.org/celegans/](Textpresso#http:.2F.2Fwww.textpresso.org.2Fcelegans.2F "Textpresso") <span class="smwsearch">[+](Special%3ASearchByProperty/Has-20subobject/Textpresso-23http%3A-2F-2Fwww.textpresso.org-2Fcelegans-2F "Special%3ASearchByProperty/Has-20subobject/Textpresso-23http%3A-2F-2Fwww.textpresso.org-2Fcelegans-2F")</span> |






## Navigation menu



### Namespaces


- <span id="ca-talk"><a href="Talk%3ATextpresso" accesskey="t"
  title="Discussion about the content page [t]">Discussion</a></span>


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

- <span id="t-smwbrowselink"><a href="Special%3ABrowse/Textpresso" rel="smw-browse">Browse
  properties</a></span>



- <span id="footer-info-lastmod">Last updated at 17:56 on 17 October
  2013.</span>
<!-- - <span id="footer-info-viewcount">107,124 page views.</span> -->
- <span id="footer-info-copyright">Content is available under
  <a href="http://www.gnu.org/licenses/fdl-1.3.html" class="external"
  rel="nofollow">a GNU Free Documentation License</a> unless otherwise
  noted.</span>

<!-- -->

- <span id="footer-places-about">[About
  GMOD](GMOD%3AAbout "GMOD%3AAbout")</span>

<!-- -->




