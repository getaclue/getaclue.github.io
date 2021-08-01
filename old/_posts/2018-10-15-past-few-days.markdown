---
layout: post
title: 'Past few days'
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
excerpt: 'You can probably skip reading this entry =)'
dateCreated: 2018-10-15 20:48:01
datePublished: 2018-10-15 20:48:01
dateModified: 2018-10-15 20:48:01
---

Mostly been doing a buncha practice and reviewing. You can probably skip reading this entry =) It is me sharing code I wrote and nothing crazy.

Followed along and made these things

```java
/* SinglyLinkedList */

package com.example;

/*
    SinglyLinkedList Supports:
        - int size()
            - returns size of linked list
        - boolean isEmpty()
            - return if it is empty or not
        - void addFirst(E element)
            - adds a new element and places it at the front of the list
        - void addLast(E element)
            - adds a new element and places it at the end of the list
        - E removeFirst()
            - removes the first element from the list
            - and returns it
        - E first()
            - returns the first element
            - (does not remove it from the list)
        - E last()
            - returns the last element
            - (does not remove it from the list)

        If you notice the removal operation is wonderful for the first element;
        Unfortunately the same cannot be said for removing at the end. As we require the previous node (for the tail node)
        to do our reference address switchery we would have to traverse the list from the head until the tail.
        This proves to the the limitation of this structure and why
 */

public class SinglyLinkedList<E> implements Cloneable {

    /*
        Why such a strange internal class definition?
            - provides a strong encapsulation
            - allows for existance of different types of Nodes without collisions
     */

    private static class Node<E> {
        private E element;
        private Node<E> next;

        public Node(E element, Node<E> next) {
            this.element = element;
            this.next = next;
        }

        public E getElement() {
            return element;
        }

        public Node<E> getNext() {
            return next;
        }

        public void setNext(Node<E> next) {
            this.next = next;
        }
    }

    private Node<E> head = null;
    private Node<E> tail = null;
    private int size = 0;

    public SinglyLinkedList() {
    }

    public int size() {
        return size;
    }

    public boolean isEmpty() {
        return size == 0;
    }


    /*
        returns but does not remove the first element
     */
    public E first() {
        if (isEmpty()) return null;
        return head.getElement();
    }

    /*
        return but does not remove the last element
     */
    public E last() {
        if (isEmpty()) return null;
        return tail.getElement();
    }

    public void addFirst(E element) {
        Node<E> newNode = new Node<E>(element, head);

        if (isEmpty()) {
            tail = head;
        }

        size = size++;
    }

    public void addLast(E element) {
        Node<E> newNode = new Node<E>(element, null);

        if (isEmpty()) {
            head = newNode;
        } else {
            tail.setNext(newNode);
        }

        tail = newNode;
        size = size + 1;
    }

    public E removeFirst() {
        if (isEmpty()) {
            return null;
        }

        E resultant = head.getElement();
        head = head.getNext();
        size--;

        if (isEmpty()) {
            tail = null;
        }

        return resultant;
    }

    public boolean isEqual(Object other) {
        if (other == null) return false;
        if (getClass() != other.getClass()) return false;

        SinglyLinkedList _other = (SinglyLinkedList) other;

        if (size != _other.size) return false;

        Node curr = head;
        Node otherCurr = _other.head;

        while (curr != null) {
//            if (curr.getElement() != otherCurr.getElement())
            if (!curr.getElement().equals(otherCurr.getElement())) {
                return false;
            }

            curr = curr.getNext();
            otherCurr = otherCurr.getNext();
        }

        return true;
    }

    public SinglyLinkedList<E> close() throws CloneNotSupportedException {
        SinglyLinkedList<E> other = (SinglyLinkedList<E>) super.clone();

        if (size > 0) {
            other.head = new Node<>(head.getElement(), null);

            Node<E> curr = head.getNext();
            Node<E> otherCurr = other.head;

            while (curr != null) {
                Node<E> newNode = new Node<E>(curr.getElement(), null);

                otherCurr.setNext(newNode);
                curr = curr.getNext();
            }
        }
    }
}

```

and who can forget

```java
/* DoublyLinkedList */

package com.example;

public class DoublyLinkedList<E> {
    private class Node<E> {
        private Node<E> prev;
        private Node<E> next;
        private E element;

        public Node(E element, Node<E> previous, Node<E> next) {
            this.prev = prev;
            this.next = next;
            this.element = element;
        }

        public E getElement() {
            return element;
        }

        public Node<E> getPrev() {
            return prev;
        }

        public Node<E> getNext() {
            return next;
        }

        public void setPrev(Node<E> previous) {
            this.prev = previous;
        }

        public void setNext(Node<E> next) {
            this.next = next;
        }
    }

    private Node<E> header;
    private Node<E> trailer;
    private int size = 0;

    public DoublyLinkedList() {
        header = new Node<>(null, null, null);
        trailer = new Node<>(null, header, null);
        header.setNext(trailer);
    }

    /**
     * Shows the size of the list
     *
     * @return the integer representing the number of elements in the list
     */
    public int size() {
        return size;
    }

    /**
     * Shows if the list is empty
     *
     * @return true if the size of the list is zero; otherwise false
     */
    public boolean isEmpty() {
        return size == 0;
    }


    /**
     * Removes the first element but does not remove it
     *
     * @return the first element but does not remove it or null if empty
     */
    public E first() {
        if (isEmpty()) return null;
        return header.getNext().getElement();
    }

    /**
     * Returns the last element but does not remove it
     *
     * @return the last element but does not remove it or null if empty
     */
    public E last() {
        if (isEmpty()) return null;
        return trailer.getPrev().getElement();
    }

    /**
     * Adds element to the front of the list
     *
     * @param element the element that you want to add
     */
    public void addFirst(E element) {
        addBetween(element, header, header.getNext());
    }

    /**
     * Adds element to the end of the list
     *
     * @param element the element that you want to add
     */
    public void addLast(E element) {
        addBetween(element, trailer.getPrev(), trailer);
    }

    /**
     * Removes and returns the first element
     *
     * @return the first element in the list or null if empty
     */
    public E removeFirst() {
        if (isEmpty()) return null;
        return remove(header.getNext());
    }

    /**
     * Removes and returns the last element
     *
     * @return the last element in the list or null if empty
     */
    public E removeLast() {
        if (isEmpty()) return null;
        return remove(trailer.getPrev());
    }

    /**
     * Adds element to the list between the two given nodes
     *
     * @param element    element to add
     * @param firstNode  node that is previous to this node where you are inserting
     * @param secondNode node that is next to this node where you are inserting
     */
    private void addBetween(E element, Node<E> firstNode, Node<E> secondNode) {
        Node<E> newNode = new Node(element, firstNode, secondNode);
        firstNode.setNext(newNode);
        secondNode.setPrev(newNode);
        size++;
    }

    /**
     * remove the given node from the list and return its element
     *
     * @param node the node you want to remove from the list
     * @return the element of the node
     */
    private E remove(Node<E> node) {
//        E remove = node.getElement();
        node.getPrev().setNext(node.getNext());
        node.getNext().setPrev(node.getPrev());
        size--;
        return node.getElement();
    }
}

```

See you tomorrow ;-)
