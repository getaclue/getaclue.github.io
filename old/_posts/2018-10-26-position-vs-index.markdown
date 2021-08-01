---
layout: post
title: 'Position vs index'
categories:
  - software engineering
tags:
  - software engineering
status: publish
type: post
published: true
meta: {}
excerpt: 'Have you ever wondered why you sometimes see index and sometimes position? I did.'
dateCreated: 2018-10-26 17:40:00
datePublished: 2018-10-26 23:19:00
dateModified: 2018-10-26 23:19:00
---

Have you ever wondered why you sometimes see `index` and sometimes `position` keywords in code fragments?

> ... numeric indices are not a good choice for describing positions within a linked list because, knowing only an element’s index, the only way to reach it is to traverse the list incrementally from its beginning or end, counting elements along the way.

> ... position, which formalizes the intuitive notion of the “location” of an element relative to others in the list.

> To provide a general abstraction for the location of an element within a structure, we define a simple position abstract data type.

Be mindful that this is described within the context of Java.

This all stemmed from my reading of `The Positional List Abstract Data Type`. At the same time, this text was fun to read because it got linked to graphs and their traversals

>  The advantage of receiving a position as a return value is that we can subsequently use that position to traverse the list.

and right away they give you a traversal example (the connection to graphs is obvious if you've worked with them before)

```java
Position<E> cursor = document.first();
while (cursor != null) {
  cursor = document.after(cursor);
}
```

This position list has a bunch of update methods that work like this

|      Method     | Return value | Contents |
|:---------------:|:------------:|:--------:|
|    addLast(5)   |       p      |   (5p)   |
| addAfter(p, 7)  |       q      | (5p, 7q) |
| addFirst(4)     |       r      | (4r, 5p, 7q) |
| addBefore(r, 1) |       s      | (1s, 4r, 5p, 7q) |
|   set(p, 0)     |       5      | (1s, 4r, 0p, 7q) |
| remove(p)       |       0      | (1s, 4r, 7q) |

See you next time
