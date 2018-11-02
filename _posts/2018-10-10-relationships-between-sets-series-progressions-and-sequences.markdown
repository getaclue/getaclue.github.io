---
layout: post
title: 'Relationships between sets, series, progressions, and sequences'
categories:
  - software engineering
  - math
  - calculus
tags:
  - software engineering
  - algorithms
  - math
  - calculus
  - sequence
  - series
  - progression
status: publish
type: post
published: true
meta: {}
excerpt: 'We have looked at a set, a sequence, and a progression so far. How do these things relate to a series?'
datePublished: 2018-10-10 18:52:01
dateModified: 2018-10-10 18:52:01
redirect_from:
  - /blog/relationships-between-sets-series-progressions-and-sequences
---

Today I ended up exploring a topic that I didn't expect: what is the difference between a sequence and a series.

While I memorized these contepts in my calculus days, I always felt something was missing in my core understanding. I think I figured out what was missing. It seems that I was confused, once again, around the ambiguity of the English language.

I stumbled upon the following in one of my favourite [textbook]s:

> A numeric progression is a sequence of numbers, where each number depends on one or more of the previous numbers.

followed by

> arithmetic progression determines the next number **by adding** a fixed constant to the previous value

and

> geometric progression determines the next number **by multiplying** the previous value by a fixed constant

which made me go _Aha_. All I had to do was check if the thing was made by adding or by multiplying? Seems easy enough to get.

I'm sure I had the same thoughts back in school. So, I decided to play around and see what I find confusing so I could fix my gaps in knowledge. I thought: hmm, they are using both terms, a `progression` and `sequence`, in one sentence. Confused &mdash; because if you don't really pay attention then you could interpret these two terms as having a similar meaning.

What I should have considered was the specific word choice in math. Similar confusions were found in other areas. For example, different terminology in the graph space. One positive thing that I did notice is that specialty books are beginning to mention discrepancies surrounding word choice.

Getting back to progression and sequence confusion. The more I thought about it, the more I realized that I had confusion back in the day. Confusion around terminology and not the concepts. If you read one of the previous entries, then you recall me saying that pattern matching works to a certain degree. So, I used pattern matching during my former student days. It got me far enough but I was never satisfied.

Unlike my former student self, I have the leisure and time to explore this further.

I found the following excerpt on quora from [how does sequence and progression differ?](https://www.quora.com/How-does-sequence-and-progression-differ)

> ... all progressions are sequences, all sequences are not progression ...

OK, so that brought my understanding a bit closer. So a sequence is a collection of things. Hmm, but that sounds very close to what a set is. So, what is the difference between a sequence and a set? Is there one? Decided to consult wonderful [wikipedia definition](https://en.wikipedia.org/wiki/Sequence) for more information.

So a sequence is **like a set** because they are a collection that contains things: members or elements. Like a set, this collection can be finite or infinite. Ok... so still not too clear so far. However, as we read further &mdash; what we find, is that in a sequence, _unlike in a set_, repeated occurences of members are allowed. _Additionally_, **unlike in a set**, the **order** of individual members in the collection **matters**.

Furthermore, a sequence does not have to be only denoted by [an explicit] formula. A sequence can also be denoted by [a logical statement](https://blogformathematics.blogspot.com/2011/08/sequences.html):

> A sequence may be denoted by an explicit formula, like Tn = 2 + n, or it may be denoted by a logical statement like Tn = nth prime number. It is **not necessary that a set of numbers be arranged according to an explicit formula** in order for it to be called a 'sequence'; it **can also be arranged according to some logical statement** that does not have an explicit mathematical formula but is nonetheless mathematically logical in order for it to be called a sequence.

So, the definition of a sequence and how it differs from a set is starting to make sense. How does a progression relate to all of this? Well, a _numeric_ progression is a **sequence** of _numbers_ where each element depends on _one or more_ of the **previous** members.

Just like in the quote above from the [textbook], it follows that there are at least two such relationships:

1. a relationship between two members such that the difference between these two members is a constant &mdash; this is called an _arithmetic progression_ or _arithmetic sequence_.
2. a relationship between two members such that the [quotient of any two successive members of the sequence is a constant](https://www.math10.com/en/algebra/geometric-progression.html) &mdash; this is called a _geometric progression_ or a _geometric sequence_.

Or said it another way (from the same [textbook] as mentioned):

> geometric progression, in which each value is produced by multiplying the preceding value by a fixed constant, known as the **base of the geometric progression**.

We have looked at a set, sequence, and a progression so far. How do these things relate to a _series_? Very simple &mdash; a series is just the summation of all of the elements in the sequence. So, it then follows, what is the sum of the elements in a given sequence represented by? A series. Just like that. It finally makes sense how a series and a sequence are related. Nothing complicated. No new formulas. Just the proper definitions presented in a familiar way.

Moreover, the total sum of the sequence can be broken up into **partial sum(s)** &mdash; a sum from element `ai` to element `an`. What is interesting about this? Well the fact that [(p)artial sums, themselves, form a sequence](https://en.wikipedia.org/wiki/Sequence).

Well, there you have it.

See you tomorrow.

[textbook]: https://www.amazon.ca/Data-Structures-Algorithms-Michael-Goodrich/dp/1118771338/
