---
layout: post
title: "If you don't share your project, did you actually make it?"
categories:
  - software engineering
tags:
  - software engineering
status: publish
type: post
published: true
meta: {}
excerpt: 'When enough candidates know these basics, easy to get into a pattern of asking questions with them.'
datePublished: 2018-10-08 16:02:04
dateModified: 2018-10-08 16:02:04
---

Today, I did a few quick fixes to the current layout of this website.

- I added `« Previous Essay` and `Next Essay »` links to each piece of writing at the end for easier navigation

  This required a slight modification to the templates. Found the following article [Jekyll – how to link to next/previous post on your blog] very useful in this venture. In fact, it is very simple. Like so:

  {% raw %}

  ```html
  <style>
    .not-post-page-navigation {
      display: flex;
      justify-content: space-around;
      margin: 1em;
    }
  </style>
  <div class="not-post-page-navigation">
    {% if page.previous.url %}
    <a href="{{page.previous.url}}" title="{{page.previous.title}}">&laquo;
      Previous Essay</a>
    {% endif %}
    {% if page.next.url %}
    <a href="{{page.next.url}}" title="{{page.next.title}}">Next Essay &raquo;</a>
    {% endif %}
  </div>
  ```

  {% endraw %}

  I also had to look up how I could show you the code above because it had some inline liquid syntactic sugar. So the parser simply interpreted the code about as any regular code. You need to add `raw` and `endraw` tags before the code and proceed as before! See [Liquid syntax highlighting in Markdown]

- I also re-wrote the little script that I wrote in Swift a few days ago in Java. I'm basically jumping between languages because why not. Had some hiccups with looking up regular expressions syntax in Java. Here is the current working copy:

  ```java
  public static void main(String[] args) {
        if (args.length < 1) {
            System.out.println("Please do like this: LazyTitleMaker <title>");
            java.lang.System.exit(0);
        }

        DateFormat dateStyleFormat = new SimpleDateFormat("yyyy-MM-dd");
        Date currDate = new Date();
        String currDateText = dateStyleFormat.format(currDate);

        String input = args[0].toLowerCase();
        String inputWSReplaced = input.replaceAll("\\s+", "-");
        String sanitizedString = inputWSReplaced.replaceAll("[\\',?]", "");

        String resultantURI = currDateText + "-" + sanitizedString;

        System.out.println(resultantURI + ".markdown");
        System.out.println("Length: " + resultantURI.length());
    }
  ```

  Need to fix the following code that you see above at some later time

  ```java
        String sanitizedString = inputWSReplaced.replaceAll("[\\',?]", "");
  ```

  I wanted to find all characters in the string that are not words and not spaces. I expected `[^w]` to match to all characters that are not words and `[^s]` to match all characters that are not spaces.

  ```java
        String sanitizedString = inputWSReplaced.replaceAll("[^\\w\\s]", "");
  ```

  Similar to how I would do it in JavaScript

  ```javascript
  "Some Str,in'g?"
    .toLowerCase()
    .replace(/[^\w\s]/g, '')
    .replace(/ /g, '-');
  ```

- I also changed the about page and the projects page
- I added a new template for the about and projects pages

  Modified the way images are displayed in the liquid templates. Replaced `{:width="60%"}` with `{:style="max-width:100%"}`.

- I removed the newsletter link at the footer
- I adjusted my project involvement for Screenhole and Keyframes. Until further notice my involvement is on pause while [Thinko] focuses on other things. I enjoyed working with the team and hope to do so again the future. Jacob and Pasquale are wonderful.
- Played with modulo and reminder theories decoding a birthday message [1], [2].

It is fun to make things for no reason other than just because. So, what do I think about: _If you don't share your project, did you actually make it?_ While I think it depends on the project and the goals, I think that decision is ultimately up to you. It is very easy to fall in the trap of sharing for the sake of sharing. For me &mdash; I first look at the project and then I look at the goals. Most likely than not the things that I share I hope others to find useful and educational.

Links for today:

- [http://files.zeroturnaround.com/pdf/zt_regular-expressions-cheat-sheet.pdf](http://files.zeroturnaround.com/pdf/zt_regular-expressions-cheat-sheet.pdf)
- [https://regexr.com/](https://regexr.com/)
- [https://stackoverflow.com/questions/10253516/ruby-regex-replace-non-word-chars-that-are-not-space-chars](https://stackoverflow.com/questions/10253516/ruby-regex-replace-non-word-chars-that-are-not-space-chars)
- [http://tutorials.jenkov.com/java-internationalization/simpledateformat.html](http://tutorials.jenkov.com/java-internationalization/simpledateformat.html)
- [http://www.vogella.com/tutorials/JavaRegularExpressions/article.html](http://www.vogella.com/tutorials/JavaRegularExpressions/article.html)
- [http://www.java2s.com/Tutorials/Java/java.time/LocalDateTime/2720\__LocalDateTime.now_.htm](http://www.java2s.com/Tutorials/Java/java.time/LocalDateTime/2720__LocalDateTime.now_.htm)
- [https://docs.oracle.com/javase/tutorial/java/data/manipstrings.html](https://docs.oracle.com/javase/tutorial/java/data/manipstrings.html)
- [https://help.shopify.com/en/themes/liquid/filters/string-filters](https://help.shopify.com/en/themes/liquid/filters/string-filters)
- [https://devhints.io/jekyll](https://devhints.io/jekyll)
- [https://gist.github.com/mikeygee/2626538](https://gist.github.com/mikeygee/2626538)
- [https://gist.github.com/JJediny/a466eed62cee30ad45e2](https://gist.github.com/JJediny/a466eed62cee30ad45e2)

[jekyll – how to link to next/previous post on your blog]: https://david.elbe.me/jekyll/2015/06/20/how-to-link-to-next-and-previous-post-with-jekyll.html
[liquid syntax highlighting in markdown]: https://github.com/github/linguist/issues/3690
[thinko]: https://thinko.com
[1]: https://stackoverflow.com/a/37240042
[2]: https://stackoverflow.com/a/3354251
