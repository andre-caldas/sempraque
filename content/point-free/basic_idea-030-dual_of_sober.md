---
title: Basic Idea: dual of being sober 🍻
date: 2025-05-26
status: draft
category: point-free topology
tags: basic idea, filter, sober
summary: An alternative definition for the concept of "sober".
---

In a
[previous post]({filename}basic_idea-020-back_to_the_points.md),
I have mentioned that the definition I have adopted for the concept of *sober*
is different from the definition gave on the book I am learning *point-free topology*:
{!citation/picado_point_free.md!}

In order to connect those two,
I would like to write a little about the **duality** between *open* and *closed*.

Just to make things easier,
let's fix a topological space $X$.
Denote by $\tau$ the family of *open sets*,
and by $\mathscr{P}(X)$, the family of subsets of $X$.


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

Now... I am certainly nauseating anyone fond of categories. :nauseated_face:

A less pedestrian way to do it,
if you know a closed set is just the complement of an open one
--- or maybe it is how you like to define what a "closed set" is ---,
just notice that you can simply:
> Use the *complement operation* ($A \mapsto A^c$):
> an order reversing automorphism in $\mathscr{P}(X)$.
> When restricted to the open lattice, it gives the (isomorphic) closed lattice.

But, if you really like categories... just "invert the arrow directions". :triumph:

The lesson is that, up to now,
we have just been juggling :juggling_person: stuff from one side to the other.
And although I personally do not like treating a closed set
simply as the complement of an open one,
it is a nice way to think if you do not want to leave the
complete lattice of open sets we have been working with.
Specially if you are not talking about sets!
What is the "complement", then? :shrug:


Closure of sets
---------------

Using those blinders... :see_no_evil:

We want to talk about closure,
but we don't want to talk about sets!
I mean... all we have are the *open sets*.
But we don't know they are sets. :scream:

Easy...

\begin{align}
  \overline{A}
  &=
  \bigcap \{F :\, F \text{ is closed},\,A \subset F\}
  \\
  &=
  \bigcap \{D^c :\, D \in \tau,\,A \subset D^c\}
  \\
  &=
  \bigcap \{D^c :\, D \in \tau,\,A \cap D = \emptyset\}
  \\
  &=
  \bigwedge \{D^c :\, A \wedge D = 0\}.
\end{align}

Now, if we want to deal only with open sets,
we can take the closed back using the complement operation.
I don't know if this is correct to say, but basically,
in terms of open sets,

\begin{equation}
  \overline{A}
  \sim
  \bigvee_{A \wedge D = 0} D.
\end{equation}

I am using the symbol $\sim$,
because I do not know what is the proper notation for this.
Categorists... do not get mad at me! :innocent:

In other words,
we are not actually talking about the closure,
but **the complement of the closure**.
It is the union of all open sets that do not intersect $A$.
Or, better yet:
> The closure of an open set $A$ corresponds to the biggest open set $D$
> that is disjoint from a: $A \wedge D = 0$.

Notice that we have just used the fact that $\bigvee = \bigcup$,
because the union of sets disjoint from $A$ actually *is* disjoint from $A$.
This does not happen with closed sets, for instance. :astonished:


Open filters
------------

Any filter in a
[bounded lattice](https://en.wikipedia.org/wiki/Lattice_(order)#Bounded_lattice)
has a biggest element: $1$.
Yes... that is not very interesting.

A filter might not have a minimum.
When talking about the lattice of open sets,
the filter of neighbourhoods $\mathcal{V}(x)$ of a point $x$,
there are some cases:

1. The filter does have a minimum.
   a. It might happen that $x$ is an isolated point.
   b. It might happen that the topology is not *[$T_1$][T1]*, and too coarse at $x$.
2. The filter does not have a minimum.
   a. The infimum is $0$.
   b. The infimum is not $0$.
      In this case, the topology is not *[Hausdorff][]*.
      And the infimum is a nonempty open set that does not contain $x$.

[T1]: https://en.wikipedia.org/wiki/T1_space "T1 separation axiom"
[Hausdorff]: https://en.wikipedia.org/wiki/Hausdorff_space "Hausdorff Topological Space"

By the way, a filter could have $0$ as the minimum.
But in this case, it could not be the filter of neighbourhoods of any point.
In fact, the filter would simply be the whole lattice,

By the way, in a [*Hausdorff* space][Hausdorff],
only alternatives 1.a and 2.a can happen.
In fact, being *Hausdorff* is equivalent to

\begin{equation}
  \{x\}
  =
  \bigcap_{V \in \mathcal{V}(x)} \overline{V}.
\end{equation}

Of course, it would be the same to take the intersection for $V \in \tau(x)$,
because $\tau(x)$ is a base for $\mathcal{V}(x)$ and closure preserves inclusion.
Conclusion:
> The *infimum* of $\mathcal{V}(x)$ is not very interesting
> --- in special when the space is *Hausdorff* ---
> for determining if an *open filter* corresponds or not to the filter
> $\mathcal{V}(x)$ for some $x$.
>
> But the **infimum of their closure** might be! :sunglasses:
>
> In particular, it is not empty.
> It contains the point $x$.
> More than that, it contains $\overline{\{x\}}$.
>
> \begin{equation}
>   \tag{*}
>   \overline{\{x\}}
>   \subset
>   \bigcap_{A \in \tau(x)} \overline{A}.
> \end{equation}

Notice that, in a Hausdorff space, for example,
we always have equality:

\begin{equation}
  \{x\}
  \subset
  \overline{\{x\}}
  \subset
  \bigcap_{A \in \tau(x)} \overline{A}
  =
  \{x\}.
\end{equation}

