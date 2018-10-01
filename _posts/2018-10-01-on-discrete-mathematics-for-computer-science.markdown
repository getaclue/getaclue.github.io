---
layout: post
title: 'On Discrete Mathematics For Computer Science'
categories:
  - Software Engineering
  - maths
tags:
  - software engineering
  - maths
status: publish
type: post
published: true
meta: {}
excerpt: 'If you found math challenging or confusing I encourage you not to give up. You can study it on your own.'
datePublished: 2018-09-29 12:27:31
dateModified: 2018-09-29 13:42:20
---

I just ran into ["Discrete Mathematics For Computer Science"](http://condor.depaul.edu/sepp/ICME-13.Epp.pdf) by Susanna S. Epp (13th International Congress on Mathematical Education Hamburg, 24-31 July 2016). The piece resonated with me and I decided to note some reflections from my own experience down.

**I added my own emphasis to the quotes below.**

> “The material in discrete structures is pervasive in the areas of data structures and algorithms but **appears elsewhere** in computer science as well.

This statement resonates very well with me. During my education, there was a big emphasis on data structures and importance of maths in _that_ field. However, there was almost no time spent on the _appears elsewhere_ part of my studies. This left me frustrated lots of times primarily because I went into software engineering to learn about the application of theory.

It is also how I know about Susanna S. Epp and her book _Discrete Mathematics with Applications by Susanna S. Epp_. When I found my education exposure was lacking, I started to search for different strategies to learn difficult material. It turns out, if you add a little bit of effort, then you can find an author in your field of interest that can help you learn this challenging material. An author that writes in a way that you can understand.

Unfortunately, it is one thing that nobody talks about when you are having a difficult time understanding. The fact that if you are having a hard time studying, then a different solution or approach is needed for you

- if you know that other approaches exist
- if you look hard for it
- if you take an initiative to self-study
- and self-research.

> [...] an ability to create and understand a proof &mdash; either a formal symbolic proof or a less formal but still mathematically rigorous argument—is important in virtually every area of computer science, including (to name just a few) formal specification, verification, databases, and cryptography.

> [g]raph theory concepts are used in networks, operating systems, and compilers.

> Set theory concepts are used in software engineering and in databases.

> Probability theory is used in intelligent systems, networking, and a number of computing applications.

And while I do understand the reference points and examples &mdash; I only do so because I went through the system. Looking backwards, when I was learning at the beginning, I recall a big emphasis on data structures and graphs. However, there was no justification besides rote memorization and **needing it for this degree**.

> This paper explores three reasons for the problem. One is that there has been a reduced emphasis on mathematical proof in the secondary mathematics curriculum.

Anecdotally that was true in my experience. This subject matter was never fully conveyed to me - how proofs form the building blocks.

> A study of teacher attitudes by Knuth (2002) indicated that the teachers “viewed proof as appropriate for the mathematics education of a minority of students” and that they saw proof “as a **topic of study** rather than as a **tool for communicating and studying mathematics**.”

Yeap... ding ding ding. That's how it was conveyed to me in Canadian school system as well.

> A second is that the **ways certain words and phrases** are interpreted **in ordinary speech** often differ from the ways they must be interpreted in formal, deductive reasoning.

I cannot tell you how much I struggled with this. The cognitive collusion between ordinary speech and formal reasoning. It is tough to get your head around the complicated subject matter. It really is.

And these things follow you if you do not grasp them when first learning. As someone who had no English vocabulary, I was studying the new language in parallel as I was getting my education foundation and going through the education system. Not only does it make studying these concepts confusing, it also makes the entire field of Maths as some type of mountain that you cannot climb.

I spent a lot of my time memorizing content without understanding. While this approach works to some degree, it almost always fails as you get higher up the knowledge ladder.

What I did not realize, at the time that I was struggling, was that the road blocks should have signaled to me that I had foundational issues. Instead, I plowed forward without having the full picture.

I understand this now and it is part of the reason why I read up on things like this in my free time.

> One of their tasks as students is to learn how to extract the standard interpretation from what is said and written. One of the tasks of instructors is to teach them how to do that.

100% did not experience this. In all of my experience so far the instructors believed in rote replication via writing. While this may work for some learning styles, it really did not work for me.

> One example is that in everyday speech if-then is frequently interpreted as if-and-only-if.

Did I find this confusing? Check.

> Only-if is also routinely interpreted as if-and-only-if.

Did I find this confusing? Check.

> In propositional logic the negation of “if A then B” is the conjunction “A and not B,” ...

Did I find this confusing? Check.

It is a bit hard to reflect on this now because I am much more familiar with this subject. But I will try to step back and play around with my thoughts. The author mentions that students seem to reply `if A then not B` as the common solution to the negation.

While I can justify that response in my head, my brain wants to say `if not A then not B` but it definitely doesn't think `not A or B` nor `not A and B`. Sure, I know the theory and I know about truth tables. And, if I force myself then I can definitely come up to the solution.

However, what I am saying is that it is still challenging to think about these things when you have mental clashes with your everyday speech.

See:

> For instance, a natural response to “If John comes, then the party will be a disaster” is “Don’t worry. If John comes, then the party will not be a disaster. It will be fine.”

This takes the language issue a bit further:

> According to the rules of predicate logic, when a statement contains **two different quantifiers**, they should be interpreted in **left-right order**. However in ordinary language a statement with both for-all and there-is is typically interpreted in **whatever way makes the most common sense**. Linguists call this “scope ambiguity.”

See:

> For example, the most natural way to interpret the sentence, “There is a lid for every pot” is as “For every pot there is a lid” not as “There is one single lid that will be fit every pot.”

Think about this.

> A third is the difficulties students experience in understanding and using statements involving variables, both in connection with predicate logic and in interpreting certain kinds of mathematical phrases.

Very true but to me, this stems from issue created in #2 regarding language.

I liked the following examples provided in the piece:

- What we say &mdash; What we mean
  - the value of x &mdash; the quantity that is put in place of
    x
  - as the value of x increases &mdash; as larger and larger numbers are put in place of x
  - As the value of x increases, the value of y increases. &mdash; If larger and larger numbers are put in place of x, the corresponding numbers that are put in place of y become larger and larger
    .
  - where x is any real number &mdash; for all possible substitutions of real numbers in place of x
  - Let n be any even number &mdash; Imagine substituting an integer in place of n but **do not assume anything about its value** except that it is an even integer
    .
  - By definition of even, `n = 2k` for some integer `k` &mdash; By definition of even, there is an integer we can substitude in place of `k` so that the equation `n = 2k` will be true. (In fact, there is only one such integer; its value is `n/2`)
  - the function `x^2` &mdash; the function that relates each real number to the square of that number. In other words, for each possible substitution of a real number in place of `x`, the function corresponds to the square of that number.
  - where `x` is some real number that satisfies the given property &mdash; There is a real number that will make the given property true if we substitude it in place of x.

---

While I respect the author and the work she does, it appears that math education is a loosing battle. I skimmed through author's article from 1987 (The Logic of Teaching Calculus. In Toward a Lean and Lively Calculus: Report of the Conference Workshop to Develop Curriculum and Teaching Methods for Calculus at the College Level. Ronald G. Douglas, Ed. Washington, D.C.: Mathematical Association of America, 1987, 41-59.) where she outlined similar concerns around logic (only that time it was in the context of calculus).

It has been more than 30 years and it appears that new students are continuing to struggle with maths. Anecdotally, I hear concerned systems and parents pushing for programming skills while pushing away core maths. If you found math challenging or confusing I encourage you not to give up. You can study it on your own.

Start your studies wherever you got confused. There are tests available that can help you narrow it down. Start from grade 1 if you want to. Who is going to judge? Open up khan academy and go to town. Discover the beauty and study on your own time... I did (and I still am).

If it wasn't for Khan Academy, self-studying, youtube, and the people of the internet in general &mdash; I am not sure if I would be where I am.
