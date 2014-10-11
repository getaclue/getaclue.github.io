---
layout: post
title: Installing Mono on CentOS 7
meta_keywords: mono, centOS 7, beginner
meta_description: mono, centOS 7, beginner
---

### Installing Mono on Cent OS 7

# Obtain necessary gpg keys
	mkdir Mono
	cd Mono
	wget http://download.mono-project.com/repo/xamarin.gpg

# Import gpg key
	sudo rpm --import xamarin.gpg

# Add Mono package repository
	sudo yum-config-manager --add-repo http://download.mono-project.com/repo/centos/

# Add EPEL
	sudo rpm -Uvh http://download.fedoraproject.org/pub/epel/7/x86_64/e/epel-release-7-2.noarch.rpm

# Update everything
	sudo yum update

# Start installing Mono
	sudo yum install mono-devel
	sudo yum install mono-complete

# Optional: Test your Mono installation
	http://www.mono-project.com/docs/getting-started/mono-basics/

# Running Mono
	cd ~/foo/bar/
	mono foo.exe

# Reference
	http://www.mono-project.com/docs/getting-started/install/linux/
	http://www.mono-project.com/docs/getting-started/mono-basics/
	https://fedoraproject.org/wiki/EPEL/FAQ	
