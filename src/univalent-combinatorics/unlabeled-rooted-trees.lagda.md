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

An unlabelled rooted tree is an unlabelled tree equipped with a vertex.

## Definition


```agda
unlabeled-rooted-trees : {l : Level} → species (lsuc l)
unlabeled-rooted-trees {l} X = (trees X) × (type-𝔽 X)

```
