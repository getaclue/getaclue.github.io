---
layout: post
title: "Installing XChat CentOS 6.5 for Beginners"
categories:
- Projects
tags:
- CentOS 6.5
- how-to
- beginner
- guide
- XChat
status: publish
type: post
published: true
meta: {}
---

# Installing XChat for Total Beginners #

Make a dir to install it in and go there

```
mkdir /some/path/
cd /some/path/
```

Download the sourcecode (link used in March 2014) and place it in the newely created directory in the step above.

```
http://xchat.org/files/source/2.8/xchat-2.8.8.tar.bz2
http://xchat.org/files/source/2.8/xchat-2.8.8.tar.xz
```

Unpack the archive:

```
tar -xzvf xchat-x.x.x.tar.xz
tar -xjvf xchat-x.x.x.tar.bz2
```


Go to the newely unpacked directory:

```
cd xchat-2.8.8
```

Run the configuration script:

```
./configure
```

Compile the program:

```
make
```

Finally, install the program:

``
make install
``
***

## Problems I've encountered while setting up ##

While trying to compile the source code, I've gotten the following error:

```
configure: error: no acceptable C compiler found in $PATH
```

The solution? We are missing the gcc, which can be installed via the development tools kit. In my case, I didn't solely look for the gcc but I installed the entire pack because I knew I would be using the tools eventually.

```
yum groupinstall "Development tools"
```

Alternatively, this same command can be ran on Debian Base OS:

```
apt-get install build-essential
```

And yes, I did run all of this as root. If you are not root, place `` sudo `` in front of the commands that you have no direct access to and enter your password.

(Side note, system information: `uname-a`)

```
Linux localhost.localdomain 2.6.32-431.11.2.el6.x86_64
#1 SMP Tue Mar 25 19:59:55 UTC 2014
x86_64
GNU/Linux
```
