---
layout: post
title: 'Trying out Aho–Corasick algorithm'
categories:
  - software engineering
  - algorithms
tags:
  - software engineering
  - algorithms
status: publish
type: post
published: true
meta: {}
excerpt: 'This solution brought me closer to what I wanted to do and how I wanted to do it.'
datePublished: 2018-10-09 22:16:02
dateModified: 2018-10-09 22:16:02
---

Today I found [Aho–Corasick algorithm](https://en.wikipedia.org/wiki/Aho%E2%80%93Corasick_algorithm). I was instantly hooked on wanting to try it out. Since I am spending more time with Java, most of the day was spent playing with an implementation of this algorithm _and maven_.

I will tell you what, I was pleasantly surprised so far. I need to spend some more time on this but it looks like a promising solution. I wanted to use something like this on the [elderoost](https://elderoost.com/) project. So, here is what my MVP looks like so far.

For this problem I wanted to use a large piece of text as input. For example, I was reading the news earlier and I found a good candidate. I used the following news article as my input:

> Ontario has promised to add 15,000 new long-term care beds across of the province in the next five years and increasing that to 30,000 in a decade.

> Of the 6,000 being put in place immediately, 80 of them will be in Brant County.

> “Your government is moving forward quickly to expand access to long-term care beds,” said Christine Elliott, the Deputy Premier and Minister of Health and Long-Term Care in a press release. “”More long-term care beds will help take the pressure off hospitals, end hallway medicine, allow doctors and nurses to work more efficiently and provide faster health care for Ontario patients and their families.”

> The 80 beds will be shared between John Noble Home and Fox Ridge Care Community (Sienna Senior Living).

> The province has also promised more than 1,100 beds and spaces in hospitals and community settings.

> “This is good news for the people of Brantford-Brant,” said MPP Will Bouma in the release.

which I grabbed from [here](https://kitchener.ctvnews.ca/brant-county-to-get-80-new-long-term-care-beds-1.4125702) so you know it is very fresh &mdash; `Published Monday, October 8, 2018 5:31PM EDT`.

I then ran the MVP implementation against this input, and surprise surprise. I got the expected results of two hits on this article. Not only that, I also have the precise location in the article.

```bash
[672:687]=John Noble Home
[692:716]=Fox Ridge Care Community
```

And you know what? This solution brought me closer to what I wanted to do and how I wanted to do it. My previous implementation was using [Elasticsearch](https://www.elastic.co/) but I never liked that approach. This is why that solution is not public. It did not seem to meet the requirements that I had and it did not produce repetitive results.

I'm excited spend some more time on this.

Oh yes, almost forgot. I used [AhoCorasickDoubleArrayTrie](https://github.com/hankcs/AhoCorasickDoubleArrayTrie) implementation.

## Maven frustrations

I've spent a minute today trying to sort out maven. Unfortunately, as I dug deeper, I found out that there was a play of two installations. I need to untangle this mess:

```bash
  $ echo $JAVA_HOME
/Users/$user/.jenv/versions/openjdk64-11
  $ jenv enable-plugin maven
maven plugin activated
  $ maven
zsh: command not found: maven
  $ mvn
zsh: command not found: mvn
  $ jenv exec maven
jenv: maven: command not found
  $ jenv exec mvn
jenv: mvn: command not found
```

## Links

Today's random link of the day: [Dictionary of Algorithms and Data Structures](https://xlinux.nist.gov/dads/) (DADS).

- [https://winterbe.com/posts/2014/07/31/java8-stream-tutorial-examples/](https://winterbe.com/posts/2014/07/31/java8-stream-tutorial-examples/)
- [https://devcenter.heroku.com/articles/deploy-a-java-web-application-that-launches-with-jetty-runner](https://devcenter.heroku.com/articles/deploy-a-java-web-application-that-launches-with-jetty-runner)
- [https://www.dropwizard.io/1.3.5/docs/getting-started.html](https://www.dropwizard.io/1.3.5/docs/getting-started.html)
- [https://ianlunn.co.uk/articles/quickly-showhide-hidden-files-mac-os-x-mavericks/](https://ianlunn.co.uk/articles/quickly-showhide-hidden-files-mac-os-x-mavericks/)
- [https://github.com/hankcs/HanLP](https://github.com/hankcs/HanLP)
- [http://www.hankcs.com/program/algorithm/aho-corasick-double-array-trie.html](http://www.hankcs.com/program/algorithm/aho-corasick-double-array-trie.html)
- [https://github.com/search?q=ahocorasick](https://github.com/search?q=ahocorasick)
- [https://github.com/maithilish/maven-examples](https://github.com/maithilish/maven-examples)
- [https://intellij-support.jetbrains.com/hc/en-us/community/posts/360000153164-Maven-dependency-in-project-module](https://intellij-support.jetbrains.com/hc/en-us/community/posts/360000153164-Maven-dependency-in-project-module)
- [https://github.com/robert-bor/aho-corasick](https://github.com/robert-bor/aho-corasick)
- [https://collectiveidea.com/blog/archives/2015/05/29/how-to-pluck-like-a-rails-pro](https://collectiveidea.com/blog/archives/2015/05/29/how-to-pluck-like-a-rails-pro)
- [https://stackoverflow.com/a/26698176](https://stackoverflow.com/a/26698176)
- [https://xlinux.nist.gov/dads/HTML/stringMatching.html](https://xlinux.nist.gov/dads/HTML/stringMatching.html)
- [https://xlinux.nist.gov/dads/HTML/ahoCorasick.html](https://xlinux.nist.gov/dads/HTML/ahoCorasick.html)
- [https://github.com/cjgdev/aho_corasick](https://github.com/cjgdev/aho_corasick)
- [https://stackoverflow.com/questions/1099985/algorithm-for-multiple-word-matching-in-text/1100010#1100010](https://stackoverflow.com/questions/1099985/algorithm-for-multiple-word-matching-in-text/1100010#1100010)
- [https://stackoverflow.com/questions/5868369/how-to-read-a-large-text-file-line-by-line-using-java/5868528#5868528](https://stackoverflow.com/questions/5868369/how-to-read-a-large-text-file-line-by-line-using-java/5868528#5868528)
- [https://stackoverflow.com/questions/4716503/reading-a-plain-text-file-in-java/41576248#41576248](https://stackoverflow.com/questions/4716503/reading-a-plain-text-file-in-java/41576248#41576248)
