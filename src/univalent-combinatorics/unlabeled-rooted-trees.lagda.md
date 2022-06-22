---
title: Unlabeled rooted trees
---

```agda
{-# OPTIONS --without-K --exact-split #-}

module univalent-combinatorics.unlabeled-rooted-trees where


open import univalent-combinatorics.unlabeled-trees
open import univalent-combinatorics.finite-types


open import foundation.universe-levels
open import univalent-combinatorics.species using (species)

open import foundation.dependent-pair-types
open import foundation.cartesian-product-types

```

## Idea

An unlabeled rooted tree is an unlabeled tree equipped with a vertex.

## Definition

The type species of unlabeled rooted trees is the pair of unlabeled trees over the type of a
finite type.


```agda
rooted-tree : {l : Level} → species (lsuc l)
rooted-tree {l} X = (tree X) × (type-𝔽 X)

unlabeled-rooted-tree : {l : Level} → UU (lsuc l) 
unlabeled-rooted-tree {l} = Σ (𝔽) (λ X → rooted-tree {l} X)
```