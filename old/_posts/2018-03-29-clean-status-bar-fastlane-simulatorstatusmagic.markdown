---
layout: post
title: "How to make perfect iOS screenshots with a clean status bar in 2018"
categories:
  - iOS
  - swift
  - Software Development
  - iOS App Development
  - Mobile App Development
  - fastlane.tools
  - SimulatorStatusMagic
tags:
  - software development
  - software engineering
  - tutorial
status: publish
type: post
published: true
meta: {}
image: "https://cdn-pro.dprcdn.net/files/acc_603419/oV4Piy"
excerpt: "Using fastlane.tools and SimulatorStatusMagic"
datePublished: 2018-03-30 09:15:27
dateModified: 2018-03-30 09:45:29
redirect_from:
  - /blog/how-to-make-perfect-ios-screenshots-with-a-clean-status-bar-in-2018-using-fastlanetools-and-simulatorstatusmagic
---

![Image for the post](https://cdn-pro.dprcdn.net/files/acc_603419/oV4Piy)

Hi friends,

## Before we begin

Before I begin, I am assuming you are already running your UITests using [fastlane.tools](https://fastlane.tools/). If not, I would suggest that you get yourself familiarized [here](https://docs.fastlane.tools/getting-started/ios/screenshots/). It saves you lots of time and it is especially indispensable for solo developers like myself.

## What is this article about?

This article is about improving your iOS marketing material: the screenshots.

So, we will go from this:

![Starting point](https://d.pr/i/FuVdCb+)

to this:

![Goal of this article](https://d.pr/i/7vkqhx+)

We will be using [fastlane.tools](https://fastlane.tools/) in combination with [SimulatorStatusMagic](https://github.com/shinydevelopment/SimulatorStatusMagic) library. SimulatorStatusMagic is used to create the perfect status bar:

- 9:41 AM is displayed for the time
- The battery is full and shows 100%
- On iPhone: The carrier text is removed, 5 bars of cellular signal and full WiFi bars are displayed.
- On iPad: The carrier text is set to "iPad" and full WiFi bars are displayed.

The text above is taken verbatim from the library's [description](https://github.com/shinydevelopment/SimulatorStatusMagic).

## Why would you want to do that?

Well, such attention to detail adds extra value to your product by making your marketing material that much better than your competition. If you take a second to scan the Apple App store, the top apps provide some level of consistency in their marketing material. It follows, you should work towards achieving a similar level of consistency because it is not really not that hard. And if you set this up once, it will work.

So, I wanted to the improve the screenshots that I use to market [Daily Vibes](https://dailyvibes.ca/) in my next update.

## What did I try?

Installed SimulatorStatusMagic using cocoapods by adding the following line to my Podfile, like this:

```ruby
pod 'SimulatorStatusMagic', :configurations => ['Debug']
```

Next, I found the following [two](https://funkenstrahlen.de/blog/2016/04/21/perfekte-ios-screenshots/) [articles](http://blog.scottlogic.com/2015/02/25/Using-Snapshot-with-Simulator-Status-Magic-to-generate-perfect-iOS-screenshots.html) and they gave me good starting points. They were perfect for me because I wanted to use flags in my code like this:

![How I wanted to import the library](https://d.pr/i/CVcNIW+)

This would allow me to only import SimulatorStatusMagic during fastlane.tools run.

And, I also envisioned using this one flag throughout other areas of the code.

![What I envisioned](https://d.pr/i/M0QqzC+)

So... putting it all together, I wanted something like this:

![How I wanted fastlane.tools and SimulatorStatusMagic to work](https://d.pr/i/B53hS7+)

> But, I could not get it to run exactly like that 😭

I really wanted to get this to work. However, as a result of [these](https://github.com/fastlane/fastlane/search?q=custom_args&type=Issues&utf8=%E2%9C%93) [issues](https://github.com/fastlane/fastlane/issues/4717) you need some tweaking in 2018.

## So what is my curent solution?

1. `import SimulatorStatusMagic`
2. leverage snapshot's [launch arguments](https://docs.fastlane.tools/getting-started/ios/screenshots/#advanced-snapshot) - `FASTLANE_SNAPSHOT` is set to true
3. call in code as you wanted

```rb
if NSUserDefaults.standardUserDefaults().boolForKey("FASTLANE_SNAPSHOT") {
...
  SDStatusBarManager.sharedInstance().enableOverrides()
  setupScreenshotData()
...
}
```

And the code above works ... but I will be first to admit that it is not the perfect solution.

As it is currently written, you will need to play the commenting game:

- comment out import SimulatorStatusMagic and
- comment out SDStatusBarManager.sharedInstance().enableOverrides()

during regular development and do the reverse during fastlane.tools run.

So... during regular development:

![What you have to do during regular development](https://d.pr/i/ptOZ9a+)

and ... during fastlane.tools run:

![What you have to do during fastlane.tools run](https://d.pr/i/DCDj9W+)

As I am familiar with Ruby and Swift, and can get by with Objective-C, I tried to make it work how I wanted and find the source of confusion. I did look at the [xcodebuild arguments](https://developer.apple.com/legacy/library/documentation/Darwin/Reference/ManPages/man1/xcodebuild.1.html) and scanned fastlane.tools source [code up to here](https://github.com/fastlane/fastlane/blob/master/snapshot/lib/snapshot/test_command_generator_base.rb#L34). But, since there is only so much time in the day and I work on this during my free time - I did not narrow down the problem.

So if you have a different solution that allows me to run the code how I wanted, please reach out to me via [twitter](https://twitter.com/getaclue_1). I will gladly adjust this article to incorporate those changes.

Otherwise, I hope that you enjoy this working solution. I was puzzled during my research in 2018 and I did not see a solution so hopefully this helps someone in upping their screenshot game.

Thanks for reading,

Alex

Note: This article was also published on [LinkedIn](https://www.linkedin.com/pulse/how-make-perfect-ios-screenshots-clean-status-bar-2018-alex-kluew/)
