# Multiplication of matrices

<pre class="Agda"><a id="39" class="Symbol">{-#</a> <a id="43" class="Keyword">OPTIONS</a> <a id="51" class="Pragma">--without-K</a> <a id="63" class="Pragma">--exact-split</a> <a id="77" class="Symbol">#-}</a>

<a id="82" class="Keyword">module</a> <a id="89" href="linear-algebra.multiplication-matrices.html" class="Module">linear-algebra.multiplication-matrices</a> <a id="128" class="Keyword">where</a>

<a id="135" class="Keyword">open</a> <a id="140" class="Keyword">import</a> <a id="147" href="elementary-number-theory.natural-numbers.html" class="Module">elementary-number-theory.natural-numbers</a> <a id="188" class="Keyword">using</a> <a id="194" class="Symbol">(</a><a id="195" href="elementary-number-theory.natural-numbers.html#1444" class="Datatype">ℕ</a><a id="196" class="Symbol">;</a> <a id="198" href="elementary-number-theory.natural-numbers.html#1465" class="InductiveConstructor">zero-ℕ</a><a id="204" class="Symbol">;</a> <a id="206" href="elementary-number-theory.natural-numbers.html#1478" class="InductiveConstructor">succ-ℕ</a><a id="212" class="Symbol">)</a>

<a id="215" class="Keyword">open</a> <a id="220" class="Keyword">import</a> <a id="227" href="foundation.universe-levels.html" class="Module">foundation.universe-levels</a> <a id="254" class="Keyword">using</a> <a id="260" class="Symbol">(</a><a id="261" href="Agda.Primitive.html#597" class="Postulate">Level</a><a id="266" class="Symbol">;</a> <a id="268" href="foundation-core.universe-levels.html#222" class="Primitive">UU</a><a id="270" class="Symbol">)</a>

<a id="273" class="Keyword">open</a> <a id="278" class="Keyword">import</a> <a id="285" href="linear-algebra.constant-vectors.html" class="Module">linear-algebra.constant-vectors</a> <a id="317" class="Keyword">using</a> <a id="323" class="Symbol">(</a><a id="324" href="linear-algebra.constant-vectors.html#463" class="Function">constant-vec</a><a id="336" class="Symbol">)</a>
<a id="338" class="Keyword">open</a> <a id="343" class="Keyword">import</a> <a id="350" href="linear-algebra.matrices-on-rings.html" class="Module">linear-algebra.matrices-on-rings</a> <a id="383" class="Keyword">using</a> <a id="389" class="Symbol">(</a><a id="390" href="linear-algebra.matrices-on-rings.html#922" class="Function">matrix-Ring</a><a id="401" class="Symbol">)</a>
<a id="403" class="Keyword">open</a> <a id="408" class="Keyword">import</a> <a id="415" href="linear-algebra.vectors.html" class="Module">linear-algebra.vectors</a> <a id="438" class="Keyword">using</a> <a id="444" class="Symbol">(</a><a id="445" href="linear-algebra.vectors.html#518" class="InductiveConstructor">empty-vec</a><a id="454" class="Symbol">;</a> <a id="456" href="linear-algebra.vectors.html#545" class="InductiveConstructor Operator">_∷_</a><a id="459" class="Symbol">)</a>
<a id="461" class="Keyword">open</a> <a id="466" class="Keyword">import</a> <a id="473" href="linear-algebra.vectors-on-rings.html" class="Module">linear-algebra.vectors-on-rings</a> <a id="505" class="Keyword">using</a> <a id="511" class="Symbol">(</a><a id="512" href="linear-algebra.vectors-on-rings.html#1297" class="Function">vec-Ring</a><a id="520" class="Symbol">)</a>

<a id="523" class="Keyword">open</a> <a id="528" class="Keyword">import</a> <a id="535" href="ring-theory.rings.html" class="Module">ring-theory.rings</a> <a id="553" class="Keyword">using</a> <a id="559" class="Symbol">(</a><a id="560" href="ring-theory.rings.html#1734" class="Function">Ring</a><a id="564" class="Symbol">;</a> <a id="566" href="ring-theory.rings.html#2030" class="Function">type-Ring</a><a id="575" class="Symbol">)</a>
</pre>
## Definition

### Multiplication of matrices

<pre class="Agda"><a id="637" class="Comment">{-
mul-vector-matrix : {l : Level} → {K : UU l} → {m n : ℕ} →
                     (K → K → K) → (K → K → K) → K →
                     vec K m → Mat K m n → vec K n
mul-vector-matrix _ _ zero empty-vec empty-vec = diagonal zero
mul-vector-matrix mulK addK zero (x ∷ xs) (v ∷ vs) =
  add-vec addK (mul-scalar-vector mulK x v)
               (mul-vector-matrix mulK addK zero xs vs)

mul-Mat : {l&#39; : Level} → {K : UU l&#39;} → {l m n : ℕ} →
          (K → K → K) → (K → K → K) → K →
          Mat K l m → Mat K m n → Mat K l n
mul-Mat _ _ zero empty-vec _ = empty-vec
mul-Mat mulK addK zero (v ∷ vs) m =
  mul-vector-matrix mulK addK zero v m
    ∷ mul-Mat mulK addK zero vs m
-}</a>
</pre>
## Properties

<pre class="Agda"><a id="1340" class="Comment">{-
mul-transpose :
  {l : Level} → {K : UU l} → {m n p : ℕ} →
  {addK : K → K → K} {mulK : K → K → K} {zero : K} →
  ((x y : K) → Id (mulK x y) (mulK y x)) →
  (a : Mat K m n) → (b : Mat K n p) →
  Id (transpose (mul-Mat mulK addK zero a b)) (mul-Mat mulK addK zero (transpose b) (transpose a))
mul-transpose mulK-comm empty-vec b = {!!}
mul-transpose mulK-comm (a ∷ as) b = {!!}
-}</a>
</pre>
## Properties of Matrix Multiplication

 - distributive laws (incomplete)
 - associativity (TODO)
 - identity (TODO)

<pre class="Agda"><a id="1854" class="Comment">{-
module _
  {l : Level}
  {K : UU l}
  {addK : K → K → K}
  {mulK : K → K → K}
  {zero : K}
  where

  left-distributive-vector-matrix :
    {n m : ℕ} →
    ({l : ℕ} →  Id (diagonal {n = l} zero) (add-vec addK (diagonal zero) (diagonal zero))) →
    ((x y z : K) → (Id (mulK x (addK y z)) (addK (mulK x y) (mulK x z)))) →
    ((x y : K) → Id (addK x y) (addK y x)) →
    ((x y z : K) → Id (addK x (addK y z)) (addK (addK x y) z)) →
    (a : vec K n) (b : Mat K n m) (c : Mat K n m) →
    Id (mul-vector-matrix mulK addK zero a (add-Mat addK b c))
      (add-vec addK (mul-vector-matrix mulK addK zero a b)
                    (mul-vector-matrix mulK addK zero a c))
  left-distributive-vector-matrix id-vec _ _ _ empty-vec empty-vec empty-vec = id-vec
  left-distributive-vector-matrix id-vec k-distr addK-comm addK-assoc (a ∷ as) (r1 ∷ r1s) (r2 ∷ r2s) =
      ap (λ r → add-vec addK r (mul-vector-matrix mulK addK zero as (add-Mat addK r1s r2s)))
        (left-distributive-scalar-vector {zero = zero} k-distr a r1 r2)
        ∙ (ap (λ r → add-vec addK (add-vec addK (map-vec (mulK a) r1)
                                  (mul-scalar-vector mulK a r2)) r)
              (left-distributive-vector-matrix id-vec k-distr addK-comm addK-assoc as r1s r2s)
          ∙ lemma-shuffle)
    where
    lemma-shuffle : {n : ℕ} →
                    {x y z w : vec K n} →
                    Id (add-vec addK (add-vec addK x y) (add-vec addK z w))
                       (add-vec addK (add-vec addK x z) (add-vec addK y w))
    lemma-shuffle {x = x} {y = y} {z = z} {w = w} =
      associative-add-vectors {zero = zero} addK-assoc (add-vec addK x y) z w
        ∙ (commutative-add-vectors {zero = zero} addK-comm (add-vec addK (add-vec addK x y) z) w
        ∙ (associative-add-vectors {zero = zero} addK-assoc w (add-vec addK x y) z
        ∙ (ap (λ v → add-vec addK (add-vec addK w v) z)
              (commutative-add-vectors {zero = zero} addK-comm x y)
        ∙ (ap (λ v → add-vec addK v z)
              (associative-add-vectors {zero = zero} addK-assoc w y x)
        ∙ (ap (λ v → add-vec addK (add-vec addK v x) z)
              (commutative-add-vectors {zero = zero} addK-comm w y)
        ∙ (inv (associative-add-vectors {zero = zero} addK-assoc (add-vec addK y w) x z)
        ∙ commutative-add-vectors {zero = zero} addK-comm (add-vec addK y w) (add-vec addK x z)))))))

  left-distributive-matrices :
    {n m p : ℕ} →
    ({l : ℕ} →  Id (diagonal {n = l} zero) (add-vec addK (diagonal zero) (diagonal zero))) →
    ((x y z : K) → (Id (mulK x (addK y z)) (addK (mulK x y) (mulK x z)))) →
    ((x y : K) → Id (addK x y) (addK y x)) →
    ((x y z : K) → Id (addK x (addK y z)) (addK (addK x y) z)) →
    (a : Mat K m n) (b : Mat K n p) (c : Mat K n p) →
    Id (mul-Mat mulK addK zero a (add-Mat addK b c))
       (add-Mat addK (mul-Mat mulK addK zero a b)
                     (mul-Mat mulK addK zero a c))
  left-distributive-matrices _ _ _ _ empty-vec _ _ = refl
  left-distributive-matrices id-vec k-distr addK-comm addK-assoc (a ∷ as) b c =
    (ap (λ r → r ∷ mul-Mat mulK addK zero as (add-Mat addK b c))
        (left-distributive-vector-matrix id-vec k-distr addK-comm addK-assoc a b c))
      ∙ ap (_∷_ (add-vec addK (mul-vector-matrix mulK addK zero a b)
                              (mul-vector-matrix mulK addK zero a c)))
          (left-distributive-matrices id-vec k-distr addK-comm addK-assoc as b c)
-}</a>

<a id="5280" class="Comment">{- TODO: right distributivity
  right-distributive-matrices :
    {n m p : ℕ} →
    ({l : ℕ} →  Id (diagonal {n = l} zero) (add-vec addK (diagonal zero) (diagonal zero))) →
    ((x y z : K) → (Id (mulK (addK x y) z) (addK (mulK x z) (mulK y z)))) →
    ((x y : K) → Id (addK x y) (addK y x)) →
    ((x y z : K) → Id (addK x (addK y z)) (addK (addK x y) z)) →
    (b : Mat K n p) (c : Mat K n p) (d : Mat K p m) →
    Id (mul-Mat mulK addK zero (add-Mat addK b c) d)
       (add-Mat addK (mul-Mat mulK addK zero b d)
                     (mul-Mat mulK addK zero c d))
  right-distributive-matrices _ _ _ _ empty-vec empty-vec _ = refl
  right-distributive-matrices {p = .zero-ℕ} id-vec k-distr addK-comm addK-assoc (b ∷ bs) (c ∷ cs) empty-vec = {!!}
  right-distributive-matrices id-vec k-distr addK-comm addK-assoc (b ∷ bs) (c ∷ cs) (d ∷ ds) = {!!}
  -- this might also need a proof that zero is the additive identity

  TODO: associativity
  associative-mul-matrices :
  {l : Level} {K : UU l} {n m p q : ℕ} →
  {addK : K → K → K} {mulK : K → K → K} {zero : K} →
  (x : Mat K m n) → (y : Mat K n p) → (z : Mat K p q) →
  Id (mul-Mat mulK addK zero x (mul-Mat mulK addK zero y z))
  (mul-Mat mulK addK zero (mul-Mat mulK addK zero x y) z)
  associative-mul-matrices x y z = {!!}
-}</a>
</pre>