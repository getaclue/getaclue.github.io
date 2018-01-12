---
layout: post
title: "Ready to Submit"
categories:
- iOS
tags:
- software development
- software engineering
- productivity
- growth
- TestFlight
- resources
status: publish
type: post
published: true
meta: {}
---
Happy Friday 👋

It is so easy to let this writing to get out of hand even though I promised to write more regularly. I've been chugging along with a lot of things since last update.

*I am still have trouble understanding how to use TestFlight*. I have done quite a bit of work over the past few days and I wanted to release it to the beta testers. However, I am currently stuck in this state:

![Stuck on these TestFlights](https://d.pr/i/7jVbKS/Vve27WMfts+)

![TestFlight Stuck on Ready to Submit Screen](https://d.pr/i/Ade4Dd/XZMSnuzKCa+)

Basically I am stuck just like this person that wrote [TestFlight build on iTunes Connect stuck at 'Ready to Submit'](https://stackoverflow.com/q/44716499). I've contacted some fellow iOS developers and am now doing what they suggested.

What did I learn from them?
- every new application version gets a review that you need to go through (which is exactly what is happening now from what I understand). I like [semver](https://semver.org), so technically this would be a `1.0.2` version. It has been primarily bug fixes and UI changes.
- every new build, under a reviewed version, does not have to go through this process (apparently). So, this is what I am currently trying:

![Trying to make the app live](https://d.pr/i/8G17N9/9OFVGZcfuV+)

While, I am waiting for that to go through, I want to debug and figure out what is wrong with `1.0.2`.

**UPDATE**: After writing the original text, the solution did not work. Not sure what I am missing but here is what I've done:

![TestFlight process](https://d.pr/i/oztmDY/7rYtV1OYGc+)

Also, it also seems that information from bullet point #2 is funky. I changed the app back to `1.0.1` and changed build to `2` and, as you can see, the app is still in the "Ready for Submit" state.

I'm going to continue with this and, in mean time, I think I am just going to contact Apple Support.

------

PS. Yes, I did consult [View build status and metrics page](https://help.apple.com/itunes-connect/developer/#/dev78d0a8f87) and [app build statuses page](https://help.apple.com/itunes-connect/developer/#/dev3d6869aff).

I wish Apple would provide more information on this "Ready to Submit" state because this does not really help me at this point in the process 🤕 Why? Because by clicking on this link:

![Click on this link](https://d.pr/i/Dy4n8t/zHHV2KGmdt+)

Will bring me to:

![Ready to Submit definition from Apple](https://d.pr/i/i0YRH9/sAGc3S3smm+)

Which doesn't really answer how to submit 🤕

So, Daily Vibes is stuck somewhere here:

![Daily Vibes is stuck in one of these phases](https://d.pr/i/W9e1HV/LS8BkWOfsq+)

Cheers,
Alex
