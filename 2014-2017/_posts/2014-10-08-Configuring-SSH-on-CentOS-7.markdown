---
author: Alex Kluew
layout: post
title: Configuring SSH Server on CentOS 7
meta_keywords: ssh, sshd, configure, setup, centOS 7, centOS, beginner, how-to
meta_description: ssh, sshd, configure, setup, centOS 7, centOS, beginner, how-to
date: Wed Oct  8 13:09:09 EDT 2014
---

# Display all install packages in CentOS
	rpm -qa

# Changes to /etc/ssh/sshd_config
	Protocol 2
	AllowUsers alice bob
	PermitRootLogin no

# Changes to iptables
	iptables -A INPUT -p tcp --dport 22 -m state --state NEW -m recent --set --name ssh --rsource
	iptables -A INPUT -p tcp --dport 22 -m state --state NEW -m recent ! --rcheck --seconds 60 --hitcount 4 --name ssh --rsource -j ACCEPT

# Resources Used
	http://vim.wikia.com/wiki/Insert_current_date_or_time
	http://daringfireball.net/projects/markdown/syntax
	http://www.linfo.org/sbin.html
	http://www.lifelinux.com/how-to-install-openssh-on-centos-redhat/
	http://wiki.centos.org/HowTos/Network/IPTables
	http://wiki.centos.org/HowTos/Network/SecuringSSH
	http://www.centos.org/docs/5/html/Deployment_Guide-en-US/s1-ssh-configfiles.html
	http://thesimplesynthesis.com/article/compress-pdf#compress-pdf
	https://gist.github.com/quintes/5153247
