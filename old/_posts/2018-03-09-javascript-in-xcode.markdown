---
layout: post
title: "How to call Javascript debugger from Xcode? Can you?"
categories:
  - iOS
  - swift
  - javascript
tags:
  - software development
  - software engineering
  - productivity
  - growth
  - tutorial
status: publish
type: post
published: true
meta: {}
image: "https://cdn-pro.dprcdn.net/files/acc_603419/2PWtsR"
excerpt: "In a previous release of ⭐️ Daily Vibes for iOS, 1.3.0, I added a natural language date parser."
datePublished: 2018-03-09 15:00:00
dateModified: 2018-03-09 15:35:18
redirect_from:
  - /blog/how-to-call-js-debugger-from-xcode
---

![How to call JS debugger from Xcode?](https://cdn-pro.dprcdn.net/files/acc_603419/X7qI5E)

## Hi friends,

![Daily Vibes Apple Store Screenshots](https://cdn-pro.dprcdn.net/files/acc_603419/7zk3ZR)

In a previous release of ⭐️ [Daily Vibes](https://geo.itunes.apple.com/app/id1332324033) 📲, version 1.3.0, I added a natural language date parser. What this basically means that if you enter

> appointment with my accountant tomorrow at 3 pm

⭐️ [Daily Vibes](https://geo.itunes.apple.com/app/id1332324033) 📲 will understand what you mean. This is all possible because of the wonderful work done on [SwiftyChrono](https://github.com/quire-io/SwiftyChrono). However, I shipped 🚢 it with some pending things that are needed to be taken care of with the library. Figured I would fix it later down the road since it seems to work as expected 😅

This week, I've decided to tackle the issues and help updating [SwiftyChrono](https://github.com/quire-io/SwiftyChrono).

![Github SwiftyChrono PR](https://cdn-pro.dprcdn.net/files/acc_603419/WQSc8k)

Internally, SwiftyChrono uses [javascript](https://github.com/quire-io/SwiftyChrono/tree/master/Tests/SwiftyChronoTests/JS/en) for testing. After the upgrades, I wanted to make sure that the tests work.

## JavaScript [Core]

So, I began 👀 looking for issues ⛈

One of the issues was narrowed down to be in [this area of the code](https://github.com/quire-io/SwiftyChrono/blob/55f7a642916c24637c8c22d656884c0681b3aa48/Tests/SwiftyChronoTests/JS/en/test_en.js#L1):

![Problem code image](https://cdn-pro.dprcdn.net/files/acc_603419/9mAyJg)

If you notice, it is just javascript that is being executed. I know javascript so it should be no problem to debug, right?

Well, for starters, how do you debug javascript that is executed from Xcode? How does Xcode run javascript? This leads you down the rabbit hole to find that Apple has nicely introduced [JavaScript Core](https://developer.apple.com/documentation/javascriptcore) internally ([more info](http://nshipster.com/javascriptcore/)).

## So...the tl;dr

It is very easy. Apple has built a nice interaction between Xcode and Safari.

The credit for the following steps to this answer goes to [Rakesh Yembaram](https://stackoverflow.com/a/43916256) on stackoverflow.com

### 1. Open Safari and Enable Developer Menu

- Open Safari
- Enable the Develop menu by going to:
  - "Preferences"
  - "Advanced"
  - "Show Develop menu in menu bar"

![Show Develop Menu in Menu Bar of Safari](https://cdn-pro.dprcdn.net/files/acc_603419/mnewCo)

### 2. Enable JSContext

- Go to Develop menu
  ![Develop menu in Safari](https://cdn-pro.dprcdn.net/files/acc_603419/fGg3fS)

- Find your simulator or computer agent and enable
  - Automatically show web inspector for JSContexts
  - Automatically pause connecting to JSContexts

![Enable JSContext in Safari](https://cdn-pro.dprcdn.net/files/acc_603419/EPq8qe)

[Download Daily Vibes](https://geo.itunes.apple.com/app/id1332324033?mt=8&at=1010lK7Y)

### 3. Re-run project in Xcode

For my example, I'm just going to simply add `debugger` keyword to the Javascript file

![added debugger to source code](https://cdn-pro.dprcdn.net/files/acc_603419/d5zfNe)

and then I press run on the tests
![press run on Xcode test images](https://cdn-pro.dprcdn.net/files/acc_603419/lpBPFQ)

and I wait until Safari does its the magic:

![safari doing magic](https://cdn-pro.dprcdn.net/files/acc_603419/tLQhEf)

There you go, hopefully now you can see that it is not that difficult to debug any javascript that your app might contain.

Thank you for reading and until next time my friend.

⭐️ [Download Daily Vibes](https://geo.itunes.apple.com/app/id1332324033?mt=8&at=1010lK7Y) 🚀

Sincerely,
Alex
