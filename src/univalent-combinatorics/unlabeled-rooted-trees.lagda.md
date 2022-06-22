---
title: Unlabelled rooted trees
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
unlabeled-rooted-trees : {l : Level} → species (lsuc l)
unlabeled-rooted-trees {l} X = (unlabeled-trees X) × (type-𝔽 X)

```
