---
author: Alex Kluew
layout: post
title: Using wget in CentOS 6.5
meta_keywords: wget, CentOS 6.5, CentOS, beginners, Using wget
meta_description: wget, CentOS 6.5, CentOS, beginners, Using wget
---
# Using wget in CentOS 6.5 #


First of all, everything that you need is here:

```
https://www.gnu.org/software/wget/
```

Now, we need to have somewhere to save the *stuff* that you would like to download. To do that, simply make a new place `mkdir /some/path` and then go there by using `cd /some/path`. Good. Now, you have somewhere to store your stuff.

My goal is to download an entire website. That is, I want some website to be available for my offline usage. Everything.

```
wget --limit-rate=50k --no-clobber --convert-links --wait=5 --random-wait
-r -p -E -e robots=off -U Mozilla http://www.foo.bar
```

Now, why did I use the settings that I used?

* used `--limit-rate=50k` to limit the download speed of each file to 50KB/s
* used `-- no-clobber` so that I do not overwrite existing files. (multiple savings of the same file is prevented)
* used `--convert-links` to ensure that all of the downloaded links point locally and do not point to any external places
* used `--wait=5` to wait 5 seconds between each new request for a new file
* used `--random-wait` to try and reduce the load on the server. It **needs** --wait attribute
* used `-r` for recursive downloading of the entire website
* used `-p` to download all of the necessary files to display the html page properly
* used `-E` for appending `.html` to files that have otherwise other extensions such as `something.else?suchas25` to `something.else?suchas25.html`
* used `-e robots=off` to by pass possible robot exclusion
* used `-U Mozilla` to identify as a Mozilla client and not `Wget/VERSION` client

---
# Ideas developed by using #


```
http://www.thegeekstuff.com/2009/09/
          the-ultimate-wget-download-guide-with-15-awesome-examples/
http://www.kossboss.com/linux---wget-full-website
http://www.rationallyparanoid.com/articles/wget.html
```

(Side note, system information: `uname-a`)

```
Linux localhost.localdomain 2.6.32-431.11.2.el6.x86_64
#1 SMP Tue Mar 25 19:59:55 UTC 2014
x86_64
GNU/Linux
```
