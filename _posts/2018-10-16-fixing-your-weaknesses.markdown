---
layout: post
title: 'Fixing your weakness'
categories:
  - computer science
  - personal development
tags:
  - software engineering
  - personal development
status: publish
type: post
published: true
meta: {}
excerpt: 'And then everything clicked in for me — I figured out how I got confused around series and sequences.'
dateCreated: 2018-10-16 20:48:01
datePublished: 2018-10-16 20:48:01
dateModified: 2018-10-16 20:48:01
---

After writing this [essay](/blog/relationships-between-sets-series-progressions-and-sequences) a few days ago, I could not stop thinking of figuring out where exactly my error is. Like I mentioned before, I understand the subject matter but not as deep as I would like to.

So, I began by looking backwards: I wanted to figure out during which course I was introduced to them first. I knew that it was around first or second year; and I knew that it was in Calculus. I did not remember if it was Calculus I or Calculus II. I could not remember but why struggle when you can look this up? Since my degree is from an accredited institution that provides accredited degrees &mdash; I can simply request this information or look it up. All of the courses and their description is fully published at uOttawa so this took me a few minutes.

Turns out it was first introduced to me during Calculus II. While I didn't have my notes, I did recall which textbook I used to study and I recall exactly where we studied this. I did have the textbook so I just went ahead and looked it up. And then everything clicked in for me &mdash; I figured out how I got confused around series and sequences.

It was precisely in Chapter 8 of this (not) so wonderful [textbook] by James Stewart. Why do I say not so wonderful? Because, looking on the order of topics presented in retrospect, sequences, series, and limits of these things were introduced at the same time. What I did not realize when I was younger &mdash; professors usually follow a textbook for their instructions. So, if the textbook does not match your studying techniques then the way the knowledge is delivered via professor will not aid.

Sequence is introduced as:

> A sequence can be thought of as a list of numbers written in a definite order ...

Ok good I can follow that. One thing that should have been bolded, in my opinion, was the *definite order* part of the definition but it was not. Right after the definition, we were shown three ways of describing a sequence:

> ... one by using the preceding notation, another by using the defining formula, and a third by writing out the terms of the sequence ...

Ok, even though I've never seen this before presented like this I can follow along. Then they moved to describing how you could find such a description on your own via an example:

> ... [n]otice that the numerators of these fractions start with 3 and increase by 1 whenever we go to the next term. The second term has numerator 4, the third term has numerator 5; in general, the nth term will have numerator n + 2. The denominators are the powers of 5,

> ... so an has denominator 5n. The signs of the terms are alternately positive and negative, so we need to multiply by a power of 1. In Example 1(b) the factor ...  meant we started with a negative term. Here we want to start with a positive term and so we use ...

Looking at it now &mdash; there is a lot going on above and definitely went above my head when I was introduced OR I did not understand it. But that was not the culprit &mdash; you can get by just fine with not understanding this.

On the same page we get some new examples of sequences that is introduced as

> ... sequences that don’t have simple defining equations

Boom. Problem 1 &mdash; sequences don't have simple defining equations. That is such a subtle and non-bolded way of describing an important property of sequences. But don't worry, as you keep reading this example, one sub-example at a time, you come to the famous Fibonacci sequence that everyone loves to introduce.

And how do they introduce this example? Using limits ofcourse. This is calculus afterall. This was Problem 2 for my understanding. These two problems are the reasons where everything went downhill. The text went on to the properties such as convergence and divergence and others. Nowhere, was there a connection of some sort to series.

This is what I mean

![Fibonacci sequence](/assets/images/2018-10-16/fibonacci-sequence-introduction.png)

And how was a series introduced?

> What do we mean when we express a number as an infinite decimal? For instance, what does it mean to write...

> ... The convention behind our decimal notation is that any number can be written as an infinite sum. Here it means that...

> ... where the three dots ... indicate that the sum continues forever, and the more terms we add, the closer we get to the actual value of pi.

Does it make sense to you if you were seeing this for the first time? It did not for me. If you keeping reading there _is_ a mention of a connection between a sequence and a serience

> ... Thus the sum of a series is the limit of the sequence of partial sums. ...

so I cannot say that the author did not connect the ideas. But I can say that it was not clear for me then. When you combine the idea that the textbook was not helpful, the speed at which education moves, and a teacher that follows the book without helping you &mdash; you move on and keep going. Obviously I adapted and learned, otherwise I would not have graduated magna cum laude.

This whole thing was pretty surreal for me and super exciting. Not only did I narrow down my confusion surrounding sequences and series but I also uncovered the exact point where I got confused. Anywho, I'm going to continue studying my weak areas so that I can improve my analysis of algorithms. I think that I am pretty good but I want to be better.

Originally I was going to write about something else but this experience was more exciting for today. Here are some links that I was going to talk about (I still want to talk about them in the future at some point)

- [To become a software consultant, avoid letting clients pay you for code (2017) (daedtech.com)](https://news.ycombinator.com/item?id=18227768)
- [Don't Call Yourself A Programmer, And Other Career Advice](https://www.kalzumeus.com/2011/10/28/dont-call-yourself-a-programmer/)
- [Ask HN: Web developer and looking for a career change, what are my options?](https://news.ycombinator.com/item?id=14942561)
- [Science, education 'in danger now more than ever,' Hawking says posthumously](https://www.cbc.ca/news/technology/stephen-hawking-book-launch-1.4863459)

and from the Hawkings article I highlighted

> "Try to make sense of what you see, and wonder about what makes the universe exist," he said. "It matters that you don't give up. Unleash your imagination. Shape the future."

There you have it my friend. Figure out things that you do not understand and address them. Don't be afraid to do so at any time &mdash; perhaps, even years later ;-)

See you tomorrow

[textbook]: https://www.amazon.com/Single-Variable-Calculus-published-Hardcover/dp/B00E27YJ0E
