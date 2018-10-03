---
layout: post
title: 'Will end-user applications ever be truly programmable?'
categories:
  - software engineering
tags:
  - software engineering
status: publish
type: post
published: true
meta: {}
excerpt: 'Why am I going back to doing this? I boarded this social media train, in the early 2000s, just like everyone else.'
datePublished: 2018-10-03 17:36:29
dateModified: 2018-10-03 17:36:29
---

Over the past year, I've noticed a trend that I'm starting to accummulate a running list of blogs, articles, and people that I find interesting. A list that I curate and maintain manually &mdash; a practice that everyone prior to SAAS explosion used to be intimately familiar with: using bookmarks.

Why am I going back to doing this? I jumped in just like everyone else on the social media train that started moving in the early 2000s.

As this train moved further away from the station, I noticed that I changed the way I interacted with information. Instead of saving things locally on my computer, I would off-load it to the cloud. At first, it made it very convenient for myself: I wouldn't need to worry about hard-drive crashes or lost information. Even then &mdash; a failing hard-drive almost never crossed my mind during my day-to-day uses even if I was mindful of its risk. I finally knew where I could find anything. No more plugging in different hard drives and searching for my things. (and storage capacities at prices that I could not afford previously).

Eventually, the technology improved and added things I did not know I was missing. Specifically &mdash; the sharing and collaborating features. The cloud ecosystems enabled the possibility of sharing interesting information with others. Most importantly, it allowed for asynchronous (and real-time) working experience with others and paved the remote work movement. In other words, saving things locally was a thing of the past. Archaic. Everything. Always. Stayed somewhere else.

Problems? What problems? All of our problems went away we were told by marketers. Previously, if I shared information with someone there were many variables involved in the process: from compressing, to transfer, to uptime, and so on. Now, there were no more problems. If you cannot get my shared documents then something is wrong on your end; with the way you are doing things. Run into a problem? One could simply point people to most common problems list, or a faqs, or a helpful video and thus reduce the amount of time spent on such stressors.

So what happened? Too much comfort and reliance in the spoon feeding. The non-stop flow from the infinite social media feed algorithms got into my daily routines. Why should I be looking for information? I'll let that be fed to me based on the way I interact with things. I stopped being actively involved in this search. I relied too much on the feed algorithms. I got lazy and falsely expected good quality news to flow to me.

... and it worked. But boy did this approach ever backfire on me.

What I did not consider is the historical perspective. During my regular day-to-day usage, the social feed works well once you jump into that water. However, if you are like me and like to reference things at random times, then this approach starts to break. The infinite feed is not really productive especially if there is no predictable order to it. Moreover, you could run into an issue of not finding things in the future. This is especially prevelent if you are an early adopter.

All of the unicorns, if the business is still around, experienced their fair share of messing with user's data unintentionally. Be it permission to the data access, persistence of the data or lack of it, recovery of the data, pricing structures, and so on.

How can a random user be confident in a random service? Will the data be available to the user in the future? Will you be able to access the data? How much access will you have? For how long? How do you export the data? Can you? Should you? How do you share the knowledge with a friend? Someone who is outside of your wall? Will there be a good relationship between the business and the user? Does the relationship change if you pay?

I am questioning if it is fair of us as consumers to be asking things that we want to be asking of technology giants. I am also questioning if we have any good examples of great businesses left in software? Examples that a random person on the street may be familiar with and not the outliers.

Ok... now that you have some background I will move on to the why I even started typing this piece.

Imagine me a few days ago when I stumbled upon a random website. I started reading the content and saw that it was written by [Patrick Collison](https://patrickcollison.com/) &mdash; the one from [Stripe.com](Stripe.com). He brought up a [few interesting points](https://patrickcollison.com/questions) that I did not consider regarding our (user's) interaction with software. He said:

> Will end-user applications ever be truly programmable? If so, how?

> Emacs, Smalltalk, Genera, and VBA embody a vision of malleable end-user computing: if the application doesn't do what you want, it's easy to tweak or augment it to suit your purposes. **Today, however, end-user software increasingly operates behind bulletproof glass**. This is especially true in the growth areas: mobile and web apps. Furthermore, not only is it getting **harder to manipulate** the application logic itself, but it's also becoming **harder to directly manipulate** your data. With Visual Basic, you can readily write a quick script to calculate some calendar analytics with Outlook. **To do the same with Google Calendar is a very laborious chore**.

> End-user computing is becoming less a bicycle and **more a monorail** for the mind.

> As a consequence, **we need ever more domain-specific software**. Rather than use universal tools for handling charts and for manipulating data, we tend to use separate analytics packages for every conceivable application. This is not all bad. Domain-specific tools can maximize ease-of-use and help amortize the cost of complex, specialized functionality. Sublime's built-in ⌘-T works better than every third-party Emacs package. Still, despite these benefits, the popularity of macros and browser plugins strongly suggest that **users are smart and want more control**.

> Should we just give up on our earlier visions of empowered users or is a better equilibrium possible?

The quote above (with my own highlights) was retrieved on October 3, 2018.

Very interesting perspective Patrick. A view that I am glad you shared and definitely will make me think in the future. More specifically, I did not see what kind of doors something like [VBA](https://en.wikipedia.org/wiki/Visual_Basic_for_Applications) opened for everyone. With VBA, a user has the ability to play while avoiding 3rd party reliance. This was probably huge when it came about to the customers.

I'm afraid to admit that I used to think: why on earth would you use VBA in 2016? 2017? 2018? Well, if you are stuck and have nothing else at your disposal, it surely looks like a really good tool to use.

You have to remember and put yourself in that context. A context of a typical worker that is constrained by an administrator. In such a situation, usually, everything is turned off by default (because risk mitigation strategy). This way, if you need something to be turned on or installed then then need to submit a service request. You basically need to cry for help. Moreover, things like cost, licensing, needs, and wants come into play during such a request. These things require justification. Because, business after-all.

If you are in such a unique position and you are constrained, then you may need to get creative. How do you solve such a problem? Create your own shortcuts. See a repetitive tasks? Automate it. Boring task? Automate it.

So, how can you do this automation? Lots of creative approaches, say

- buy an automaton thing or get creative with something like [Zapier](https://zapier.com/) or [IFTTT](https://ifttt.com/) products
- ask coworker to see what they would do
- ask your boss and see what they say
- research and see what tools are available to you (at your level) or your boss
- open up a browser and the developer's console -> JavaScript to the rescue

OR you could simply

- learn & use VBA (that is already installed on your environment)

Problem solved!

If you take a step back, suppose you go back four years ago to 2014, then I am not sure if I would have even written this article. You have to remember that technology moves fast. But I can definitely assure you that `open up a browser and the developer's console -> JavaScript to the rescue` definitely would not have been up there as a solution.

JavaScript wasn't where it is now. If your only option was Internet Explorer then you definitely did not enjoy JavaScript. There was a lot of lapses (language features and browser support). I definitely never imagined seeing something like `async` in my browser's console. Heck, your development tools that are packed in your web browser weren't where they are now in October of 2018. I am not even talking about other significant improvements done over the years.

So, my take away was an interesting one. I can understand and appreciate the importance of being creative within software constraints a little bit more. I can open up my Excel 2013 and create a macro to do pretty much what I want it to do. It just works and I can be a little bit more productive. If I wanted to do something similar with Google Sheets hypothetically, I would probably have to sign up for a new service and transfer some of my data along the way. Thus, perpetuating the moving of your data throughout the Internet while leaving little crumbs along the way. Is it bad? Is it good? Are these the right questions? Depends on model and the simulation I suppose ;-)

But I am also glad to see impactful people asking important questions.

See you tomorrow.
