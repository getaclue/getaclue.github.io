---
layout: post
title: "Nodejs: Accept arguments from cli"
categories: ["nodejs", "tips"]
tags: ["nodejs", "tips"]
status: publish
type: post
published: true
meta: {}
image: "/assets/images/2020-08-20/nodejs-accept-arguments-from-cli.png"
excerpt: "How to read input from the console? How to read input arguments provided by a user in the command line?"
dateCreated: 2020-08-20 12:29:34
datePublished: 2020-08-20 12:29:34
dateModified: 2020-08-20 12:29:34
---

How to make this work?

```shell
node code.js <args>
```

You don't need to import anything. Open a new file and start coding.

Node's core provides a `process` object that exposes `process.argv` property. This has what we need. This property exposes an array. First two items in the array are :

- `process.argv[0]` - location of node and
- `process.argv[1]` - location of the script being executed, respectively.

The entries after, `process.argv[2...process.argv.length]`, will be used for user input arguments.

You can get to them like this :

```js
// code.js
const args = process.argv.slice(2);

args.map((arg) => {
  console.log(arg);
});
```

Then re-run the program again and terminal will print out the arguments one at a time; like this :

```shell
$ node code.js user:alice password:onetwothreefourfice
> user:alice
> password:onetwothreefourfice
```

Problem solved 👍

References:

- [https://www.codinginterview.com/interview-roadmap](https://www.codinginterview.com/interview-roadmap)
- [https://nodejs.dev/learn/nodejs-accept-arguments-from-the-command-line](https://nodejs.dev/learn/nodejs-accept-arguments-from-the-command-line)
