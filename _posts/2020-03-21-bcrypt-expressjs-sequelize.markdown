---
layout: post
title: "Simple Bcrypt ExpressJS example"
categories:
  - nodejs
  - bcrypt
  - expressjs
  - example
tags: [javascript, bcrypt, expressjs, example]
status: publish
type: post
published: true
meta: {}
image: ""
excerpt: "In this article I will show you how to secure passwords in ExpressJS using bcrypt."
dateCreated: 2020-03-21 10:03:04
datePublished: 2020-03-21 11:29:52
dateModified: 2020-03-21 11:29:52
---

I wanted to build an [ExpressJS] simple tool that will serve two functions :

1. hash a string using bcrypt and
2. compare a hashed and plain-text string using [bcrypt] to see if they match.

## Justification

These two features are the building blocks for something like authentication in an app. If I was storing some string in my database, like a password, that I did not want anyone to read, I would have to encrypt the string. Something like bcrypt algorithm is a wonderful tool to do that. In this tutorial, I walk you through the two functions that would save a lot of headaches for you : `hash` and `compare`. Lets see what I did in the steps below.

## Limitations of bcrypt

The resulting hashes will be 60 characters in length and composed of the following characters :

> ./ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789\$

## Create a new project

First, I created a new project running `npm init`.

```
cd nodejsprojects
mkdir bcryptexample
cd bcryptexample
npm init
```

After that, I downloaded the two minimum dependencies :

```
npm install express --save
npm install bcrypt --save
```

## Implement [bcrypt] in [expressjs]

Next, I created my express server with two public resources that process my two wanted functions for this project. The code of `index.js` simply looks like this :

<script src="https://gist.github.com/getaclue/62142f5b829c4594a2f13bff7505f90d.js"></script>

Finally, I launched my project

```
node index.js
```

and began testing it by navigating to `http://localhost:3000/hash/randomstringgoeshere` to see the bcrypt hashed string as output by the server. To test the second function you need to input the hash and plain-text string manually. Like so :

```
http://localhost:3000/compare/$2b$10$DB0melt1B.3Fn7MfXwC17OIevWVhtSgXMrINkg9M4SEHdFgM6Myqm/dasdas
```

And that's it. You now harness the power of using [bcrypt] in your [ExpressJS] projects. Feel free to read the documentations for [bcrypt] to see all of the options and customizations available out of the box. A prime example for using something like the bcrypt library is for password storage in your database.

In a scenario, after receiving user input of a password, run the text through `hash` function and then save that string in your database rather than a plain-text password. Next, when you need to check if the encrypted password saved in your database matches a string, run the `compare` function to check do that check for you.

---

If you are adding authentication or message encrypting to your app, you are already doing some custom coding. So, spend a few moments and make that code secure so that your users have a peace of mind when it comes to storing something sensitive on your app. Just be aware of the limitations of this library.

[bcrypt]: https://www.npmjs.com/package/bcrypt
[expressjs]: https://expressjs.com/en/starter/hello-world.html
