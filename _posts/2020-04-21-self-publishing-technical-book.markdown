---
layout: post
title: "Self-publishing a technical book"
categories:
  - asciidoc
  - asciidoctor
  - ibooks author
  - example
  - writing tools
  - self-publish
tags:
  [asciidoc, asciidoctor, ibooks author, example, writing tools, self-publish]
status: publish
type: post
published: true
meta: {}
image: ""
excerpt: "In this article I go over the steps to self-publish a technical book."
dateCreated: 2020-04-21 15:14:17
datePublished: 2020-04-21 16:48:05
dateModified: 2020-04-21 16:48:05
---

I began to write my `Learn Node.js` (working title) book last month. It is a self-published book project. The aim of the book is to help developers, switching to javascript and node.js, to hit the ground running by building and uploading a functional project. By going through the book you will be able to build features that modern javascript applications require.

My current plan is to self publish and I will be doing that using [gumroad]; then I will upload a copy on iBooks store; and checkout amazon's self publishing via kindle. In all three scenarios, a pdf output of the book is perfect. So, the final version of my book will be available for purchase in at least the pdf format. [Asciidoc] documents are perfectly converted to pdf format using [asciidoctor-pdf].

I began writing my book using iBooks Author authoring tool with the intention of publishing the book on the iBooks store. However, as I progressed in my writing process, I realized that my book contained quite a bit of code blocks. I wrote about this [earlier](./asciidoc-vs-ibooks-author) but I ended up fully re-doing my work and switching away from iBooks Author authoring tool.

Quite honestly, lack of beautiful code blocks (once converted to pdf) is why I switched my writing into [asciidoc] format. For images, so far I have been fortunate to use a combination of screenshots and adobe photoshop software.

For more involved diagrams, I opted out to use [plantuml] for diagram creation. It works pretty good and allows you to maintain your images in plain text format for backups or quick adjustments.

I spent a few hours killing time by working on the book cover marketing material. I found [https://www.freepik.com/](https://www.freepik.com/) to have many wonderful book cover mockups for free. There are also paid alternatives. Point is... finding a beautiful cover may take some time =)

To summarize:

- write using [asciidoc] using [vs code] or [asciidocfx]

- convert [asciidoc] to pdf using something like [asciidoctor-pdf] or [asciidocfx]

- To publish the pdf book on [gumroad] one just needs to make an account.

- To publish the pdf book to iBooks, one needs to connect your iCloud, in iTunes Connect, to Apple Books [like so](https://support.apple.com/en-us/HT201183). And then you need to download iTunes Producer to upload your book to their store.

- To publish the pdf book to Amazon, one needs an amazon account and then head over to the [kindle direct publishing](https://kdp.amazon.com/en_US)

Oh yes, [leanpub] is another option if you would like to stick to markdown and not interested in learning the power of [asciidoc].

Happy writing!

[asciidoc]: https://asciidoctor.org/docs/asciidoc-syntax-quick-reference/
[asciidocfx]: https://www.asciidocfx.com/
[vs code]: https://code.visualstudio.com/
[plantuml]: http://plantuml.com/
[asciidoctor-pdf]: https://asciidoctor.org/docs/asciidoctor-pdf/
[gumroad]: https://gumroad.com/
[leanpub]: https://leanpub.com/
