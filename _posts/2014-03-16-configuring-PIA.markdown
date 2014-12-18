---
layout: post
title: Configuring PrivateInternetAccess VPN
meta_keywords: PIA, PrivateInternetAccess, CentOS 6.5, beginners, vpn
meta_description: PIA, VPN, beginners, CentOS 6.5, vpn
---
#Installing OpenVPN and Configuring for PrivateInternetAccess#
Go to /etc/

```
cd /etc/
```

Add the correct repo, which you are probably missing:

```
wget
 http://pkgs.repoforge.org/rpmforge-release/rpmforge-release-0.5.3-1.el6.rf.x86_64.rpm
rpm -Uvh rpmforge-release-0.5.3-1.el6.rf.x86_64.rpm
(U - Update, v - verbose, h - has)
```
Install OpenVPN from the new repo

```
yum install openvpn
```

Download correct preconfigured files from www.privateinternetaccess.com

```
wget https://www.privateinternetaccess.com/openvpn/openvpn.zip
```

Make a new directory, move the downloaded file into the directory, unzip the contents, and go into the directory

```
mv openvpn.zip ./openvpn
unzip openvpn.zip
cd openvpn
```

Test to see if everything is working properly. Be prepared to enter your self-generated password and username (and not the one provided for you).

```
openvpn Canada.ovpn
	OR 
openvpn *.ovpn (* - any other location from the list)
```

`ctrl+c` to terminate the connection if everything is successful.

***

### Optional: ###

In order to run openvpn in the background, a useful utility is available.

```
yum install screen
```

Then, when you would want to initialize an instance, simple do

```
screen openvpn *.ovpn
```

and, now, the instance of openvpn can be run within the screen. Thus, we can safeuly press `ctrl + a + d` and the screen will disappear but the session will continue to be open. **Super Useful**. Once you are ready to terminate the session, you can simply close your machine, or

```
screen -ls
```

This command will open all of the screen's running instances. Simply find the one that is dedicated to the openvpn and then open the session.

```
screen -x <name>
```

Once inside, simple close it and exit the screen instance.

```
ctrl + c
exit
	OR
ctrl + c
ctrl + d
```

Aside: If you want, you can start the screen with a custom name. When you do this, it is much easier to find your specific open session if you have multiple screen sessions open. Simply do:

```
screen -S <name>
```

And yes, I did run all of this as root. If you are not root, place `` sudo `` in front of the commands that you have no direct access to and enter your password.

(Side note, system information: `uname-a`)

```
Linux localhost.localdomain 2.6.32-431.11.2.el6.x86_64 
#1 SMP Tue Mar 25 19:59:55 UTC 2014 
x86_64 
GNU/Linux
```
