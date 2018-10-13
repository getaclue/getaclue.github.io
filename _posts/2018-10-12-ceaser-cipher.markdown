---
layout: post
title: 'Ceaser cipher and other things'
categories:
  - software engineering
  - computer science
  - algorithms
tags:
  - software engineering
  - computer science
  - algorithms
status: publish
type: post
published: true
meta: {}
excerpt: 'Today, I was browing again in the textbook and for some reason I wanted to implement a simple Ceaser cipher.'
dateCreated: 2018-10-12 20:52:01
datePublished: 2018-10-12 20:52:01
dateModified: 2018-10-12 20:52:01
---

Today, I was browing again in the [textbook] and for some reason I wanted to implement a simple Ceaser cipher. In the process, I also re-found-out that Strings are immutable in java. I suppose it makes sense then when StringBuilder and the such are used. I also found the following two statements interesting:

> ... that characters are represented in Unicode by integer code points ...

> ... upper letters of the Latin alphabet are consecutive (for simplicity ...

and you know what? No one has ever connected these two ideas together like that or pointed it out. I've used these exact ideas before and never considered how fortunate that everything just works (= Why &mdash; _duh_ &mdash; `A` is obviously `65` and `B` is `66`.

Anywho, I wanted to implement this shifting algorithm and this is how far we got:

```java
import static java.lang.System.exit;

public class CeaserCypher {
    public static void main(String[] args) {
        String encryption = "DEFGHIJKLMNOPQRSTUVWXYZABC";
//        String decryption = "XYZABCDEFGHIJKLMNOPQRSTUVW";
        char[] encryptionCode = encryption.toCharArray();
//        char[] decryptionCode = decryption.toCharArray();

        String msg = "THE EAGLE IS IN PLAY; MEET AT JOE’S.";
        String result = transform(msg, encryptionCode);
        String expected = "WKH HDJOH LV LQ SODB; PHHW DW MRH’V.";

        System.out.println(transform(msg, encryptionCode));

        char[] resultChar = result.toCharArray();
        char[] expectedChar = expected.toCharArray();

        if (resultChar.length != expectedChar.length) {
            exit(0);
        }

        for (int index = 0; index < resultChar.length; index++) {
            int _resultChar = (int) resultChar[index];
            int _expectedChar = (int) expectedChar[index];

            if ((_resultChar ^ _expectedChar) != 0) {
                System.out.println("resultChar[index] : " + resultChar[index] + "\t should be : " + expectedChar[index]);
                exit(0);
            }
        }

        System.out.println("All good!");
    }

    public static String transform(String messadge, char[] key) {
        char[] message = messadge.toCharArray();

        for (int i = 0; i < message.length; i++) {
            if (Character.isUpperCase(message[i])) {
                int replaceWith = message[i] - 'A';
                message[i] = key[replaceWith];
            }
        }

        return new String(message);
    }
}
```

... and I wish I could take credit for this but alas. Followed along with the book and after much back and forth I ended up with pretty much exactly the same version as in the book. This is why, if you notice, there is a decoding key but I never even explored that. Was fun for a minute =)

_Side note_: I am not sure why, but I have a special place for character encoding. I think language construction (tables, lex, state machines, and so on...) and reading [The Absolute Minimum Every Software Developer Absolutely, Positively Must Know About Unicode and Character Sets (No Excuses!)] made me appreciate the idea that 65 is A. I like to revisit and re-read Joel from time to time.

  ... oh and probably the fact that I deal with such things day-to-day in my job also keeps the interest. You know... Canada... English and French ;-)

Oh and I finally configured and properly installed jenv, java11, and maven (& got it working with the other java installations). Should be much smoother now and I want to give heroku and java a try if I have a second this weekend.

## Links

  - A lot of these stemmed from this : `Warning: Cask 'java' is already installed.`
  - [brew undefined method `undent' #49716](https://github.com/Homebrew/homebrew-cask/issues/49716)
  - [ brew uninstall -> Error: mpfr@2: undefined method `undent' #4494 ](https://github.com/Homebrew/brew/issues/4494)
  - [Error: undefined method undent for String](https://github.com/Homebrew/homebrew-cask/issues/49716#issuecomment-410842187)
  - [Getting Started on Heroku with Java](https://devcenter.heroku.com/articles/getting-started-with-java#prepare-the-app)
  - [Basic HTML Meta Tags](https://gist.github.com/lancejpollard/1978404#basic-html-meta-tags)
  - [HTML Microdata](https://www.w3.org/TR/microdata/)
  - I had to look this up... _Again_ ... [How do I install OpenJDK Java 11 on Mac OSX allowing version switching?](https://stackoverflow.com/a/52524114)

that is it for now & I still have the pages for series and sequences open.

See you tomorrow.

[textbook]: https://www.amazon.ca/Data-Structures-Algorithms-Michael-Goodrich/dp/1118771338/
[The Absolute Minimum Every Software Developer Absolutely, Positively Must Know About Unicode and Character Sets (No Excuses!)]: https://www.joelonsoftware.com/2003/10/08/the-absolute-minimum-every-software-developer-absolutely-positively-must-know-about-unicode-and-character-sets-no-excuses/
