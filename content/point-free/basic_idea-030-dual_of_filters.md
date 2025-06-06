---
title: Basic Idea: the dual of filters
date: 2025-05-30
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

> When you simply *invert the arrow directions*,
> you get the **lattice structure** of the closed sets.
> You do not get the *closed sets*, because you are not actually talking about sets!

Up to now, we have just been juggling 🤹 stuff from one side to the other.
And although I personally do not like treating a closed set
simply as the complement of an open one...
if you do not want to leave the complete lattice of open sets we have been working with,
it is a nice way to do things.
Specially if you are not talking about sets!

But... what is the "complement" of an *element*, then? :shrug:

> **Attention:**
> If all we have is a *complete lattice*,
> we do not really know what the *closed sets* are!
> Because we are not talking about sets.
> We are simply representing *closed elements* using the *order dual lattice*:
> the same elements, but with reverse order.
> For an element $a$ in the *complete lattice*,
> we could even use the symbol $a^c$ to talk about the corresponding element in the *dual lattice*.
> But, that would be confusing, because we use $\cdot^c$ for set complement.
> Let's use $a^*$ for the element $a$ regarded as an element in the dual lattice.
> And also, things like $\vee_*$ and $\wedge_*$ to refer to the *dual lattice operations*.
> In this case, for example,
>
> \begin{equation}
>   a^* \vee_* b^*
>   =
>   (a \wedge b)^*.
> \end{equation}
>
> To make the notation easier to follow, lets agree that
> if we are treating $a$ as an *open element*,
> $a^*$ will be the same *element* treated as a *closed element*.
> And the *closed elements* will always have a $\cdot^*$ that can be removed
> to produce an *open element*.
> We shall do this even with families of elements:
> $\mathscr{F}$ is a family of *open elements*
> and $\mathscr{C}^*$ is a family of *closed elements*.
> The corresponding *closed* and *open* families are $\mathscr{F}^*$ and $\mathscr{C}$.
>
> The only exception shall be $0$ and $1$.
> They are supposed to mean the smallest and biggest element for the given order.
> So, abusing notation a little, $0^* = 1$,
> since the smallest element in the *open lattice*
> is the biggest element in the *closed lattice*.
>
> When talking about a real topological space... using sets,
> when $B$ is a closed set, we shall write
> $B \sim a^*$ to mean that $B$ is the complement of the open set the element $a$ represents.

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

Or, using $\cdot^*$...

\begin{equation}
  \overline{B}
  \sim
  \left(\overline{B}^c\right)^*
  =
  {\bigwedge}_* \{A \in \tau :\, B \cap A = \emptyset\}^*.
\end{equation}

Since we are dealing with a *complete lattice*...
we do not see sets... :see_no_evil:
let's deal only with open *elements* (including $B$).
Look Mom, no sets:

\begin{equation}
  \tag{🚴}
  \label{closure:no_sets}
  \overline{B}
  \sim
  {\bigwedge}_* \{A \in \tau :\, B \wedge A = 0\}^*.
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
while the *meet* frequently is $0$.
In particular,
$\bigwedge \mathscr{F}$ usually does not tell us much about a filter $\mathscr{F}$
possibly corresponding or not to the *open neighbourhoods* of some point.

If we make those sets just a little "fuller-bodied"... we get

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
  \overline{\{x\}}
  \subset
  \bigcup_{V \in \mathcal{V}(x)}
  \bigcup_{\substack{A \in \tau \\ A \cap V = \emptyset}} A
  \sim
  {\bigwedge}_* \mathscr{C}_x^*,
\end{equation}

where

\begin{equation}
  \mathscr{C}_x
  =
  \{A \in \tau :\, \exists U \in \tau(x),\, U \wedge A = 0\}.
\end{equation}

Notice that $\mathscr{C}_x$ is not a filter.
I mean... $\mathscr{C}_x^*$ is a filter in the *dual lattice*, using the reverse order:

\begin{gather}
  p^*, q^* \in \mathscr{C}_x^*
  \Rightarrow
  p^* \wedge_* q^* \in \mathscr{C}_x^*
  \\
  a^* \in \tau^*,\; p^* \in \mathscr{C}_x^*
  \Rightarrow
  a^* \vee_* p^* \in \mathscr{C}_x^*,
\end{gather}

where the last impllication is the same as
$p^* \prec a^* \Rightarrow a^* \in \mathscr{C}_x^*$.

[ideal]: https://en.wikipedia.org/wiki/Ideal_(order_theory) "Ideals in a Lattice"

But in the original *open lattice*,
the family $\mathscr{C}_x$ is the dual of a *filter*: an *[ideal][]*.
That is,

\begin{gather}
  p, q \in \mathscr{C}_x
  \Rightarrow
  p \vee q \in \mathscr{C}_x
  \\
  a \in \tau,\; p \in \mathscr{C}_x
  \Rightarrow
  a \wedge p \in \mathscr{C}_x.
\end{gather}

In a sense, $\mathscr{C}_x^*$ is a family of sets a little bigger than those in $\tau(x)$:
we took the closure of sets.
However, instead of working on the lattice of closed sets,
we are using $\mathscr{C}_x$ because we want to stay in the *open lattice*.
Still... I'd like to think that $\mathscr{C}_x$ is a filter (in the dual order)
a little "fuller-bodied" than $\tau(x)$:

\begin{equation}
  \tag{💪}
  \label{fuller-bodied}
  \bigcap \tau(x)
  \subset
  \left(\bigcup \mathscr{C}_x\right)^c
  \sim
  {\bigwedge}_* \mathscr{C}_x^*
\end{equation}

And that the right side above corresponds to the intersection of the closed neighbourhoods.


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

This is an *ideal* that corresponds to the idea of *closed neighbourhoods* of $\mathscr{F}$.
But there is an even "easier" family to work with:

\begin{equation}
  \mathscr{F}^c
  =
  L \setminus \mathscr{F}.
\end{equation}

Notice that $\mathscr{C}_{\mathscr{F}} \subset \mathscr{F}^c$,
because $\mathscr{F}$ is a proper filter ($0 \not \in \mathscr{F}$).

\begin{equation}
  \bigvee \mathscr{C}_{\mathscr{F}}
  \prec
  \bigvee \mathscr{F}^c.
\end{equation}

Or... using *closed elements*...

\begin{equation}
  \tag{💪💪}
  {\bigwedge}_* {\mathscr{F}^c}^*
  \prec_*
  {\bigwedge}_* {\mathscr{C}_{\mathscr{F}}^*}.
\end{equation}

The left side representing the intersection
of every *closed neighbourhood* of the point,
and the right side representing the intersection
of every *closed set* that contains the point.


### Not ideal, though :worried:

So, $\mathscr{F}^c$ is a nice *family* of *elements* from our complete lattice...
although, a family **not _ideal_**... :worried:.

I mean... even if $\mathscr{F}$ is a proper filter,
$\mathscr{F}^c$ might not be an *ideal*!!!

Well... $\mathscr{F}^c$ is a **wannabe** ideal.
But let me tell you...

> If it was an *ideal*, it would be **prime**!
>
> \begin{align}
>   A \wedge B \in \mathscr{F}^c
>   &\Leftrightarrow A \wedge B \not \in \mathscr{F}
>   \\
>   &\Rightarrow
>   A \not \in \mathscr{F}
>   \text{ or }
>   B \not \in \mathscr{F}
>   \quad\text{(since $\mathscr{F}$ is closed by $\wedge$)}
>   \\
>   &\Leftrightarrow
>   A \in \mathscr{F}^c
>   \text{ or }
>   B \in \mathscr{F}^c
> \end{align}

And, hey! Cheer up!!
Not being an ideal is not a bad thing!
It turns out that when the lattice we are working with
is the topology $\tau$ of a topological space $X$,
and the filter is the *open neighbourhood filter* $\tau(x)$ for some point $x$,
the family $\tau(x)^c$ is indeed an *ideal*!!!
:tada: :confetti_ball: 🥳

In fact, notice that $\tau(x)$ is a *prime filter*:

\begin{gather}
  A \cup B \in \tau(x)
  \Rightarrow
  A \in \tau(x)
  \text{ or }
  B \in \tau(x)
  \\\text{equivalently}\\
  A, B \not \in \tau(x)
  \Rightarrow
  A \cup B \not \in \tau(x).
\end{gather}


And, if $\mathscr{F}$ is a *prime filter*, $\mathscr{F}^c$ is an *ideal*.
The main argument being:

\begin{align}
  A, B \in \mathscr{F}^c
  &\Leftrightarrow
  A, B \not \in \mathscr{F}
  \\
  &\Rightarrow
  A \vee B \not \in \mathscr{F}
  \\
  &\Leftrightarrow
  A \vee B \in \mathscr{F}^c.
\end{align}


Change Log
----------

**2025-06-06:**
I have just realized that for a *filter* $\mathscr{F}$,
its complement, $\mathscr{F}^c$ **might not be an *ideal***.
So, I have fixed the post.
Now, I understand much better the relation between those *filters* and those *ideals*
in a *lattice*.
