---
title: Basic Idea: dual of being sober 🍻
date: 2025-06-10
category: point-free topology
tags: basic idea, filter, sober, prime, ideal, dual
summary: Alternative definitions for the concept of "sober".
---

In a
[previous post]({filename}basic_idea-020-back_to_the_points.md),
I have mentioned that the definition I have adopted for the concept of *sober*
is different from the definition gave on the book where I am learning *point-free topology*:
{!citation/picado_point_free.md!}

[There]({filename}basic_idea-020-back_to_the_points.md),
I said I had seen no reason to define *sober* different from the way I had defined:
> When a topological space $(X, \tau)$ is such that
> every *completely prime filter* in $\tau$ is of the form $\tau(x)$ for some $x \in X$,
> we call it *sober*.

Now... after thinking a bit... 🧘
I see five different definitions for *sober*. 🤯

The main purpose of this post is to link all those dots.
Please, take a look a the post where
[I talk about filters of closed sets without sets][closed]
before proceeding.

[closed]: {filename}basic_idea-030-dual_of_filters.md "Dual of filters"

Just to make things easier,
let's fix a topological space $X$.
Denote by $\tau$ the family of *open sets*,
and by $\mathscr{P}(X)$, the family of subsets of $X$.
Also, $L$ is a *complete lattice*.


Filter, to *wannabe* prime ideal, to *wannabe* prime filter
-----------------------------------------------------------

In my [last post][closed],
we have seen that complements take a filter $\mathscr{F}$
to a *wannabe* prime ideal, $\mathscr{F}^c$.
I say *"wannabe"*, because it might not actually be an *ideal*...
but if it is a proper ideal, it shall be prime.
By polishing this a little,
we conclude that complements are a bijection between *filters* and *wannabe prime ideals*.
By restricting it to *prime filters*,
they are in a bijection with *prime ideals*.

On the other hand,
the *order dual* of a prime ideal $\mathscr{F}^c$ is the *prime filter* ${\mathscr{F}^c}^*$.
And this is also a bijection.

> **Disclaimer:**
> I have not really checked all those affirmations I made above. :sweat_smile::innocent:


Completely prime in five acts :performing_arts:
------------------------------------------------

### Original completely prime filter

Our original definition for a *completely prime filter* $\mathscr{F}$,
is that besides being non-empty and proper (not the whole lattice),

\begin{equation}
  \tag{CPF}
  \label{completely_prime_filter}
  \bigvee \mathscr{C} \in \mathscr{F}
  \Rightarrow
  \mathscr{C} \cap \mathscr{F} \neq \emptyset.
\end{equation}

This is a condition that the family, $\tau(x)$
of *open neighbouhoods* of some point must satisfy:
> If the union of a family of open sets contains $x$,
> it is because at least one member of this family already contains $x$.


### Complement prime ideal

Notice that, if $\mathscr{F}$ is *completely prime*, it is, a fortiori, *prime*.
And therefore, $\mathscr{F}^c$ is a *prime ideal*.
And not only that,
the *contrapositive* of equation \eqref{completely_prime_filter} implies that
$\mathscr{F}^c$ is closed by arbitrary *joins*:

\begin{equation}
  \mathscr{C} \subset \mathscr{F}^c
  \Rightarrow
  \bigvee \mathscr{C} \in \mathscr{F}^c.
\end{equation}

But, for a *prime ideal*, this is equivalent to $\mathscr{F}^c$ having a maximum:

\begin{equation}
  \bigvee \mathscr{F}^c \in \mathscr{F}^c.
\end{equation}

In fact, if $\mathscr{C} \subset \mathscr{F}^c$, since $\mathscr{F}^c$ is an *ideal*,

\begin{equation}
  \bigvee \mathscr{C}
  =
  \bigvee \mathscr{C} \wedge \bigvee \mathscr{F}^c \in \mathscr{F}^c.
\end{equation}


### With closed elements

If we look at ${\mathscr{F}^c}^*$, instead, we have just the same, but dual:

> The filter $\mathscr{F}$ is *completely prime* if, and only if,
> ${\mathscr{F}^c}^*$ is a *prime filter* with minimum element:
>
> \begin{equation}
>   {\bigwedge}_* {\mathscr{F}^c}^* \in {\mathscr{F}^c}^*.
> \end{equation}


### With prime open elements

An *ideal* $\mathscr{I}$ that has a maximum element $W$,
is just the ideal *generated* by $W$:

\begin{equation}
  \mathscr{I}_W
  =
  \{A \prec W\}.
\end{equation}

This ideal is *prime* if, and only if,

\begin{equation}
  A \wedge B \prec W
  \Rightarrow
  A \prec W
  \text{ or }
  B \prec W.
\end{equation}

In this case, we shall say that the element $W$ is prime.

This way, the $W$ prime elements are in bijection with the *completely prime filters*,
where the bijection and its inverse are given by

\begin{align}
  W
  &\mapsto
  \mathscr{F}_W = \{A \not \prec W\}
  \\
  \mathscr{F}
  &\mapsto
  W_{\mathscr{F}} = \bigvee \{A \not \in \mathscr{F}\}.
\end{align}

This bijection was used in the demonstration of proposition 1.3.1
in our main reference book:
{!citation/picado_point_free.md!}


### With $*$-prime closed elements

Just the same way,
the $*$-prime (in a dual sense) *closed elements*
are in bijection with the *completely prime fields*.
We are not actually saying anything,
because the definition for a proper filter $p^*$ being $*$-prime is: whenever $p$ is *prime*.
That is,

\begin{equation}
  p^* \prec_* f^* \vee g^*
  \Rightarrow
  p^* \prec_* f^*
  \text{ or }
  p^* \prec_* g^*.
\end{equation}

The model for this property is the closed sets of the form $\overline{\{x\}}$.
If the union of two closed sets contain $\overline{\{x\}}$,
it is because at least one of them contain $x$, and therefore, $\overline{\{x\}}$.

That is,
not only $\overline{\{x\}}$ is the smallest closed set that contains $x$.
It is also true that $\overline{\{x\}}$ cannot be covered by non-trivial closed sets.
By non-trivial, I mean to disallow closed sets that already contain the whole set.


The dual of being sober 🍻
--------------------------

All of the above are equivalent ways of saying $\mathscr{F}$ is *completely prime*.
And therefore,
they give us equivalent "dual" ways for deciding whether a topological space $X$
is or not *sober*.

> <div style="text-align: center; font-size: 300%;">:doughnut:&nbsp;🍻&nbsp;:doughnut:</div>
>
> **Figure:**
> Two doughnuts trying to be "not sober" using mugs that, in fact,
> are isomorphic to the doughnuts themselves!

Let me remind you that I have defined *sober* as:

> A topological space (X, $\tau)$ is **sober** when
> all *completely prime filters* are of the form $\tau(x)$
> for some $x \in X$.
>
> \begin{equation}
>   \tag{🍻}
>   \label{sober:open_filter}
>   \text{$\mathscr{F}$ completely prime }
>   \Leftrightarrow
>   \exists x \in X,\,
>   \mathscr{F} = \tau(x).
> \end{equation}

Do not forget that $\tau(x)$ is always *completely prime*.
So, the $(\Leftarrow)$ always holds.

Of course,
we can use any *completely prime filter* flavour from before
to give an equivalent definition for *sober*.
Let's do that only for *sets*.


### With prime open sets

Notice that

\begin{equation}
  \bigcup \tau(x)^c
  =
  X \setminus \overline{\{x\}}.
\end{equation}

Then, *sober* $\eqref{sober:open_filter}$ is:

> If $W \in \tau$ is a *prime open set*,
> that is, for any open sets $A,B \in \tau$,
>
> \begin{equation}
>   A \cap B \subset W
>   \Rightarrow
>   A \subset W
>   \text{ or }
>   B \subset W,
> \end{equation}
>
> then, $W = X \setminus \overline{\{x\}}$ for some $x \in X$.


### With $*$-prime closed sets

Notice that

\begin{equation}
  \bigcap \mathscr{c}(x)
  =
  \overline{\{x\}},
\end{equation}

where $\mathscr{c}(x)$ is the family of all closed sets that contain $x$.
Then, *sober* $\eqref{sober:open_filter}$ is:

> If $F \subset X$ is a *$*$-prime closed set*,
> that is, for any closed sets $P$ and $Q$,
>
> \begin{equation}
>   F \subset P \cup Q
>   \Rightarrow
>   F \subset P
>   \text{ or }
>   F \subset Q,
> \end{equation}
>
> then, $F = \overline{\{x\}}$ for some $x \in X$.


### Better naming convention

It seems that for those open sets above,
people do not call them *prime*.
They are called *meet-irreducible*.
And for what I have called *$*$-prime*,
people use *join-irreducible*.

I really find this "correct" way much better than mine!
It does not privilege *one* over *the other*.
It does not favour *open* over *closed*.
It is not *filter centred*, nor *ideal centred*.


Conclusion
----------

> <div style="text-align: center; font-size: 300%;">
>   🥳&nbsp;🍻&nbsp;:sunglasses:
> </div>
>
> <div style="text-align: center; font-size: 120%;">
>   Cheers!!!
> </div>

**PS:** I do not drink any alcohol, myself.


Change Log
----------

**2025-06-15:**
I have just realized that *meet-irreducible* and *join-irreducible* are much better naming.

