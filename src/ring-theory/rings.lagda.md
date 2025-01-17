# Rings

```agda
{-# OPTIONS --without-K --exact-split #-}

module ring-theory.rings where

open import foundation.cartesian-product-types using (_×_)
open import foundation.dependent-pair-types using (Σ; pair; pr1; pr2)
open import foundation.identity-types using (Id)
open import foundation.sets using (UU-Set; is-set)
open import foundation.universe-levels using (Level; UU; lsuc)

open import group-theory.abelian-groups using
  ( Ab; set-Ab; type-Ab; add-Ab; group-Ab; is-set-type-Ab;
    has-associative-add-Ab; associative-add-Ab; semigroup-Ab; is-group-Ab;
    has-zero-Ab; zero-Ab;
    left-unit-law-add-Ab; right-unit-law-add-Ab; has-negatives-Ab; neg-Ab;
    left-inverse-law-add-Ab; right-inverse-law-add-Ab; commutative-add-Ab)
open import group-theory.groups using (Group; is-group; is-group')
open import group-theory.monoids using
  ( is-unital; Monoid; unit-Monoid; left-unit-law-Monoid; right-unit-law-Monoid)
open import group-theory.semigroups using
  ( has-associative-mul-Set; Semigroup)
```

## Idea

The concept of ring vastly generalizes the arithmetical structure on the integers. A ring consists of a set equipped with additian and multiplication, where the addition operation gives the ring the structure of an abelian group, and the multiplication is associative, unital, and distributive over addition.

## Definition

```agda
has-mul-Ab : {l1 : Level} (A : Ab l1) → UU l1
has-mul-Ab A =
  Σ ( has-associative-mul-Set (set-Ab A))
    ( λ μ →
      ( is-unital (pair (set-Ab A) μ)) ×
      ( ( (a b c : type-Ab A) →
          Id (pr1 μ a (add-Ab A b c)) (add-Ab A (pr1 μ a b) (pr1 μ a c))) ×
        ( (a b c : type-Ab A) →
          Id (pr1 μ (add-Ab A a b) c) (add-Ab A (pr1 μ a c) (pr1 μ b c)))))

Ring : (l1 : Level) → UU (lsuc l1)
Ring l1 = Σ (Ab l1) has-mul-Ab

ab-Ring : {l1 : Level} → Ring l1 → Ab l1
ab-Ring R = pr1 R

group-Ring :
  {l : Level} (R : Ring l) → Group l
group-Ring R = group-Ab (ab-Ring R)

set-Ring :
  {l : Level} (R : Ring l) → UU-Set l
set-Ring R = set-Ab (ab-Ring R)

type-Ring :
  {l : Level} (R : Ring l) → UU l
type-Ring R = type-Ab (ab-Ring R)

is-set-type-Ring :
  {l : Level} (R : Ring l) → is-set (type-Ring R)
is-set-type-Ring R = is-set-type-Ab (ab-Ring R)

has-associative-add-Ring :
  {l : Level} (R : Ring l) → has-associative-mul-Set (set-Ring R)
has-associative-add-Ring R = has-associative-add-Ab (ab-Ring R)

add-Ring :
  {l : Level} (R : Ring l) → type-Ring R → type-Ring R → type-Ring R
add-Ring R = add-Ab (ab-Ring R)

associative-add-Ring :
  {l : Level} (R : Ring l) (x y z : type-Ring R) →
  Id (add-Ring R (add-Ring R x y) z) (add-Ring R x (add-Ring R y z))
associative-add-Ring R = associative-add-Ab (ab-Ring R)

additive-semigroup-Ring :
  {l : Level} (R : Ring l) → Semigroup l
additive-semigroup-Ring R = semigroup-Ab (ab-Ring R)

is-group-additive-semigroup-Ring :
  {l : Level} (R : Ring l) → is-group (additive-semigroup-Ring R)
is-group-additive-semigroup-Ring R = is-group-Ab (ab-Ring R)

has-zero-Ring :
  {l : Level} (R : Ring l) → is-unital (additive-semigroup-Ring R)
has-zero-Ring R = has-zero-Ab (ab-Ring R)

zero-Ring :
  {l : Level} (R : Ring l) → type-Ring R
zero-Ring R = zero-Ab (ab-Ring R)

left-unit-law-add-Ring :
  {l : Level} (R : Ring l) (x : type-Ring R) →
  Id (add-Ring R (zero-Ring R) x) x
left-unit-law-add-Ring R = left-unit-law-add-Ab (ab-Ring R)

right-unit-law-add-Ring :
  {l : Level} (R : Ring l) (x : type-Ring R) →
  Id (add-Ring R x (zero-Ring R)) x
right-unit-law-add-Ring R = right-unit-law-add-Ab (ab-Ring R)

has-negatives-Ring :
  {l : Level} (R : Ring l) →
  is-group' (additive-semigroup-Ring R) (has-zero-Ring R)
has-negatives-Ring R = has-negatives-Ab (ab-Ring R)

neg-Ring :
  {l : Level} (R : Ring l) → type-Ring R → type-Ring R
neg-Ring R = neg-Ab (ab-Ring R)

left-inverse-law-add-Ring :
  {l : Level} (R : Ring l) (x : type-Ring R) →
  Id (add-Ring R (neg-Ring R x) x) (zero-Ring R)
left-inverse-law-add-Ring R = left-inverse-law-add-Ab (ab-Ring R)

right-inverse-law-add-Ring :
  {l : Level} (R : Ring l) (x : type-Ring R) →
  Id (add-Ring R x (neg-Ring R x)) (zero-Ring R)
right-inverse-law-add-Ring R = right-inverse-law-add-Ab (ab-Ring R)

commutative-add-Ring :
  {l : Level} (R : Ring l) (x y : type-Ring R) →
  Id (add-Ring R x y) (add-Ring R y x)
commutative-add-Ring R = commutative-add-Ab (ab-Ring R)

has-associative-mul-Ring :
  {l : Level} (R : Ring l) → has-associative-mul-Set (set-Ring R)
has-associative-mul-Ring R = pr1 (pr2 R)

mul-Ring :
  {l : Level} (R : Ring l) → type-Ring R → type-Ring R → type-Ring R
mul-Ring R = pr1 (has-associative-mul-Ring R)

associative-mul-Ring :
  {l : Level} (R : Ring l) (x y z : type-Ring R) →
  Id (mul-Ring R (mul-Ring R x y) z) (mul-Ring R x (mul-Ring R y z))
associative-mul-Ring R = pr2 (has-associative-mul-Ring R)

multiplicative-semigroup-Ring :
  {l : Level} (R : Ring l) → Semigroup l
multiplicative-semigroup-Ring R =
  pair (set-Ring R) (has-associative-mul-Ring R)

is-unital-Ring :
  {l : Level} (R : Ring l) → is-unital (multiplicative-semigroup-Ring R)
is-unital-Ring R = pr1 (pr2 (pr2 R))

multiplicative-monoid-Ring :
  {l : Level} (R : Ring l) → Monoid l
multiplicative-monoid-Ring R =
  pair (multiplicative-semigroup-Ring R) (is-unital-Ring R)

unit-Ring :
  {l : Level} (R : Ring l) → type-Ring R
unit-Ring R = unit-Monoid (multiplicative-monoid-Ring R)

left-unit-law-mul-Ring :
  {l : Level} (R : Ring l) (x : type-Ring R) →
  Id (mul-Ring R (unit-Ring R) x) x
left-unit-law-mul-Ring R = left-unit-law-Monoid (multiplicative-monoid-Ring R)

right-unit-law-mul-Ring :
  {l : Level} (R : Ring l) (x : type-Ring R) →
  Id (mul-Ring R x (unit-Ring R)) x
right-unit-law-mul-Ring R = right-unit-law-Monoid (multiplicative-monoid-Ring R)

left-distributive-law-mul-add-Ring :
  {l : Level} (R : Ring l) (x y z : type-Ring R) →
  Id ( mul-Ring R x (add-Ring R y z))
     ( add-Ring R (mul-Ring R x y) (mul-Ring R x z))
left-distributive-law-mul-add-Ring R =
  pr1 (pr2 (pr2 (pr2 R)))

right-distributive-law-mul-add-Ring :
  {l : Level} (R : Ring l) (x y z : type-Ring R) →
  Id ( mul-Ring R (add-Ring R x y) z)
     ( add-Ring R (mul-Ring R x z) (mul-Ring R y z))
right-distributive-law-mul-add-Ring R =
  pr2 (pr2 (pr2 (pr2 R)))
```
