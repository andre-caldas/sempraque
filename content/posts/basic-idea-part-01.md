---
title: 'Basic Idea (part 01)'
date: 2025-05-19T08:45:05-03:00
draft: false
categories:
  - point-free
  - topology
tags:
  - poset
  - basic idea
---

As the name suggests,
the basic idea of *point-free topology* is to get rid of the *points*.
In *general topology*, one usually has a set, say $X$,
and wants to embed it with a structure that allows us to talk about **points** being *close* or *far away*.
We do not really need to know the *distance*.
The study of *general topology* already enables us to talk about being *close* or *far away*
without the need of a *distance* (also called a *metric*).
After all,
when using a *metric*, we do talk about taking an arbitrary $\varepsilon > 0$,
but we do not really care for its value, as long as it is *"big enough"* (strictly greater than $0$).
When we say $\forall \varepsilon > 0$, we are saying:
> no matter **how small** it may be, if it is **big enough**.

Denote by $\mathcal{V}(x)$ the *neighbouhoods* of a point $x \in X$.
A *neighbourhood* of $x$ is a set that is *big enough* to contain a ball centered at $x$.
An *open set* is a set that is a *neighbourhood* of all its points.
What makes *open sets* really useful in this context is the fact that by knowing the *open sets*,
it is possible to reconstruct the *neighbourhoods* of any point.
The *open sets* that contain $x$ form a *basis* for $\mathcal{V}(x)$.
This is an important requirement (axiom, if you wish)
$\mathcal{V}(x)$ must satisfy in a topological space.
<!-- TODO: talk about this axiom and link from here -->

Everything seems to be tied to the idea of **points** and the so called **open sets**.
If we know the open **sets**, we can reconstruct the neighbourhoods...
as long as we have a **point**.
Having a **point**, we just need to take the open **sets** this **point** belongs to...


The name of the game
--------------------

The game is called **point-free**!
So, we do have the family of *open sets*: $\tau$.
But we do not treat them as *sets*.
We do talk about inclusion: $A \subset B$.
But only when they are both open.
We shall not say that $A$ is a subset of $B$,
or that $A$ is contained in $B$,
or that $B$ contains $A$.
Those will not be treated as sets... they do not have things that belong to them.
We shall say that $A$ precedes $B$, and denote it by
$$A \prec B.$$
We wear those blinders and,
from the *family of open sets*, all we see is a
[partially ordered set](https://en.wikipedia.org/wiki/Partially_ordered_set).
A *poset*, for short.

> **Attention:**
> I shall use *greater* and *smaller* to mean *greater or equal* and *smaller or equal*.
> To exclude equality I will say *strictly greater*  or *strictly smaller*.

Just to organize things,
instead of saying an *open set*,
let's agree to call it an *element* (of this *poset*).
They are not sets anymore! They are elements in a *poset* $\tau$.

For $x \in X$... let's call them **points**.
Those are the ones we are trying to get rid of.

We do not talk about inclusion of subsets of the whole space $X$.
We do not even talk about $X$!!! Only the open sets exist... and they are not sets!
They are *elements* in a *poset* $\tau$. :smile:

The *empty element*, it is not "empty" because there is nothing inside it.
We are not talking about sets :sunglasses:...
In terms of the order in the *poset*,
the *empty element* is simply the *smallest* element.
Some like to call it $0$.
The same way,
the "whole space" $X$ is not the *set of points*.
It is simply the greatest element in the *poset*.
We can call it $1$.

We do talk about the union.
If $\mathscr{A}$ is a family of open sets, their union is also an open set:
$$A = \bigcup \mathscr{A}.$$
But since we are not talking about sets :sunglasses:...
it is the *supremum* of $\mathscr{A}$:
the smallest *element* that *follows*
(come after) every *element* in $\mathscr{A}$.
We do not call it union, though.
We call it the *join* or the *supremum* of elements in $\mathscr{A}$, and write
$$A = \bigvee \mathscr{A}.$$
The axiom (in general topology) that states that an arbitrary union of open sets is open
translates to the fact that the *supremum* always exists in the *poset* $\tau$.

A long time ago...
when we used to deal with *points* :sunglasses:...
it was this ability to take arbitrary unions (the *supremum*),
that allowed us to talk about the interior of some $B \subset X$:
> The **greatest** among all open sets contained in $B$.

The same way,
since finite intersections of open sets are open,
finite intersections of *elements* $A_1, \dotsc, A_n$
will correspond to the *greatest element* that *precedes* all those $A_j$.
We will call it the *infimum* or the *meet* and denote it by
$$A_1 \wedge \dotsb \wedge A_n.$$
Again, not every *poset* is such that $a \wedge b$ is defined.
However, in a topology $\tau$, since $\tau$ is closed by finite intersections,
the *finite meet* is defined.
Taking the infimum of a finite family will be exactly the same as taking the intersections.
But, since we are not actually talking about sets... :sunglasses:

And finally,
although the arbitrary intersection of a family $\mathscr{A}$ of open sets might not be open,
we can still talk about the *infimum* of those *elements*.
Let
$$\mathscr{B} = \\{U \in \tau :\\, \forall A \in \mathscr{A},\\, U \prec A\\}$$
be the *elements* that precede every member of $\mathscr{A}$.
The family $\mathscr{B}$ is not empty,
because $\emptyset$ is the *smallest element*.
The *infimum* of $\mathscr{A}$ is simply the *supremum* of $\mathscr{B}$:
$$\bigwedge \mathscr{A} = \bigvee \mathscr{B}.$$
In the case of *point set topology*
--- if we were talking about points... :sunglasses: ---
the *arbitrary meet* is the interior of the *intersection*:
$$\bigwedge \mathscr{A} = \mathrm{int}\left(\bigcap \mathscr{A}\right).$$

A *poset* with *finite meets* and *finite joins* is called a
[lattice](https://en.wikipedia.org/wiki/Lattice_(order)).
If we can take *arbitrary meets*  and *arbitrary joins*,
it is called a
[complete lattice](https://en.wikipedia.org/wiki/Lattice_(order)#Completeness).

Except for *arbitrary meets*,
our *lattice* structure directly translates:
| point set      | point-free       |
|----------------|------------------|
| $\subset$      | $\prec$          |
| $\bigcup$      | $\bigvee$        |
| $\cup$ (finite)| $\wedge$ (finite)|


### Be careful! {#careful}

Care must be taken because despite the fact that you can always take *infimum* and *supremum*,
they are not *minimum* and *maximum*.
The *supremum* or *infimum* of elements that satisfy some condition might not satisfy the same condition.
For example, the *infimum* of all real numbers that are strictly greater than $0$
is not strictly greater than $0$.

In a $T_1$ space $X$,
given $x \in X$, the intersection of all elements in $\mathcal{V}(x)$ is not empty...
because it contains $x$.
However,
looking at the **open** neighbourhoods of $x$,
their *meet* in the complete lattice of open sets is the empty set unless $x$ is isolated.
In particular, it does not contain $x$.

We can talk about the *interior* of a set $B \subset X$.
We take the supremum of all open sets contained in $B$.
And **because the supremum is just the union**, the supremum is also contained in $B$.
However,
we cannot define some sort of *exterior* of $B$ as the *least* open set that contains $B$.
We can take the *infimum*, it is true.
However, the *infimum* might not contain $B$.
This *infimum* is **not** the *minimum*.


### Terminology

Well, I do not know much about the subject, yet.
But I will try to stick with the following standard:
1. Use *meet* or *join* for a few elements: $a \wedge b$ and $a \vee b$.
2. Use *infimum* and *supremum* for a family: $\bigwedge \mathscr{A}$ or $\bigvee \mathscr{A}$.
3. Words like *bigger* and *smaller* mean "or equal", just like the symbol $\prec$.


### Another example of a complete lattice

#### All topologies

When studying *topological spaces* one soon demonstrates:
> Given a set $X$,
> an arbitrary intersection of topological spaces over $X$ is a topological space.

This allow you to have, *infimum* and *supremum* in the family of all topological spaces over $X$.
The *smallest element* is the *caotic topology*: $\\{\emptyset, X\\}$.
The *greatest element* is the *discrete topology*: $\mathcal{P}(X)$.
The *infimum* is just the *intersection*: the open sets that are common to all those topologies.
And the *supremum* can be realized as the *infimum* among all those that are *bigger*.
Since there is a *greatest element*, this family of those that are *bigger* is non-empty.

If you take the *infimum* of all topologies that contain a family $\mathscr{C}$ of subsets of $X$,
since the infimum is just intersection, it does contain $\mathscr{C}$.
It is the *smallest topology* over $X$ that contain $\mathscr{C}$.

Be careful, again!
In $\mathbb{R}$, if $\tau$ is the *infimum* of all topologies where $\frac{1}{n}$ converges to $0$,
is it true that $\tau$ is the *smallest topology* such that $\frac{1}{n} \rightarrow 0$?
[It seems not!](https://math.stackexchange.com/questions/395980/topology-for-convergent-sequences).


#### All groups, and more...

In a *group* $G$, take the lattice of all *subgroups*.
When studying groups, you learn very soon that arbitrary intersection of subgroups is a subgroup.
Just the same way, you have a complete lattice.
In particular, you have the *subgroup generated* by a set of elements of $G$.

Do the same for *vector spaces*, *measurable spaces*, *rings*, *fields*, *algebras*, etc...


The challenge
-------------

Instead of saying we are forbidden to talk about *points*,
we talk about a *complete lattice* that might be or not *isomorphic* to the topology of a topological space $X$.

Given a set $X$ and a *complete lattice* $L$:
1. Can we construct a topology $\tau$ over $X$ such that $\tau$ is *(lattice-)isomorphic* to $L$?
2. Is this $\tau$ unique?
3. What if we do not have $X$... only $L$? Can we find an $X$? Will it be unique?

Let $\tau$ be a topology in $X$ and $\gamma$ a topology in $Y$.
Given a $\tilde{f}: \gamma \rightarrow \tau$:
1. Can we construct a continuous $f: X \rightarrow Y$ such that $\tilde{f} = f^{-1}|_{\gamma}$?
2. Is it unique?

A related question...
> Given a lattice $L$,
> what are the families that could possibly correspond to $\mathcal{V}(x)$ for a certain point $x$
> in a some topological space whose topology is isomorphic to $L$?

In ["Be careful!"](#careful), we saw that this is not as easy if you have the *lattice* $L$ but not the sets.
For example, the family $\\{(-1/n, 1/n)\\}$ generates $\mathcal{V}(0)$ in $\mathbb{R}$,
but the family $\\{(0, 1/n)\\}$ generates a (non-principal!) filter strictly larger than $\mathcal{V}(0)$.
How do you distinguish them only looking at the lattice?

Those questions are answered in the first chapter of this book:
> Jorge Picado &amp; Aleš Pultr. *Frames and Locales: topology without points*.
> Springer Basel, Series Frontiers in Mathematics, Vol. 28, xx + 400 pp., 2012
> (ISBN: 978-3-0348-0153-9).
