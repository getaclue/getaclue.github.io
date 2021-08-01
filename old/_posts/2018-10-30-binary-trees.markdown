---
layout: post
title: 'Binary trees'
categories:
  - software engineering
tags:
  - software engineering
status: publish
type: post
published: true
meta: {}
excerpt: ''
dateCreated: 2018-10-30 00:36:04
datePublished: 2018-10-30 00:36:04
dateModified: 2018-10-30 00:36:04
---

<!-- <script src="https://d3js.org/d3.v5.min.js"></script> -->

## Assume:

- let T = nonempty binary tree
- let n = number of nodes
- let n_e = number of external nodes
- let n_i = number of internal nodes
- let h = height of T

## Then, T has following properties:

1. height of the nonempty binary tree + 1 **is less than or equal to** the number of nodes in the binary tree **is less than or equal to** 2^(height of the nonempty binary tree + 1) &mdash; 1
2. 1 **is less than or equal to** number of external nodes in the nonempty binary tree **is less than or equal to** 2^(height of the nonempty binary tree)
3. height of the nonempty binary tree **is less than or equal to** number of internal nodes of the nonempty binary tree **is less than or equal to** 2^(height of nonempty binary tree) &mdash; 1
4. log of (number of nodes in nonempty binary tree) &mdash; 1 **is less than or equal to** height of the nonempty binary tree **is less than or equal to** number of nodes in nonempty binary tree &mdash; 1

... sorry this was one was also not finished :'-(

for context plan was to illustrate this using 3djs

See you next time
