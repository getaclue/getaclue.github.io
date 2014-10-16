---
layout: post
title: A different archival strategy for pictures on CentOS 7
meta_keywords: openssl, CentOS7, bash, shell, loops, learning, resources, ideas, guide, noob
meta_description: openssl, CentOS7, bash, shell, loops, learning, resources, guide, noob
---

I decided to learn about bash scripting in order to encrypt all of my pictures and movies before uploading them. More specifically, I wanted individual encryption and not an encryption of an entire archive of pictures and movies. 

This is an exercise in improving my backups. I have a habit of not downloading an entire archive because the size of an archive is typically large. To solve this problem, I want to mimick my entire library by preserving the file structure on a server. However, I wanted to have all of my files encrypted prior to having them uploaded.

I think that by sampling a few files out of an uploaded directory will allow me to speed up my recovery as compared to downloading the entire archive. Therefore, I needed a way to encrypt and decrypt my files.

Goals that I wanted to achieve for encryption:

- automated
- password had to be entered as an argument
- cipher had to be chosen as an argument
- after encryption all of the file names had to remain original
- all JPG files had to be encrypted individually
- every encrypted file had to be saved into /enc/ folder with the original file name

Goals that I wanted to achieve for decryption:

- automated
- password and cipher entered as arguments
- all decrypted files had to maintain its original file name
- all JPG files decrypted individually
- every decrypted file had to be saved into /dec/ folder with the original file name

Resources used:

	https://www.linux.com/learn/tutorials/284789-writing-a-simple-bash-script-
	http://www.linux-magazine.com/Online/Features/OpenSSL-with-Bash
	http://www.openssl.org/docs/apps/ciphers.html
	http://www.openssl.org/docs/apps/openssl.html
	http://nixtricks.wordpress.com/tag/aes-256-cbc/
	https://www.madboa.com/geek/openssl/
	http://www.cyberciti.biz/faq/bash-loop-over-file/
	http://tldp.org/LDP/abs/html/loops1.html
	
