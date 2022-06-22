---
title: Pointed unlabelled trees
---

```agda
{-# OPTIONS --without-K --exact-split #-}

module univalent-combinatorics.pointed-unlabeled-trees where


open import univalent-combinatorics.unlabeled-trees
open import univalent-combinatorics.finite-types


open import foundation.universe-levels
open import univalent-combinatorics.species using (species)

open import foundation.dependent-pair-types
open import foundation.cartesian-product-types

```

```agda
pointed-trees : {l : Level} → species (lsuc l)
pointed-trees {l} X = (trees X) × (type-𝔽 X)

```