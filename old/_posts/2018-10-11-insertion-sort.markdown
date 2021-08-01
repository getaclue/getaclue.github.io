---
layout: post
title: 'Insertion Sort'
categories:
  - software engineering
  - computer science
  - algorithms
tags:
  - software engineering
  - computer science
  - algorithms
status: publish
type: post
published: true
meta: {}
excerpt: ''
datePublished: 2018-10-11 18:52:01
dateModified: 2018-10-11 18:52:01
---

Question: Suppose you have an algorithm that you are running that has multiple steps. When you are approximating, when do you add the runtimes and when do you multiply them?

- if `do this, then when you are done with this, do that`, then you add runtimes
- if `do this for each time you do that`, then you multiply runtimes

## The Insertion-Sort Algorithm

The goal of this algorithm is simple: take an array of elements and sort it in an increasing order. It does so by inserting one element at a time and by comparing elements during insertion.

> Algorithm InsertionSort(A):

>    Input: An array A of n comparable elements

>    Output: The array A with elements rearranged in **nondecreasing order**


We basically walk one element at a time, from 0 to n:

> for k from 1 to n do

>   Insert element A[k] at its proper location in the array at position A[0], A[1], A[2], ..., A[k]

or as you would like to call it &mdash; increasing order.

Question: When will this algorithm behave the best?

  Answer: When the elements in the array are sorted in order.

Question: When will this algorithm have the worst of times?

Answer: When the elements in the array are placed in the reversed order (from high to low - a decreasing order). Our little guy will have to swap every element and move it to the other side.

Guided with the following from [textbook]

> using an **outer loop** to consider each element in turn,
> and an **inner loop** that moves a newly considered element to its proper location relative to the (sorted) subarray of elements that are to its left

I went on to do my own implementation &mdash; because why not and I could use some review.

```java
public static char[] insertionSort(char[] input) {
        if (input.length == 0) {
            return input;
        }

        /*
        Assumption: position 0 is sorted by definition

        Start with position 1
            Grab the value at the position
                Question: is the value at previous position 0 (n-1) bigger than current value
                    if yes
                        do a loop
                            place previous value that is bigger in the current place
                    if no
                        do no loop

               Place the current value in the position based on the answer to the question
         */

        for (int i = 1; i < input.length; i++) {
            char current = input[i];
            int insertPosition = i;

            /*
                We are walking from the current position to the front of the array at position 0
             */

            for (; insertPosition > 0; ) {
                if (input[insertPosition - 1] > current) {
                    input[insertPosition] = input[insertPosition - 1];
                    insertPosition--;
                } else {
                    break;
                }
            }

            input[insertPosition] = current;
        }

        return input;
    }
```

See you tomorrow.

[textbook]: https://www.amazon.ca/Data-Structures-Algorithms-Michael-Goodrich/dp/1118771338/
