# Homomorphisms of commutative rings

```agda
{-# OPTIONS --without-K --exact-split #-}

module ring-theory.homomorphisms-commutative-rings where

open import foundation.universe-levels using (Level; UU; _⊔_)

open import ring-theory.commutative-rings using (Comm-Ring; ring-Comm-Ring)
open import ring-theory.homomorphisms-rings using (type-hom-Ring)
```

## Idea

A morphism of commutative rings is just a morphism between their underlying rings.

## Definition

```agda
type-hom-Comm-Ring :
  { l1 l2 : Level} → Comm-Ring l1 → Comm-Ring l2 → UU (l1 ⊔ l2)
type-hom-Comm-Ring R1 R2 = type-hom-Ring (ring-Comm-Ring R1) (ring-Comm-Ring R2)
```
