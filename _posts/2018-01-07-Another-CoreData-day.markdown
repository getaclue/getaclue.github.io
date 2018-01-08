---
layout: post
title: "Another CoreData Day"
categories:
- iOS
tags:
- software development
- software engineering
- productivity
- growth
- resources
status: publish
type: post
published: true
meta: {}
---
So, today, I decided to implement the Sharing extension. Oh boy, did I not expect to lose all of the data but it was necessary. It turns out that if you want to, at a time in the future, to add things to your app, well then you may be in for some effort.

The best resource, hands down was this = [Making a Share Extension that accepts text and URLs in combination with CoreData Swift 3](https://medium.com/@ales.musto/making-a-share-extension-that-accepts-text-and-urls-in-combination-with-coredata-swift-3-a0139c0f9800). If you don't want to or don't have time to learn about Core Data then you can just jump to that website. Follow it. And it will just work.

![Screenshot of the resource I talked about](https://cdn-pro.dprcdn.net/files/acc_603419/f6uxtZ)

This way, you can add those things in the future. So just plan for it.

Also, noticed that some tutorials are suggesting to ship the app with things like subscription services and such to be turned on. Just turned on and not active. This way you can add it whenever you want it but you went through review already. Or maybe you just don't have the time and want to follow good practices. That's fine too =)

So, I also used the following resources before I found the one above. Here they are:
- [Share](https://developer.apple.com/library/content/documentation/General/Conceptual/ExtensibilityPG/Share.html)
- [quickblox-ios-sdk](https://github.com/QuickBlox/quickblox-ios-sdk/tree/master/sample-videochat-webrtc/sample-videochat-webrtc/ViewControllers/SharingViewController)
- [http://awesomeios.com](http://awesomeios.com)
- [App Extension Keys](https://developer.apple.com/library/content/documentation/General/Reference/InfoPlistKeyReference/Articles/AppExtensionKeys.html#//apple_ref/doc/uid/TP40014212-SW2)
- [completeRequest(returningItems:completionHandler:)](https://developer.apple.com/documentation/foundation/nsextensioncontext/1411301-completerequest)
- [NSExtensionContext](https://developer.apple.com/documentation/foundation/nsextensioncontext)
- [Enabling App Sandbox](https://developer.apple.com/library/content/documentation/Miscellaneous/Reference/EntitlementKeyReference/Chapters/EnablingAppSandbox.html#//apple_ref/doc/uid/TP40011195-CH4-SW19)
- [Adding Capabilities](https://developer.apple.com/library/content/documentation/IDEs/Conceptual/AppDistributionGuide/AddingCapabilities/AddingCapabilities.html)
- [this ANSWER was helpful for - How to access CoreData model in today extension (iOS)](https://stackoverflow.com/a/25408472)
- [ShareViewController.m](https://github.com/atomicbird/iOS-Extension-Demo/blob/master/Share%20to%20Note/ShareViewController.m)
- [share coredata between share and app](https://www.google.ca/search?q=share+coredata+between+share+and+app&client=safari&rls=en&dcr=0&source=lnt&tbs=qdr:y&sa=X&ved=0ahUKEwjuuv3cvMbYAhWo44MKHTrMAKQQpwUIIQ&biw=1240&bih=716)
- [Share CoreData between App and Share Extension using Framework](http://www.oodlestechnologies.com/blogs/Share-CoreData-between-App-and-Share-Extension-using-Framework)
- [CoreDataStorage.swift](https://github.com/maximbilan/iOS-Shared-CoreData-Storage-for-App-Groups/blob/master/TutorialAppGroup/Shared/CoreDataStorage.swift)
- [Initializing the Core Data Stack](https://developer.apple.com/library/content/documentation/Cocoa/Conceptual/CoreData/InitializingtheCoreDataStack.html)
- [InitialVC.swift](https://github.com/almusto/CustomNotes/blob/95887d7440365a0f7990f0a36fb001c725c74118/CustomNotes/InitialVC.swift)
- [kUTTypeURL](https://developer.apple.com/documentation/coreservices/kuttypeurl)

Anyways, I am going to spend some time looking at this:

![Screenshot of homepage for Apple's App Extension Keys Dictionary Thing](https://cdn-pro.dprcdn.net/files/acc_603419/w1h7OB)

Hopefully someone can find it useful when they are doing this process as well. Maybe I will record it because it is a bit tricky. We'll see.

Alex
