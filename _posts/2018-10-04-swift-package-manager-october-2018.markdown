---
layout: post
title: 'Swift package manager and links'
categories:
  - software engineering
  - swift
  - swift package manager
  - spm
  - links
tags:
  - software engineering
  - swift
  - swift package manager
  - spm
  - links
status: publish
type: post
published: true
meta: {}
excerpt: 'Instead of spending time on programming challenging grinding for the interviews, I wanted to study swift package manager (SPM)'
datePublished: 2018-10-04 23:58:09
dateModified: 2018-10-04 23:58:09
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

and in the process, I've tried different attempts that I've attempted. The struggles were real.

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

See you tomorrow.
