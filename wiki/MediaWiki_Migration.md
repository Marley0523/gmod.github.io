# MediaWiki Migration

In June, 2024, we undertool a migration from a rather aged MediaWiki instance that has
house gmod.org for nearly 20 years to a set of markdown files that are now
hosted in a [GitHub repo](https://github.com/GMOD/gmod.github.io) and hosted
by GitHub.io.

## Details

While I'd hoped to use a straight forward path suggested in several places on the web
(MediaWiki XML dump -> Pandoc -> markdown), I realized after a few days of
trying that this wouldn't work: the GMOD MediaWiki instance used several
Templates extensively, and the content that results from those templates getting
executed in the process of pages being displayed weren't present in the dumped
XML, just the fact that those templates were being called. So, to use the XML
dump, would have to have written my own (I couldn't find one) template ->
XML producer to fill in the blanks.

What I realized while thinking about the template problem is that I had a
template evaluator in the form of MediaWiki itself, I just had to write a spider
that would crawl the entire site and save the files as html (or markdown, if
I were clever enough). Since I tend to reach for Perl first in this sort
of situation, I spent a little time thinking about writing a bespoke spider
to do what I wanted. I think it was [Colin Diesh](User%253AColin_Diesh) (yes,
that user page is waaaay out of date) that suggested that I just try mirroring
the site to my local computer with `wget`. After a few false starts trying to
mirror it to my workhorse laptop (the big problem that the wget process didn't always
restart successfully after being asleep), I ran `wget2` on an old laptop that I
could leave running non-stop for the 4+ days it took to mirror the entire site
(I put a 20 second wait between fetches to avoid DDOSing our own site). The result
was over 18,000 files.

### Trimming down the file count

### Fixing translation issues and generally cleaning up

## Navigation menu

### Navigation

- <span id="n-GMOD-Home">[GMOD Home](Main_Page)</span>
- <span id="n-Software">[Software](GMOD_Components)</span>
- <span id="n-Categories-.2F-Tags">[Categories / Tags](Categories)</span>

### Documentation

- <span id="n-Overview">[Overview](Overview)</span>
- <span id="n-FAQs">[FAQs](Category%253AFAQ)</span>
- <span id="n-HOWTOs">[HOWTOs](Category%253AHOWTO)</span>
- <span id="n-Glossary">[Glossary](Glossary)</span>

### Community

- <span id="n-GMOD-News">[GMOD News](GMOD_News)</span>
- <span id="n-Training-.2F-Outreach">[Training / Outreach](Training_and_Outreach)</span>
- <span id="n-Support">[Support](Support)</span>
- <span id="n-GMOD-Promotion">[GMOD Promotion](GMOD_Promotion)</span>
- <span id="n-Meetings">[Meetings](Meetings)</span>
- <span id="n-Calendar">[Calendar](Calendar)</span>
