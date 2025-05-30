---
title: Basic Idea: the dual of filters
date: 2025-05-29
category: point-free topology
tags: basic idea, filter, closed sets, dual order, ideal
summary: About ideals: the dual of filters.
---

I was going to write about a topological space being *sober*.
But,
for this next post not getting too full of information,
I thought it would be nice to talk a little bit about *closed sets*, first.

This continues a
[previous post]({filename}basic_idea-020-back_to_the_points.md).


Closed sets
-----------

Just the same way we have a complete lattice of open sets,
we do have a complete lattice given by the *closed sets*.
Everything we did for the *open lattice*,
we can repeat and do exactly the same for the *closed lattice*.
It is a sublattice of $\mathscr{P}(X)$,
because finite unions and intersections of closed sets give closed sets.
The **infimum** also coincides: arbitrary intersections.
But the **supremum** is different: the *closure* of arbitrary unions.
Where the *closure* is simply the *infimum* applied to everything that is bigger.

Now... I am certainly nauseating anyone fond of [categories][]. :nauseated_face:

[categories]: https://en.wikipedia.org/wiki/Category_theory "Category Theory"

In a less pedestrian fashion,
if you know a closed set is just the complement of an open one
--- or maybe it is how you like to define what a "closed set" is ---,
just notice that you can simply:
> Use the *complement operation* ($A \mapsto A^c$):
> an order reversing automorphism in $\mathscr{P}(X)$.
> When restricted to the open lattice, it gives the (dual) closed lattice.

But, if you like categories...
you may just "invert the arrow directions". :triumph:

Up to now, we have just been juggling 🤹 stuff from one side to the other.
And although I personally do not like treating a closed set
simply as the complement of an open one...
if you do not want to leave the complete lattice of open sets we have been working with,
it is a nice way to do things.
Specially if you are not talking about sets!

But... what is the "complement" of an *element*, then? :shrug:

> **Attention:**
> if all we have is a *complete lattice*,
> we do not really know what the *closed sets* are!
> Because we are not talking about sets.
> We are simply representing *closed elements* using the *order dual lattice*:
> the same elements, but with reverse order.
> For an element $a$ in the *complete lattice*,
> we may even use the symbol $a^c$ to talk about the corresponding element in the *dual lattice*.
> In this case, for example, $a^c \vee b^c = (a \wedge b)^c$.
> But we can also, stick with the same *elements*
> and talk about the *open order* and the *closed order*,
> the *open meet* and the *closed meet*, etc.
> This way, we do not need to keep coming back and forth from one lattice to the other.
> Something like $a \vee^c b = a \wedge b$.

> **Disclaimer:**
> I know almost nothing about *[categories][]*.
> Not much beyond having noticed that there are *morphisms* in different theories.
> Category theorists... please, forgive my slip-ups! :innocent:


Closure of sets
---------------

Using those blinders... :see_no_evil:

We want to talk about closure,
but we don't want to talk about sets!
I mean... all we have are the *open sets*.
But we don't know they are sets. :scream:

Closure is easy... it depends a little on what *closure* means for you.
To deal only with open sets, let's talk about the complement of the closure.
It is the biggest open set that does not intersect the original set:

\begin{equation}
  \overline{B}^c
  =
  \bigvee \{A \in \tau :\, B \cap A = \emptyset\}.
\end{equation}

Since we are dealing with a *complete lattice*...
we do not see sets... :see_no_evil:
let's deal only with open *elements* (including $B$).
Look Mom, no sets:

\begin{equation}
  \tag{🚴}
  \label{closure:no_sets}
  \overline{B}^c
  =
  \bigvee \{A \in \tau :\, B \wedge A = 0\}.
\end{equation}


Intersecting the Closures
-------------------------

Remember that in a topological space $X$,
we cannot expect much by looking at

\begin{equation}
  \bigvee \tau(x)
  \quad\text{ and }\quad
  \bigwedge \tau(x).
\end{equation}

The *join* (of any filter) just gives 1,
while the *meet* frequently is $\emptyset$.
In particular,
$\bigwedge \mathscr{F}$ usually does not tell us much about a filter $\mathscr{F}$
possibly corresponding or not to the *open neighbourhoods* of some point.

If we make those sets just a little "*fuller-bodied*"... we get

\begin{equation}
  \tag{$\overline{\text{v}}$}
  \label{vx:closed_intersection}
  \overline{\{x\}}
  \subset
  \bigcap_{V \in \mathcal{V}(x)} \overline{V}.
\end{equation}

Of course, in $\eqref{vx:closed_intersection}$,
we could have intersected only the closure of the *open neighbourhoods*
and it would give the same closed set.
Dually, using "closure with no sets" $\eqref{closure:no_sets}$, we could do

\begin{equation}
  \overline{\{x\}}^c
  =
  \bigcup_{V \in \mathcal{V}(x)}
  \bigcup_{\substack{A \in \tau \\ A \cap V = \emptyset}} A
  =
  \bigvee \mathscr{C}_x,
\end{equation}

where

\begin{equation}
  \mathscr{C}_x
  =
  \{A \in \tau :\, \exists U \in \tau(x),\, U \wedge A = 0\}.
\end{equation}

Notice that $\mathscr{C}_x$ is not a filter.
I mean... it is a filter in the *dual lattice*, using the order $\prec^c$.
But in the original *open lattice*,
the family $\mathscr{C}_x$ is the dual of a *filter*: an *[ideal][]*.
That is,

1. $p, q \in \mathscr{C}_x$ $\Rightarrow$ $p \vee q \in \mathscr{C}_x$.
2. $a \in \tau$ and $p \in \mathscr{C}_x$ $\Rightarrow$ $a \wedge p \in \mathscr{C}_x$.

[ideal]: https://en.wikipedia.org/wiki/Ideal_(order_theory) "Ideals in a Lattice"

In a sense, $\mathscr{C}_x$ is a family of sets a little bigger than those in $\tau(x)$:
we took the closure of sets.
However, instead of working on the lattice of closed sets,
we are using $\mathscr{C}_x$ because we want to stay on the *open lattice*.
Still... I'd like to think that $\mathscr{C}_x$ is a filter (in the dual order)
a little "fuller-bodied" than $\tau(x)$:

\begin{equation}
  \tag{💪}
  \label{fuller-bodied}
  \bigwedge \tau(x)
  \subset
  \left({\bigwedge}^c \mathscr{C}_x\right)^c.
\end{equation}

By the way, remember that $\wedge^c$ is union.
And that the right side above corresponds to the intersection of the closed sets.


Even Easier 🤹
--------------

Let $\mathscr{F} \subsetneq L$ be a *filter* in a lattice $L$.
We can do exactly as with $\mathscr{C}_x$, except we do not have the point $x$.
We have $\mathscr{F}$:

\begin{equation}
  \mathscr{C}_{\mathscr{F}}
  =
  \{a \in L :\, \exists u \in \mathscr{F},\, u \wedge a = 0\}.
\end{equation}

This is an *ideal* that would correspond to the idea of taking
the closure of every "neighbourhood" of $\mathscr{F}$.
But there is an even "easier" filter:

\begin{equation}
  \mathscr{F}^c
  =
  L \setminus \mathscr{F}.
\end{equation}

Notice that $\mathscr{C}_{\mathscr{F}} \subset \mathscr{F}^c$,
because $\mathscr{F}$ is a filter.
And just like in $\eqref{fuller-bodied}$,
$\mathscr{F}^c$ can be considered as a filter made of *closed sets*.

If we were talking about the neighbourhoods of a point $x$,
while $\mathscr{C}_{\mathscr{F}}$ correspond to the closed neighbourhoods of $x$,
$\mathscr{F}^c$ correspond to the closed sets that contain $x$.
In terms of the "intersection" of closed "sets"
--- if we were talking about sets ---
we have:

\begin{align}
  \tag{💪}
  \bigwedge \tau(x)
  &\subset
  \left({\bigwedge}^c \mathscr{C}_{\mathscr{F}}\right)^c
  \\
  \tag{💪💪}
  \left({\bigwedge}^c \mathscr{F}^c\right)^c
  &\subset
  \left({\bigwedge}^c \mathscr{C}_{\mathscr{F}}\right)^c.
\end{align}

But those are lots of ${}^c$...

\begin{align}
  \tag{💪}
  \bigwedge \tau(x)
  &\subset
  \left({\bigwedge}^c \mathscr{C}_{\mathscr{F}}\right)^c
  \\
  \tag{💪💪}
  \bigvee \mathscr{F}^c
  &\supset
  \bigvee \mathscr{C}_{\mathscr{F}}.
\end{align}


> **Exercise:**
> Why do I say "the closure of every 'neighbourhood' of $\mathscr{F}$"
> instead of "the closure of every element in $\mathscr{F}$"?
