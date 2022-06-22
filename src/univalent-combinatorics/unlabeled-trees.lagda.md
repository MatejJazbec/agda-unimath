---
title: Unlabelled trees
---

```agda
{-# OPTIONS --without-K --exact-split #-}

module univalent-combinatorics.unlabeled-trees where

open import foundation.dependent-pair-types

open import foundation.empty-types using (is-empty)
open import foundation.universe-levels
open import foundation.unordered-pairs
open import foundation.cartesian-product-types

open import graph-theory.simple-undirected-graphs
open import graph-theory.undirected-graphs using
    (Undirected-Graph)
open import graph-theory.cycles-undirected-graphs using
    (cycle-Undirected-Graph)

open import graph-theory.connected-undirected-graphs

open import elementary-number-theory.natural-numbers

open import univalent-combinatorics.species using (species)
open import univalent-combinatorics.finite-types
```

## Idea

An unlabeled tree is an undirected acyclic graph `G`.

## Definition

The type species of unlabeled trees is the sigma of connected trees over the type of finite types.

```agda
is-acyclic : {l1 l2 : Level} → Undirected-Graph l1 l2
            → UU (lsuc lzero ⊔ l1 ⊔ l2)
is-acyclic G = (k : ℕ) → is-empty
                        (cycle-Undirected-Graph k G)

unlabeled-trees : {l : Level} → species (lsuc l)
unlabeled-trees {l} X = Σ
            (unordered-pair (type-𝔽 X) → UU l)
            (λ E →
                ((is-connected-Undirected-Graph (pair (type-𝔽 X) E))
                    ×
                (is-acyclic (pair (type-𝔽 X) E)))
                )
           
```     
 