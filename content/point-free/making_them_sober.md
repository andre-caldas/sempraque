---
title: How to make a space sober 😵‍💫🚿
date: 2025-06-16
category: point-free topology
tags: neighbourhood filter, filter, sober, T0, complete, completeness
summary: How do we construct a sober space?
         And how do we complete a space in order to make it sober?
---

Two related questions:

1. How to make a space sober?
2. How to make a sober space?

In our main reference,
{!citation/picado_point_free.md!},

there is a note emphasizing that *sobriety* is a *completeness-type* property.
This suggest to me that we can:

1. Punch holes in a space to make it, if not *non-sober*, at least a little dizzy. 😵‍💫
2. Complete a non-sober space in order to make it sober.

I shall leave "punching *holes*" do another post.


How to make a space sober?
--------------------------

What is the *glucose shot* :syringe: for topological spaces?

Actually, to make a space sober, we can inject :syringe: some points into it.
Or... equivalently, inject it :syringe: into a sober space. 🤯


Injecting :syringe: one point
-----------------------------

Suppose the space $(X, \tau)$ has a *completely prime filter* $\mathscr{F}$
such that there is no $x \in X$ making

\begin{equation}
  \bigcap {\mathscr{F}^c}^*
  =
  \overline{\{x\}}.
\end{equation}

Notice that we are using $\cap$ instead of $\wedge_*$,
because we are identifying

\begin{equation}
  {\mathscr{F}^c}^*
  =
  \{A^c :\, A \not \in \mathscr{F}\},
\end{equation}

and treating ${\mathscr{F}^c}^*$ as the family of all closed sets that contain $x$.

We want to append to $X$ a new point $w \not \in X$,
without changing the complete lattice structure for the open sets.
This is very easy,
we just have to inject $w$ into all sets in $\mathscr{F}$.
The new topological space becomes $\hat{X} = X \cup \{w\}$,
and the new topology is given by the family of open sets

\begin{equation}
  \mathscr{F}^c
  \cup
  \{A \cup \{w\} :\, A \in \mathscr{F}\}.
\end{equation}

In this case,
it is very obvious that $\mathscr{F}^c$ is the family of *open sets* from $\hat{X}$
that do not contain $w$.
Therefore,

\begin{equation}
  \bigcup \mathscr{F}^c
  =
  \hat{X} \setminus \overline{\{w\}}
\end{equation}

is the biggest *open set* that does not contain $w$.
It is also clear that $X$ has the topology induced by $\hat{X}$.


Injecting all points at once
----------------------------

We actually do not even need the above construction.
We did it just to get the idea of how it feels to *complete a space*,
making it a little more sober.
It is much easier to build up a *sober space* from scratch and embed $X$ into it.

We already have the *complete lattice structure*.
Each *completely prime filter* must correspond to a point.

\begin{equation}
  \widetilde{X}
  =
  \{\mathscr{F} \subset \tau :\, \text{$\mathscr{F}$ is completely prime}\}.
\end{equation}

Since $\tau(x)$ is *completely prime* for all $x \in X$,
we can send $X$ to $\widetilde{X}$:

\begin{equation}
  \iota: x \mapsto \tau(x).
\end{equation}

To say that this map is an injection is exactly the same thing as saying that
$X$ is a [$T_0$ space][t0_space].

[t0_space]: https://en.wikipedia.org/wiki/Kolmogorov_space "T0 spaces"

The *open sets* must be in bijection with the original $\tau$.
It is just like associating each point to its open neighbourhood filter,
$\mathscr{F} = \tau(x)$.
Except that we might not have the point $x$ itself.
But the open sets that contain $x$ are exactly those in $\mathscr{F}$.

Each "original open set" $A \in \mathscr{F}$ is now supposed to correspond to
an open neighbourhood of $\mathscr{F}$.
So, given $A \in \tau$, the corresponding open set in $\widetilde{X}$ is

\begin{equation}
  \tag{💉}
  \label{complete:open}
  \widetilde{A}
  =
  \{\mathscr{F} \in \widetilde{X} :\, A \in \mathscr{F}\}.
\end{equation}

This might look a little strange, but recall that for an open set $A$,

\begin{equation}
  x \in A
  \Leftrightarrow
  A \in \tau(x).
\end{equation}

This is is basically what is written in $\eqref{complete:open}$:

\begin{equation}
  \mathscr{F} \in \widetilde{A}
  \Leftrightarrow
  A \in \mathscr{F}.
\end{equation}

Finally, although a little confusing 😵‍💫,
it is very clear that $X$ has the topology induced from $\widetilde{X}$ through $\iota$.
And, in case of a [$T_0$ space][t0_space],
$X$ can be seen as a subspace of $\widetilde{X}$, with the subspace topology.


Conclusion
----------

I have found that completing a non-sober space is a process similar to
constructing the
[Stone-Čech compactification using ultrafilters][compactification_uf].
It is much easier, though.
Because we are not generating a new topology.
We already have the *complete lattice structure* for it.

[compactification_uf]: https://en.wikipedia.org/wiki/Stone%E2%80%93%C4%8Cech_compactification#Construction_using_ultrafilters "Stone-Čech compactification using ultrafilters"

> I wonder if, given a complete lattice,
> this construction always gives a (*sober*) topology for this lattice.

The question above looks to me equivalent to asking:

> In a *complete lattice* $L$ is every $b \in L$ contained in a
> *completely prime filter* $\mathscr{F}$?

In terms of algebra this looks a lot like asking if
--- in a certain ring ---
there is a *prime ideal* $\mathscr{F}^c$ that does not contain the (non-zero) *element* $b$.
Usually, a maximal *ideal* that does not contain $b$ is actually *prime*.
