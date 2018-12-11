---
layout: post
title: 'How to quickly setup custom fastmail email account for your business domain'
categories:
  - software engineering
  - email
  - fastmail
  - business
tags:
  - software engineering
  - email
  - fastmail
  - business
status: publish
type: post
published: true
meta: {}
image: 'https://cdn-std.dprcdn.net/files/acc_603419/0hcE7y'
excerpt: 'How to quickly setup professional email for your business domain using fastmail.'
dateCreated: 2018-12-10 16:47:57
datePublished: 2018-12-10 19:16:00
dateModified: 2018-12-10 19:16:00
---

![Title of the article](https://cdn-std.dprcdn.net/files/acc_603419/0hcE7y)

Last night, I activated the first business-y email account for our [cspray.ca] project using [Fastmail] email service. What I mean by that is &mdash; I wanted to send and receive email using something like: `info@cspray.ca`

It is super exciting for me because it definitely gives [cspray.ca] a new level of professionalism. Plus it looks super cool and official. Now that I've done it, I want to document the tl;dr of the process for myself and share with you along the way. I wish I would have done this sooner because it is really **EASY** to do.

> I've had email catchers before but I've never had the opportunity to send emails from my own domain. Plus, I've been looking at trying out new tools for my email anyway. I've been with google's email service since its inception. All of the things aligned.

So here is the tl;dr of the requirements if you want to follow along.

> NOTE: I am using affiliate links for [digitalocean] and [linode]. If you were going to open up a new VPS anyway... why not send a few referral bucks myway? Every penny helps my dear friend <3

I am using:

- namecheap for my domain ( but I do all of the DNS stuff via [digitalocean] )
- [digitalocean] \* for my VPS that also hosts my [cspray.ca] domain
- [digitalocean] \* control panel for domains setup
- [fastmail] for the email service

> - NOTE: I am planning to move away from [digitalocean]. Testing [linode] at the moment. Looks promising. Open to suggestions =)

At the present, I manage my domain from my VPS panel located on [digitalocean]. All of my information is contained in one place.

**And the best part? You have a 30 day trial to see if it works for you**

NOTE: I found this [blog post](https://jamesonzimmer.com/namecheap-fastmail-mx-custom-domain/) to be super useful!

## tl;dr &mdash; the final version will be :

![image of the finished result as seen from the digitalocean dashboard](/assets/images/2018-12-10/cspray-digitalocean-fastmail-tldr.png){:style="max-width:100%;"}

### Add 3 CNAME Records

| Type  |          Hostname           |                       Value                        | TTL (seconds) |
| :---: | :-------------------------: | :------------------------------------------------: | ------------- |
| CNAME | fm3.\_domainkey.`cspray.ca` | _is an alias of_ fm3.`cspray.ca`.dkim.fmhosted.com | 3600          |
| CNAME | fm2.\_domainkey.`cspray.ca` | _is an alias of_ fm2.`cspray.ca`.dkim.fmhosted.com | 3600          |
| CNAME | fm1.\_domainkey.`cspray.ca` | _is an alias of_ fm1.`cspray.ca`.dkim.fmhosted.com | 3600          |

### Add 2 MX Records

| Type |  Hostname   |                      Value                      | Priority | TTL (seconds) |
| :--: | :---------: | :---------------------------------------------: | -------- | ------------- |
|  MX  | `cspray.ca` | _mail handled by_ in2-smtp.messagingengine.com. | 20       | 3600          |
|  MX  | `cspray.ca` | _mail handled by_ in2-smtp.messagingengine.com. | 10       | 3600          |

### Add 1 TXT Record

| Type |  Hostname   |                         Value                         | TTL (seconds) |
| :--: | :---------: | :---------------------------------------------------: | ------------- |
| TXT  | `cspray.ca` | _returns_ v=spf1 include:spf.messagingengine.com ?all | 3600          |

### After 3 CNAME, 2 MX, and 1 TXT entries ...

go check on your [fastmail] account setting dashboard under domains. Everything should just work. If not, there is a button to try again or refresh or something along those lines to start the process again in case there was an error.

### Note: Mac native Mail.app installation

- follow the automatic installation link that you get during the process of creating a brand new application password
- it works as of `2018-12-10 19:13:12` on Mojave `10.14.4`

### Note: iOS 12 installation

I tried to follow [fastmail]'s tutorial for adding an account so that I can receive and send my email using the [native] Apple's Mail.app. More specifically, I got stuck on the following screen:

![image of the place where I got stuck in fastmail's automatic setup for ios 12](/assets/images/2018-12-10/iso12_iphone_sevenplus_fastmail_error.png){:style="max-width:100%;"}

The work around is simple: just enter it manually. Check out this [example].

- Incoming Host Name: `imap.fastmail.com`
- Username: your full FastMail username, including the domain.
- Password: your iPhone app password (What's an app password?)

- Outgoing Host Name: `smtp.fastmail.com`
- Username: your full FastMail username, including the domain.
- Password: your iPhone app password (What's an app password?)

## References

- you will need to create [app password]s a bunch... so read about it...
- setup [2-fa] security for your business account. ps: don't use the cellphone/text option... use something like [FreeOTP]

[fastmail]: https://www.fastmail.com
[cspray.ca]: https://cspray.ca
[digitalocean]: https://m.do.co/c/580b8ad4e397
[linode]: https://www.linode.com/?r=eb8fbe18fcae4bb7ac3cf4b65d578ea40d1da5f2
[app password]: https://www.fastmail.com/help/clients/apppassword.html?u=1f694097
[2-fa]: https://www.fastmail.com/help/account/2fa.html?u=1f694097
[freeotp]: https://freeotp.github.io/
[native]: https://www.fastmail.com/help/clients/iphone.html?u=1f694097
[example]: https://www.fastmail.com/help/clients/iphone-manual.html?u=1f694097
