---
title: Basic Idea: back to the points
date: 2025-05-26
category: point-free topology
tags: basic idea, lattice, filter
summary: Given the complete lattice corresponding to a topology...
         without using points or sets...
         how can we distinguish filters that may or may not
         correspond to the open neighbourhoods of a point?
---

This is the continuation of
[this previous post]({filename}basic_idea-010-name_of_the_game.md).

---

Although we keep bragging about not using points,
we do need to connect *point-free topology* and *point set topology*.
To get rid of the points of a topological space,
what we do is to
[forget](https://en.wikipedia.org/wiki/Forgetful_functor)
everything except the complete lattice structure we talked so much about
on the
[previous post]({filename}basic-idea-part-01.md).

Forgetting is easy!
There is nothing to brag about... :astonished:

Now,
suppose you want to prove a certain theorem.
You used the whole *point-free* thingy and concluded
that the "point-free version" of the topological space you are looking for does actually exist.
That is, all you have is a *complete lattice* $\tau$...
and **as long** as you can manage to find out (construct, maybe)
a topological space whose family of open sets is
isomorphic to $\tau$
**as a _complete lattice_**, you are done!

But, how do you do that? :sweat_smile:


Back to the Points :cloud_with_lightning::church::zap::red_car:
-----------------------------------------

Take for example,
any nonempty set $X$ with the chaotic topology $\tau = \{\emptyset, X\}$.
There is no hope we can recover the original set $X$
solely by looking at the lattice $\{0, 1\}$.

It is very obvious, for example,
that dealing with
[non $T_0$ spaces](https://en.wikipedia.org/wiki/Kolmogorov_space)
is kind of...<br/>
... pointless! :grin:

We shall investigate what properties a topological space needs to have
so we can recover a point set topology
from the complete lattice of its open sets.

So, we are looking at the open sets of a topology.
But we are using those blinders... :see_no_evil:
we do not see sets!
And we do not see points...

Given a point $x$, in a topological space,
there is the *filter of [neighbourhoods][] of $x$*:
$\mathcal{V}(x)$.
Let's denote by $\tau(x)$ the *open neighbourhoods* of $x$.
In family $\tau(x)$ is not a [filter in the lattice of subsets of $X$][setfilter].
When we consider $\tau$ as a lattice, however,
$\tau(x)$ is a [filter][latticefilter] in $\tau$.
Let's call it an *open filter*,
to remind us that we are treating it as a *filter* in $\tau$,
and **not** as filter in $\mathscr{P}(X)$
--- the family of subsets of $X$.

[neighbourhoods]: https://en.wikipedia.org/wiki/Neighbourhood_system "Neighbourhood filter"
[setfilter]: https://en.wikipedia.org/wiki/Filter_(set_theory) "Filter of subsets"
[latticefilter]: https://en.wikipedia.org/wiki/Filter_(mathematics) "Filters in a poset"
[vianeighbourhoods]: https://en.wikipedia.org/wiki/Topological_space#Definition_via_neighbourhoods "Definition of a topology via neighbourhoods"

A topology in a set $X$
[can be defined in terms of the neighbourhoods][vianeighbourhoods] for each $x \in X$.
In this case, it is an **axiom**, that $\tau(x)$ is a *neighbourhood basis* for $\mathcal{V}(x)$.
In other words,
the open neighbourhoods can be used to reconstruct $\mathcal{V}(x)$.
And that would be easy...
if we only knew what **point** we are talking about! :scream:


### The challenge :thought_balloon:

Pick up a
[filter][latticefilter]
in the lattice $\tau$.
Is it possible that this filter
corresponds to the family $\tau(x)$ of open neighbourhoods of a point $x$?
What criteria could we use to distinguish filters that might or not correspond
to the neighbourhood basis $\tau(x)$ for some $x$?


### The catch :bomb:

Our canonical example will be the **open** filters given by two families:

\begin{align}
  \mathscr{F} &= \{(0, 1/n) :\, n \in \mathbb{N}^*\}
  \\
  \mathscr{G} &= \{(-1/n, 1/n) :\, n \in \mathbb{N}^*\}.
\end{align}

Although, it is true that

\begin{equation}
  \bigcap \mathscr{F} = \emptyset
  \quad\text{ and }\quad
  \bigcap \mathscr{G} = \{0\},
\end{equation}

since we do not "see" sets...
from the point of view of the lattice $\tau$,

\begin{equation}
  \bigwedge \mathscr{F} = 0
  \quad\text{ and }\quad
  \bigwedge \mathscr{G} = 0.
\end{equation}

We cannot distinguish between
$\mathscr{F}$ and $\mathscr{G}$
just by taking *meets*. :cold_sweat:


### The trick :sunglasses:

In one hand,
in $\tau$,
the *infimum* does not coincide, in general, with the *intersection*.
Therefore, although,

\begin{equation}
  x \in \bigcap \mathcal{V}(x),
\end{equation}

it might happen that

\begin{equation}
  \bigwedge \mathcal{V}(x) = \emptyset.
\end{equation}

On the other hand,
the *supremum* is exactly the same thing as the *union*!!!
:tada: :confetti_ball: :tada: :confetti_ball:

And one thing we know about the union is that if $x$ belongs to the union,
it has to belong to one of the sets in the union:

\begin{equation}
  x \in \bigcup \mathscr{A}
  \Rightarrow
  \exists A \in \mathscr{A},\,\ x \in A.
\end{equation}

In terms of $\tau(x)$,
this means that if we are only dealing with open sets
(i.e. $\mathscr{A} \subset \tau$),

\begin{equation}
  \bigcup \mathscr{A} \in \tau(x)
  \Rightarrow
  \exists A \in \mathscr{A},\,\ A \in \tau(x).
\end{equation}

So, if $L(\tau)$ is a lattice isomorphic to $\tau$,
in order for a filter $\mathscr{F} \subset L(\tau)$ to correspond
to the open neighbourhoods of a point,
it needs to satisfy

\begin{equation}
  \bigvee \mathscr{A} \in \mathscr{F}
  \Rightarrow
  \exists A \in \mathscr{A},\,\ A \in \mathscr{F}.
\end{equation}

When $\mathscr{F}$ has the above property,
we say it is a
[completely prime filter](https://ncatlab.org/nlab/show/completely%20prime%20filter).
If the implication is known to be valid only for *finitary filters*,
we say that $\mathscr{F}$ is a *prime filter*.

The *completely prime filters* are the candidates for being "*neighbourhood of some point*".
When a topological space $(X, \tau)$ is such that
every *completely prime filter* in $\tau$ is of the form $\tau(x)$ for some $x \in X$,
we call it *sober*.

This is not the definition of *sober* in
{!citation/picado_point_free.md!}

There, *sober* is defined some other way,
and in proposition 1.3.1., the equivalence of both definitions is demonstrated.
But I found this way of defining it much more natural.
And later on the book,
in notes 1.5 the authors state:
> (1) The property from 1.3.1 is often more handy than the original deﬁnition of sobriety.
> We will often use it instead.

I saw no good reason to define it differently. :white_check_mark:
