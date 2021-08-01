---
layout: post
title: 'Swift package manager and links'
categories:
  - software engineering
  - swift
  - swift package manager
  - spm
  - links
  - challenge
tags:
  - software engineering
  - swift
  - swift package manager
  - spm
  - links
  - challenge
status: publish
type: post
published: true
meta: {}
excerpt: 'Instead of spending time on programming challenging grinding for the interviews, I wanted to study swift package manager (SPM)'
datePublished: 2018-10-04 23:58:09
dateModified: 2018-10-05 00:37:17
---

Today I do not have a lot of time left for today. Instead of spending time grinding leetcode for the interviews, I wanted to study swift package manager (SPM). I am wanting to explore Swift and Java as my main [scripting/everything] language(s) moving forward. I've never tried SPM before and I've been using Swift for almost a year now (come November). So, I figured I should give it a shot and I even had an idea to implement.

## Problem Statement

Every time I write this piece of content, I have to name this file. I have a specific way I name these files: It goes `date-title.markdown` so it is easier for me to reference in the future. When the parser does its magic, it also creates a nice, seo friendly URL that I can share. It gives some context to readers that are reading it right now in October 2018. If you look at the link, you know that it is a fresh article without even reading it ;-) People like me like to read things like this. While it is fine to do it manually once in a while, it became too repetative to me. SPM to the rescue!

## Idea

Make a cli tool using SPM that can:

- take input from cli
- input like : `$ tool "Swift package manager october 2018"`
- and provide output to me so I can copy/paste while I am creating a new file

... oh and I get to write something today ;-)

## Solution

Here is my code:

```swift
// main.swift
import Foundation

private let arguments: [String] = CommandLine.arguments
//
guard arguments.count > 1, !arguments[1].isEmpty else {
    print("Need some kind of arguments fam")
    exit(EXIT_FAILURE)
}

//let input = "Will end-user applications ever be truly programmable?"
let input = arguments[1]
let inputLowerCased = input.lowercased()

//print(input)

func dashifyText(_ inputTxt:String?) -> String {
    guard let input = inputTxt, !input.isEmpty else {
        return ""
    }
    var result = ""

    for character in input {
        if (character == " ") {
            result = result + "-"
        } else if(character == "?") {
            result = result + ""
        } else {
            result = result + String(character)
        }
    }

    return result
}

let currDateTime = Date()
let dateFormatter = DateFormatter()

// For example, short would have the basics: "10/8/16, 10:52 PM"
dateFormatter.timeStyle = .short
dateFormatter.dateStyle = .short

let currDateTimeText = dateFormatter.string(from: currDateTime)

func dashifyDateTimeString(_ forString:String?) -> String {
    guard let dateTimeString = forString else {
        return ""
    }

    var resultant = ""

    for char in dateTimeString {
        switch char {
        case "/":
            resultant = resultant + "-"
        case ",":
            resultant = resultant + ""
        case ":":
            resultant = resultant + "-"
        case " ":
            resultant = resultant + "-"
        default:
            resultant = resultant + String(char)
        }
    }

    return resultant
}

let dashifiedText = dashifyText(inputLowerCased)
let dateTimeText = dashifyDateTimeString(currDateTimeText)

let finalString = "\(dateTimeText)-\(dashifiedText).markdown"

print(finalString)
print("LENGTH: \(finalString.count)")
```

and in the process, I've tried different things. The struggles were real.

```swift
        throw NSError(domain: "my error description", code: 42, userInfo: ["ui1":12, "ui2":"val2"] )
        let result = stringSet.map { (subString) -> String.SubSequence in
            let _moddedSubString = subString
            return subString
        }
        let filteredStr = dateTimeString.map { (element) -> String in
            switch element {
            case "/":
                return Character("-")
            case ",":
                return Character("")
            case ":":
                return Character("-")
            default:
                return element
            }
        }

        var result = ""

        for character in filteredStr {
            result = "\result"
        }

        let splitStr = dateTimeString.split(separator: " ")

        let filteredStr = splitStr.map { (element) -> String in
            return String(element)
        }

        let filteredStr = splitStr.filter { (element) -> Bool in
            switch element {
            case "/":
                return false
            case ",":
                return false
            case ":":
                return false
            default:
                return true
            }
        }

        let result = ""
```

Oh and if you actually ran this script then you may notice that it doesn't exactly create the same URL that you currently see. I had to remove the time from the file name. My actual naming convention is to use days for the files and within the files I have a `datePublished` and a `dateModified` timestamps.

If you ran this script it would make something like this as output:

```
// current output
2018-10-04-23-39-swift-package-manager-october-2018.markdown
// what we need
2018-10-04-swift-package-manager-october-2018.markdown
```

It is almost there. I will modify it for me and I will leave this up to you if you care as an exercise.

I'm trying something different here today with you. I am a bit more raw and transparent. I usually wouldn't have posted the code above. I definitely would have edited it before publishing it. But that is not the point of this exercise.

What I am attempting to do here is two things at once:

1. going off on a random idea and implementing it just because &mdash; a challenge;
2. playing with Swift and seeing where that takes me;

And to finish off, I will list the links that I have open for today in no particular order:

- [https://en.wikipedia.org/wiki/Automated_readability_index](https://en.wikipedia.org/wiki/Automated_readability_index) -> `4.71 * (Characters/String) + 0.5 * (String/[String]) - 21.43`
- [https://www.ralfebert.de/ios-examples/uikit/uicatalog-playground/UIButton/](https://www.ralfebert.de/ios-examples/uikit/uicatalog-playground/UIButton/) -> learning to prototype in Playgrounds
- [https://github.com/squimer/DatePickerDialog-iOS-Swift/pull/86/files](https://github.com/squimer/DatePickerDialog-iOS-Swift/pull/86/files) -> have issues in recent update to 12.1 of [dailyvibes](https://dailyvibes.ca)
- [https://github.com/squimer/DatePickerDialog-iOS-Swift/blob/f7b0e569f5f29d82837905dfb174b0e04c7b681d/Sources/DatePickerDialog.swift](https://github.com/squimer/DatePickerDialog-iOS-Swift/blob/f7b0e569f5f29d82837905dfb174b0e04c7b681d/Sources/DatePickerDialog.swift)
- [https://iosdevcenters.blogspot.com/2017/05/uipickerview-example-with-uitoolbar-in.html](https://iosdevcenters.blogspot.com/2017/05/uipickerview-example-with-uitoolbar-in.html)
- [https://developer.apple.com/documentation/uikit/uidatepicker](https://developer.apple.com/documentation/uikit/uidatepicker)
- [https://stackoverflow.com/questions/41361177/sizing-a-uipickerview-inside-a-uialertview](https://stackoverflow.com/questions/41361177/sizing-a-uipickerview-inside-a-uialertview)
- [http://www.streamingmedia.com/Articles/Editorial/Featured-Articles/RTMP-in-the-Age-of-HTTP-Video-Streaming-Dont-Count-it-Out-100]([http://www.streamingmedia.com/Articles/Editorial/Featured-Articles/RTMP-in-the-Age-of-HTTP-Video-Streaming-Dont-Count-it-Out-100)
- [http://www.streamingmedia.com/Articles/Editorial/Featured-Articles/RTMP-in-the-Age-of-HTTP-Video-Streaming-Dont-Count-it-Out-100909.aspx](http://www.streamingmedia.com/Articles/Editorial/Featured-Articles/RTMP-in-the-Age-of-HTTP-Video-Streaming-Dont-Count-it-Out-100909.aspx)
- <a href="http://www.streamingmedia.com/">http://www.streamingmedia.com/</a>
- <a href="https://www.quora.com/Which-is-better-for-live-streaming-RTMP-vs-HLS-vs-WebRTC">https://www.quora.com/Which-is-better-for-live-streaming-RTMP-vs-HLS-vs-WebRTC</a>
- <a href="https://en.wikipedia.org/wiki/WebRTC">https://en.wikipedia.org/wiki/WebRTC</a>
- <a href="https://github.com/webrtc/samples">https://github.com/webrtc/samples</a>
- <a href="https://github.com/vapor-community">https://github.com/vapor-community</a>
- <a href="https://stackoverflow.com/questions/1991380/what-does-the-operator-do-in-java">https://stackoverflow.com/questions/1991380/what-does-the-operator-do-in-java</a>
- <a href="https://support.apple.com/en-ca/HT208309 -> TIL: Apple uses React.js">https://support.apple.com/en-ca/HT208309 -> TIL: Apple uses React.js</a>
- <a href="https://news.ycombinator.com/item?id=18137740">https://news.ycombinator.com/item?id=18137740</a>
- <a href="https://www.kalzumeus.com/2015/05/01/talking-about-money/#consulting-rates">https://www.kalzumeus.com/2015/05/01/talking-about-money/#consulting-rates</a>
- <a href="https://stackoverflow.com/questions/2884068/what-is-the-difference-between-a-map-and-a-dictionary">https://stackoverflow.com/questions/2884068/what-is-the-difference-between-a-map-and-a-dictionary</a>
- <a href="https://en.wikipedia.org/wiki/Map_%28higher-order_function%29">https://en.wikipedia.org/wiki/Map\_%28higher-order_function%29</a>
- <a href="https://www.canada.ca/en/public-service-commission/jobs/services/gc-jobs.html">https://www.canada.ca/en/public-service-commission/jobs/services/gc-jobs.html</a>
- <a href="https://www.enekoalonso.com/articles/creating-command-line-tools-with-swift-package-manager">https://www.enekoalonso.com/articles/creating-command-line-tools-with-swift-package-manager</a>
- <a href="https://www.enekoalonso.com/articles/parsing-command-line-arguments-with-swift-package-manager-argument-parser">https://www.enekoalonso.com/articles/parsing-command-line-arguments-with-swift-package-manager-argument-parser</a>
- <a href="https://www.enekoalonso.com/articles/handling-commands-with-swift-package-manager">https://www.enekoalonso.com/articles/handling-commands-with-swift-package-manager</a>
- <a href="https://www.swiftbysundell.com/posts/building-a-command-line-tool-using-the-swift-package-manager">https://www.swiftbysundell.com/posts/building-a-command-line-tool-using-the-swift-package-manager</a>
- <a href="https://stackoverflow.com/questions/31443645/simplest-way-to-throw-an-error-exception-with-a-custom-message-in-swift-2">https://stackoverflow.com/questions/31443645/simplest-way-to-throw-an-error-exception-with-a-custom-message-in-swift-2</a>
- <a href="https://stackoverflow.com/questions/24070450/how-to-get-the-current-time-as-datetime">https://stackoverflow.com/questions/24070450/how-to-get-the-current-time-as-datetime</a>
- <a href="http://goshdarnclosuresyntax.com/">http://goshdarnclosuresyntax.com/</a>
- <a href="https://docs.swift.org/swift-book/LanguageGuide/Closures.html">https://docs.swift.org/swift-book/LanguageGuide/Closures.html</a>
- <a href="https://learnappmaking.com/closures-swift-how-to/">https://learnappmaking.com/closures-swift-how-to/</a>
- <a href="https://developer.apple.com/documentation/swift/swift_standard_library">https://developer.apple.com/documentation/swift/swift_standard_library</a>
- <a href="https://stackoverflow.com/questions/43261580/how-can-i-convert-a-single-character-type-to-uppercase">https://stackoverflow.com/questions/43261580/how-can-i-convert-a-single-character-type-to-uppercase</a>
- <a href="https://stackoverflow.com/questions/28503449/swift-replace-substring-regex">https://stackoverflow.com/questions/28503449/swift-replace-substring-regex</a>
- <a href="https://docs.swift.org/swift-book/LanguageGuide/StringsAndCharacters.html#">https://docs.swift.org/swift-book/LanguageGuide/StringsAndCharacters.html#</a>
- <a href="https://medium.com/@johnsundell/building-a-command-line-tool-using-the-swift-package-manager-3dd96ce360b1">https://medium.com/@johnsundell/building-a-command-line-tool-using-the-swift-package-manager-3dd96ce360b1</a>
- [https://github.com/adam-p/markdown-here/wiki/Markdown-Cheatsheet](https://github.com/adam-p/markdown-here/wiki/Markdown-Cheatsheet)
- [https://timingapp.com/changes#2018_3](https://timingapp.com/changes#2018_3)
- [https://www.mediaatelier.com/GrandTotal5/?ref=timing](https://www.mediaatelier.com/GrandTotal5/?ref=timing)
- [https://github.com/ltebean/Live](https://github.com/ltebean/Live)
- [https://github.com/kishikawakatsumi/KeychainAccess](https://github.com/kishikawakatsumi/KeychainAccess)
- [https://github.com/neoneye/SwiftyFORM](https://github.com/neoneye/SwiftyFORM)
- [https://github.com/ortuman/SwiftForms](https://github.com/ortuman/SwiftForms)
- [https://github.com/ra1028/Former](https://github.com/ra1028/Former)
- [https://github.com/xmartlabs/Eureka](https://github.com/xmartlabs/Eureka)
- [https://github.com/matteocrippa/awesome-swift#form](https://github.com/matteocrippa/awesome-swift#form)
- [https://www.appcoda.com/vision-framework-introduction](https://www.appcoda.com/vision-framework-introduction)
- [https://www.toronto.ca/business-economy/business-start-ups/success-stories-newsletter/small-business-month/](https://www.toronto.ca/business-economy/business-start-ups/success-stories-newsletter/small-business-month/)
- [https://developer.apple.com/documentation/foundation/url_loading_system/downloading_files_in_the_background](https://developer.apple.com/documentation/foundation/url_loading_system/downloading_files_in_the_background)
- [https://developer.apple.com/documentation/foundation/urlsessiondatatask](https://developer.apple.com/documentation/foundation/urlsessiondatatask)

I **had** all of these in tabs because each one weighted individually is just as important as the previous one ;-)

See you tomorrow.

PS: Just so we are totally transparent, it took me until `2018-10-05 01:45:36` ... I'd explain why but
