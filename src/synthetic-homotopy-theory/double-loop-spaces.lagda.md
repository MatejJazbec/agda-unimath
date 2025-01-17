# Double loop spaces

```agda
{-# OPTIONS --without-K --exact-split #-}

module synthetic-homotopy-theory.double-loop-spaces where

open import foundation.identity-types using
  ( Id; refl; left-unit; right-unit; _∙_; ap-id; ap; concat'; inv)
open import foundation.path-algebra using
  ( vertical-concat-Id²; horizontal-concat-Id²;
    left-unit-law-horizontal-concat-Id²; right-unit-law-horizontal-concat-Id²;
    interchange-Id²; z-concat-Id³; y-concat-Id³)
open import foundation.universe-levels using (Level; UU)

open import synthetic-homotopy-theory.iterated-loop-spaces using
  ( iterated-loop-space)
open import synthetic-homotopy-theory.pointed-types using
  ( Pointed-Type)
```

## Definition

```agda
module _
  {l : Level}
  where
  
  Ω² : Pointed-Type l → Pointed-Type l
  Ω² A = iterated-loop-space 2 A
  
  type-Ω² : {A : UU l} (a : A) → UU l
  type-Ω² a = Id (refl {x = a}) (refl {x = a})
  
  refl-Ω² : {A : UU l} {a : A} → type-Ω² a
  refl-Ω² = refl
```

```agda
vertical-concat-Ω² :
  {l : Level} {A : UU l} {a : A} → type-Ω² a → type-Ω² a → type-Ω² a
vertical-concat-Ω² α β = vertical-concat-Id² α β

horizontal-concat-Ω² :
  {l : Level} {A : UU l} {a : A} → type-Ω² a → type-Ω² a → type-Ω² a
horizontal-concat-Ω² α β = horizontal-concat-Id² α β

left-unit-law-vertical-concat-Ω² :
  {l : Level} {A : UU l} {a : A} {α : type-Ω² a} →
  Id (vertical-concat-Ω² refl-Ω² α) α
left-unit-law-vertical-concat-Ω² = left-unit

right-unit-law-vertical-concat-Ω² :
  {l : Level} {A : UU l} {a : A} {α : type-Ω² a} →
  Id (vertical-concat-Ω² α refl-Ω²) α
right-unit-law-vertical-concat-Ω² = right-unit

left-unit-law-horizontal-concat-Ω² :
  {l : Level} {A : UU l} {a : A} {α : type-Ω² a} →
  Id (horizontal-concat-Ω² refl-Ω² α) α
left-unit-law-horizontal-concat-Ω² {α = α} =
  ( left-unit-law-horizontal-concat-Id² α) ∙ (ap-id α)

naturality-right-unit :
  {l : Level} {A : UU l} {x y : A} {p q : Id x y} (α : Id p q) →
  Id (ap (concat' x refl) α ∙ right-unit) (right-unit ∙ α)
naturality-right-unit {p = refl} refl = refl

naturality-right-unit-Ω² :
  {l : Level} {A : UU l} {x : A} (α :  type-Ω² x) →
  Id (ap (concat' x refl) α) α
naturality-right-unit-Ω² α = inv right-unit ∙ naturality-right-unit α

right-unit-law-horizontal-concat-Ω² :
  {l : Level} {A : UU l} {a : A} {α : type-Ω² a} →
  Id (horizontal-concat-Ω² α refl-Ω²) α
right-unit-law-horizontal-concat-Ω² {α = α} =
  ( right-unit-law-horizontal-concat-Id² α) ∙ (naturality-right-unit-Ω² α)

interchange-Ω² :
  {l : Level} {A : UU l} {a : A} (α β γ δ : type-Ω² a) →
  Id ( horizontal-concat-Ω² (vertical-concat-Ω² α β) (vertical-concat-Ω² γ δ))
     ( vertical-concat-Ω² (horizontal-concat-Ω² α γ) (horizontal-concat-Ω² β δ))
interchange-Ω² α β γ δ = interchange-Id² α β γ δ

outer-eckmann-hilton-connection-Ω² :
  {l : Level} {A : UU l} {a : A} (α δ : type-Ω² a) →
  Id (horizontal-concat-Ω² α δ) (vertical-concat-Ω² α δ)
outer-eckmann-hilton-connection-Ω² α δ =
  ( z-concat-Id³ (inv right-unit) (inv left-unit)) ∙
  ( ( interchange-Ω² α refl refl δ) ∙
    ( y-concat-Id³
      ( right-unit-law-horizontal-concat-Ω² {α = α})
      ( left-unit-law-horizontal-concat-Ω² {α = δ})))

inner-eckmann-hilton-connection-Ω² :
  {l : Level} {A : UU l} {a : A} (β γ : type-Ω² a) →
  Id ( horizontal-concat-Ω² β γ) (vertical-concat-Ω² γ β)
inner-eckmann-hilton-connection-Ω² β γ =
  ( z-concat-Id³ (inv left-unit) (inv right-unit)) ∙
  ( ( interchange-Ω² refl β γ refl) ∙
    ( y-concat-Id³
      ( left-unit-law-horizontal-concat-Ω² {α = γ})
      ( right-unit-law-horizontal-concat-Ω² {α = β})))

eckmann-hilton-Ω² :
  {l : Level} {A : UU l} {a : A} (α β : type-Ω² a) →
  Id (α ∙ β) (β ∙ α)
eckmann-hilton-Ω² α β =
  ( inv (outer-eckmann-hilton-connection-Ω² α β)) ∙
  ( inner-eckmann-hilton-connection-Ω² α β)
```
