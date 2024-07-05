









<span id="top"></span>







# <span dir="auto">IGB</span>





From GMOD









Jump to: [navigation](#mw-navigation), [search](#p-search)





<a href="http://genoviz.sourceforge.net/" class="external text"
rel="nofollow">Integrated Genome Browser</a> (IGB, pronounced "ig-bee")
is an application built upon the GenoViz SDK and Genometry for
[visualization](Visualization "Visualization") and exploration of
genomes and corresponding annotations from multiple data sources. IGB is
also a client for the DAS (Distributed Annotation System) protocol.

## <span id="From_a_Mac_client_to_a_Perl_DAS.2F2_server" class="mw-headline">From a Mac client to a Perl DAS/2 server</span>

I'm going to see if I can get IGB on my Mac to connect to a local Perl
DAS/2 server I'm writing. This section is for Gregg to see my progress
(more likely lack thereof) and slap me if I stray too far.
--[Jhannah](User%3AJhannah "User%3AJhannah") 14:30, 7 November 2007 (EST)

Gregg instructions from a Windows client:

    In your user home directory (not sure exactly where that is on Mac),
    IGB sets up an igb_prefs.xml file.  To add more DAS/2 servers to IGB,
    add a line like this to the file:

      <das2_server name="localhost" url="http://localhost:9092/das2/genome" />

Unfortunately on a Mac this apparently isn't so straight forward. My
preferences are getting stuck here:

     /Users/jhannah/Library/Preference/com.affymetrix.igb.plist

And OS/X is whacking the XML in very creative ways, into this key/dict
structure:

    ...
    <key>das2/</key>
    <dict>
      <key>http:%%netaffxdas.affymetrix.com%das2%genome/</key>
        <dict>
          <key>http:%%netaffxdas.affymetrix.com%das2%genome%H_sapiens/</key>
           <dict>
             <key>http:%%netaffxdas.affymetrix.com%das2%genome%H_sapiens_Mar_2006/</key>
               <dict>
                 ...

So I'm trying to reverse engineer how I can add my localhost as a DAS/2
server.

UPDATE from Gregg: The preferences stored in the \*.plist file are
serialized Java Preferences nodes, which are different from the
preferences kept in the "igb_prefs.xml" file -- IGB uses both. If you've
run IGB there should be an "igb_prefs.xml" file in your home directory,
which on OS X is usually /Users/\[user_id\]/. That's the file where you
need to add the das2_server line.

I've hit several apparently out-of-date things in the downloadable
IGB_User_Guide.pdf... I'm not sure if Gregg is interested in me
submitting documentation errata or not. (e.g.: "Exporting Preference
Settings" seems to have disappeared.)

UPDATE from Gregg: Yep the IGB User's Guide definitely needs an update.
I wouldn't worry about listing all the places the docs don't agree with
the current release -- there's a lot of those. If you encounter any
problems with IGB there is a discussion forum set up: <a
href="https://www.affymetrix.com/community/forums/forum.jspa?forumID=28"
class="external free"
rel="nofollow">https://www.affymetrix.com/community/forums/forum.jspa?forumID=28</a>

### <span id="Misc_plist_wars" class="mw-headline">Misc plist wars</span>

    Command line:
      plutil -convert xml1 -o j com.affymetrix.igb.plist
      plutil -convert binary1 -o com.affymetrix.igb.plist j
      defaults read com.affymetrix.igb
    GUI:
      /Developer/Applications/Utilities/Property List Editor.app
         (Part of the OS/X Developer Toolkit)





Retrieved from
"<http://gmod.org/mediawiki/index.php?title=IGB&oldid=12010>"







[Categories](Special%3ACategories "Special%3ACategories"):

- [DAS](Category%3ADAS "Category%3ADAS")
- [External](Category%3AExternal "Category%3AExternal")















## Navigation menu









### Namespaces


- <span id="ca-talk"><a
  href="http://gmod.org/mediawiki/index.php?title=Talk:IGB&amp;action=edit&amp;redlink=1"
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




- <span id="t-smwbrowselink"><a href="Special%3ABrowse/IGB" rel="smw-browse">Browse properties</a></span>












- <span id="footer-info-lastmod">Last updated at 04:57 on 27 February
  2010.</span>
<!-- - <span id="footer-info-viewcount">23,277 page views.</span> -->
- <span id="footer-info-copyright">Content is available under
  <a href="http://www.gnu.org/licenses/fdl-1.3.html" class="external"
  rel="nofollow">a GNU Free Documentation License</a> unless otherwise
  noted.</span>

<!-- -->

- <span id="footer-places-about">[About
  GMOD](GMOD%3AAbout "GMOD%3AAbout")</span>

<!-- -->







