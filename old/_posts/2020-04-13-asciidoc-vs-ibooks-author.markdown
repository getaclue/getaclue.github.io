---
layout: post
title: "Asciidoc vs. iBooks Author pdf output"
categories:
  - asciidoc
  - asciidoctor
  - ibooks author
  - example
tags: [asciidoc, asciidoctor, ibooks author, example]
status: publish
type: post
published: true
meta: {}
image: ""
excerpt: "In this article I compare pdf output for asciidoc vs. ibooks author."
dateCreated: 2020-04-13 15:44:56
datePublished: 2020-04-13 16:43:24
dateModified: 2020-04-13 16:43:24
---

I wanted to spend some time today on giving the [asciidoc] format a try. I'm currently working on a book in iBooks Author and previewing the work as a pdf. The goal of this book is to be viewed the best in the pdf format. As far as I could tell, iBooks Author, does a good job on doing what I want it to do. However, formatting the code blocks takes some time and it looks a bit odd on the pdf output. Well, to be honest it doesn't look that great as an epub either.

The way that I currently work is that I open [vs code] to the specific code file that I am talking about in the book and copy that code. When I switch to the iBooks Author I paste the copied code by right clicking in the section to be pasted and selecting "Paste and Retain Style" option.

What this does is preserves the styles, font, and formatting of my code just like it was in [vs code]. This works well and would have no issues if I wanted my code in this book to look like regular text. I want the code blocks to stand out and be formatted differently. To do that I change the font background color and format each code block one line at a time.

In the iBooks Author the formatting of the code blocks looks good :

![iBooks Author.]({{"assets/images/2020-04-13/ibooks-author-view.png" | relative_url}})

The issues arise when I export the project in any of the available formats. In the epub format and in the pdf the code block lines are processed with a small white border or spacing. Thus, the beautiful black background and the formatted code is viewed with white spacing in between each line. This makes the code blocks somewhat ugly and not exactly viewed how they are in the authoring tool. This is what the book looks like when opened in iBooks :

![iBooks view]({{"assets/images/2020-04-13/ibooks-view.png" | relative_url}})

and this is what a pdf output looks like :

![pdf view]({{"assets/images/2020-04-13/pdf-view.png" | relative_url}})

This week I found out about a different authoring tool, or I should say a different way of writing the book using [asciidoc] formatting language. The format is in plain text, which is awesome and requires no proprietary tool to create. However, it takes a little bit of time to get used to it. I spent two hours today redoing one of the sections of my book into [asciidoc]. I wanted to see if there was any difference in the pdf output of the code blocks. Moreover, I wanted to see what options I have for displaying code in general.

To be honest, the pdf output looks pretty good and asciidoc format allows for nifty code annotations via numbers:

![asciidoc pdf view]({{"assets/images/2020-04-13/asciidoc-pdf-view.png" | relative_url}})

Is it worth the switch for me at this point in time? No probably not. I am still focusing on the content so the formatting should come after the content. However, I will most likely convert the book from iBooks Author proprietary format to [asciidoc].

Apple's authoring tool is wonderful if you are just working with text and media. Adding code blocks does not really work out of the box and requires some fiddling. Is it passable output for a selling product? I think so as I am selling content and not formatting. Formatting of the content is just icing on the cake for me. But, if I was starting this project again I would start it in the [asciidoc] format for sure. Plus I like having my content in just plain text and not stuck in some proprietary tool.

If you are wondering I tried to use [asciidocfx] and [vs code] to code the section. [VS code] works well, but [asciidocfx] 's preview feature works a bit better. I thought that since [asciidocfx] is Java based that it would be slow to use and edit on, but so far so good. I'll finish by showing what [asciidocfx]'s environment looks like :

![asciidocfx view]({{"assets/images/2020-04-13/asciidocfx-view.png" | relative_url}})

[asciidoc]: https://asciidoctor.org/docs/asciidoc-syntax-quick-reference/
[asciidocfx]: https://www.asciidocfx.com/
[vs code]: https://code.visualstudio.com/
