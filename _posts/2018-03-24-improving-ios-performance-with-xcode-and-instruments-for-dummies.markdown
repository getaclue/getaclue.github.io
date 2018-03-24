---
layout: post
title: "Improving iOS performance with Xcode and Instruments for dummies"
categories:
- iOS
- swift
- Software Development
- iOS App Development
tags:
- software development
- software engineering
- tutorial
status: publish
type: post
published: true
meta: {}
image: "https://cdn-pro.dprcdn.net/files/acc_603419/eVxYjd"
excerpt: "Don't know where to start? Try this"
datePublished: 2018-03-24 16:54:31
dateModified: 2018-03-24 16:54:36
---

Hi friend, is your app running a bit slow? Are you, perhaps, unsure what to do about it? Where do you start to investigate? Perhaps, like me, you started searching 🕵️‍♂️ in your code for something evident? (Only to realize that you are going down a never ending rabbit hole?)

Well, stress not my friend because Xcode got you covered ✅ and it will help you find your issues (or put you on the right track at least).

This is a second article that I am writing about an Integrated Development Environment (IDE). The more that I use Xcode, the more I like it 😎 Xcode is really, really awesome. Just give it a try and use it.

## Side note: it _only_ took me 182 hours to get to the Instruments panel.

I'm actually really surprised at the amount of tooling that is given to you in this wonderful IDE. My software engineering training gave me my introduction to IDEs via [Eclipse](https://www.eclipse.org/ide/) and [NetBeans](https://netbeans.org/). I've spent years using those tools (and don't get me wrong, they are powerful). But to be completely honest, to this day I will pick anything else but these two. They are ugly, clunky, and not intuitive 🌶

## Why did I type that paragraph above?

Because if you have an aversion to IDEs and think that Xcode looks just like the other IDEs, then I am here to tell you that it really is not. Xcode *IS* a pleasure to use and I use it every day. (_PS_: If you are getting angry while reading this and saying **!?Xcode sucks!?** Don't get so upset. I will admit, it is not perfect.)

## Instruments

It is this powerful thingy, built on top of [DTrace](https://en.wikipedia.org/wiki/DTrace), that comes with Xcode. No need to install extra software. Just download Xcode once and you have everything you need. Don't have internet connection or you don't want to be connected? No worries, you can still DO your work.

Oh yeah... I used [this wonderful youtube video](https://www.youtube.com/watch?v=s_SOYcYBnGU) to get an introduction to Instruments. Apple ofcourse has their own documentation which you can get [here](https://developer.apple.com/library/content/documentation/DeveloperTools/Conceptual/InstrumentsUserGuide/index.html).

The following text is basically my brief overview of Instruments.

When you open Instruments, it looks like this:

![Xcode Instruments](https://d.pr/i/c280xV+)

You can open up Instruments like this:

![Opening Xcode instruments open](https://d.pr/i/QiJqRR+)

Or like this:
![Opening Xcode Instruments](https://d.pr/i/PtBZgx+)

(I didn't want to leave you waiting while my slow computer takes the time to open up... but you get the idea...)

What you do next is kind of interesting. All of the icons that you see above represent the different kinds of tool that you can run on your application. (I think of this screen as a collection of apps for your app). Hopefully you will understand why I say *on* your application.

Out of all of the options available, I've only gotten familiar with Activity Monitor, Allocations, Leaks, and Time Profiler. Oh yes, not only are these tools wonderful but the naming conventions are intuitive and grouped by colour. Amazing.

Activity Monitor and Time Profiler are in blue. These blue thingys are used to monitor CPU stuffs.

Allocations and Leaks are in orange. These orange thingys are used to monitor memory stuff. (Guess what this other orange Zombies thingy looks at? Did you guess RAM stuffs? Cool right!!!)

You might be wondering to yourself... all of these thingsys are cool sounding, so what? What do I do with them? Well the cool thing about these thingys is that you can just JUMP in and you will figure things out as you go. It is that easy.

I suggest you play with the other tools available but I am going to focus on the Time Profiler for the rest of the article. At this point in the app, I found it to be the most useful for me.

Time Profiler - I've been using this for...profiling... time? 🤷‍♂️ Basically, I open it up and it looks like this:

![Time Profiler in Xcode](https://d.pr/i/yRulLi+)

You might be asking, now what? How about we hit that big Red Record button ⏺ ? Yup, and it will look like this:

![Time Profiler after hitting record button in Xcode](https://d.pr/i/zElUrI+)

## Now what? �

Now you use your app! What Instruments, or should I say Time Profiler, does in the background is it samples your environment... Time Profiler *records* what it sees your app is doing during a specific time interval. Makes sense?

And if you have ever used any time of software that has a timeline, then you are already familiar with the concept.

So this is a *snapshot* of how your app behaves, or its environment:
![Time Profiler Sample in Xcode](https://d.pr/i/GPnnjB+)

and it gets recorded over time:
![Time Profiler time line in Xcode](https://d.pr/i/cEMzNa+)

until you press the stop button:
![Time Profiler from start to stop in Xcode](https://d.pr/i/A5InKH+)

## Now what? �
Now you get to play a detective 🕵️‍♂️ ... for real... how cool is that?

Since we are working with a Timing Profiler, we are interesting in timing. You can open up the tree that the tool made for you and go exploring. See which areas or which methods take a long time. Simply click and dive in:
![Start exploring Time Profiler in Xcode](https://d.pr/i/KohUC7+)

## Don't know where to start? Try this:

1. Click record
2. Play with you app as regular user (try various uses case)
3. Stop the recording
4. And then... you can filter specific time intervals!! How cool is that?!?!?!

Here is an example of me recording as I create a new to-do in [dailyvibes](https://dailyvibes.ca/) and then filtering various time intervals.
You can really isolate the various time intervals, like so:

![Example of using Time Profiler in Xcode](https://d.pr/i/MDyrNo+)

As you can see, to filter you simple Click and Drag on the timeline... just like any other application with a timeline. It is just that simple. And, when you filter, if you notice, the tree changes. Thus you can really get into the nitty gritty details and find out your problems 🚧.

Oh, and... and... and you can SAVE this sampling and come back to it later:
![Saving Time Profiler in Xcode](https://d.pr/i/QP4X3Z+)

Here is an actual example of me diving deep into the tree. When you find something juicy, like this:
![Example of Time Profiler in Xcode](https://d.pr/i/G4H042+)

You can... double click on the method, and it will show you EXACTLY which lines of code are troubling:
![Double clicking on a method in Time Profiler in Xcode](https://d.pr/i/IOa6qa+)

## Conclusion
There you have it friends. I'd like you to take away three things from this:

1) Xcode is pretty awesome
2) Be a 🕵️‍♂️ and give Instruments a try
3) Be careful of premature optimization

If you liked this, please let me know. I like hearing feedback so I can improve.
You can find me on [twitters](https://twitter.com/getaclue_1).

Until next time,
Alex

PS: I hope I did not offend you with the *for dummies tagline. I love technical documents but I feel like they need a bit of flavour sometimes. I simply want this technical mumbo-jumbo to feel relatable and friendly.
