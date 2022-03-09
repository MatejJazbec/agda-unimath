# Uniqueness of the truncations

<pre class="Agda"><a id="42" class="Symbol">{-#</a> <a id="46" class="Keyword">OPTIONS</a> <a id="54" class="Pragma">--without-K</a> <a id="66" class="Pragma">--exact-split</a> <a id="80" class="Pragma">--allow-unsolved-metas</a> <a id="103" class="Symbol">#-}</a>

<a id="108" class="Keyword">module</a> <a id="115" href="foundation.uniqueness-truncation.html" class="Module">foundation.uniqueness-truncation</a> <a id="148" class="Keyword">where</a>

<a id="155" class="Keyword">open</a> <a id="160" class="Keyword">import</a> <a id="167" href="foundation.dependent-pair-types.html" class="Module">foundation.dependent-pair-types</a> <a id="199" class="Keyword">using</a> <a id="205" class="Symbol">(</a><a id="206" href="foundation-core.dependent-pair-types.html#502" class="Record">Σ</a><a id="207" class="Symbol">;</a> <a id="209" href="foundation-core.dependent-pair-types.html#575" class="InductiveConstructor">pair</a><a id="213" class="Symbol">;</a> <a id="215" href="foundation-core.dependent-pair-types.html#592" class="Field">pr1</a><a id="218" class="Symbol">;</a> <a id="220" href="foundation-core.dependent-pair-types.html#604" class="Field">pr2</a><a id="223" class="Symbol">)</a>
<a id="225" class="Keyword">open</a> <a id="230" class="Keyword">import</a> <a id="237" href="foundation.equivalences.html" class="Module">foundation.equivalences</a> <a id="261" class="Keyword">using</a> <a id="267" class="Symbol">(</a><a id="268" href="foundation-core.equivalences.html#1542" class="Function">is-equiv</a><a id="276" class="Symbol">)</a>
<a id="278" class="Keyword">open</a> <a id="283" class="Keyword">import</a> <a id="290" href="foundation.functions.html" class="Module">foundation.functions</a> <a id="311" class="Keyword">using</a> <a id="317" class="Symbol">(</a><a id="318" href="foundation-core.functions.html#407" class="Function Operator">_∘_</a><a id="321" class="Symbol">;</a> <a id="323" href="foundation-core.functions.html#309" class="Function">id</a><a id="325" class="Symbol">)</a>
<a id="327" class="Keyword">open</a> <a id="332" class="Keyword">import</a> <a id="339" href="foundation.homotopies.html" class="Module">foundation.homotopies</a> <a id="361" class="Keyword">using</a> <a id="367" class="Symbol">(</a><a id="368" href="foundation-core.homotopies.html#467" class="Function Operator">_~_</a><a id="371" class="Symbol">)</a>
<a id="373" class="Keyword">open</a> <a id="378" class="Keyword">import</a> <a id="385" href="foundation.truncated-types.html" class="Module">foundation.truncated-types</a> <a id="412" class="Keyword">using</a>
  <a id="420" class="Symbol">(</a> <a id="422" href="foundation-core.truncated-types.html#1651" class="Function">UU-Truncated-Type</a><a id="439" class="Symbol">;</a> <a id="441" href="foundation-core.truncated-types.html#1792" class="Function">type-Truncated-Type</a><a id="460" class="Symbol">;</a> <a id="462" href="foundation.truncated-types.html#3516" class="Function">type-hom-Truncated-Type</a><a id="485" class="Symbol">)</a>
<a id="487" class="Keyword">open</a> <a id="492" class="Keyword">import</a> <a id="499" href="foundation.truncation-levels.html" class="Module">foundation.truncation-levels</a> <a id="528" class="Keyword">using</a> <a id="534" class="Symbol">(</a><a id="535" href="foundation-core.truncation-levels.html#382" class="Datatype">𝕋</a><a id="536" class="Symbol">)</a>
<a id="538" class="Keyword">open</a> <a id="543" class="Keyword">import</a> <a id="550" href="foundation.universal-property-truncation.html" class="Module">foundation.universal-property-truncation</a> <a id="591" class="Keyword">using</a>
  <a id="599" class="Symbol">(</a> <a id="601" href="foundation.universal-property-truncation.html#2009" class="Function">is-truncation</a><a id="614" class="Symbol">)</a>
<a id="616" class="Keyword">open</a> <a id="621" class="Keyword">import</a> <a id="628" href="foundation.universe-levels.html" class="Module">foundation.universe-levels</a> <a id="655" class="Keyword">using</a> <a id="661" class="Symbol">(</a><a id="662" href="Agda.Primitive.html#597" class="Postulate">Level</a><a id="667" class="Symbol">;</a> <a id="669" href="foundation-core.universe-levels.html#222" class="Primitive">UU</a><a id="671" class="Symbol">)</a>
</pre>
## Idea

The universal property of n-truncations implies that n-truncations are determined uniquely up to a unique equivalence.

<pre class="Agda"><a id="815" class="Keyword">module</a> <a id="822" href="foundation.uniqueness-truncation.html#822" class="Module">_</a>
  <a id="826" class="Symbol">{</a><a id="827" href="foundation.uniqueness-truncation.html#827" class="Bound">l1</a> <a id="830" href="foundation.uniqueness-truncation.html#830" class="Bound">l2</a> <a id="833" href="foundation.uniqueness-truncation.html#833" class="Bound">l3</a> <a id="836" class="Symbol">:</a> <a id="838" href="Agda.Primitive.html#597" class="Postulate">Level</a><a id="843" class="Symbol">}</a> <a id="845" class="Symbol">(</a><a id="846" href="foundation.uniqueness-truncation.html#846" class="Bound">k</a> <a id="848" class="Symbol">:</a> <a id="850" href="foundation-core.truncation-levels.html#382" class="Datatype">𝕋</a><a id="851" class="Symbol">)</a> <a id="853" class="Symbol">{</a><a id="854" href="foundation.uniqueness-truncation.html#854" class="Bound">A</a> <a id="856" class="Symbol">:</a> <a id="858" href="foundation-core.universe-levels.html#222" class="Primitive">UU</a> <a id="861" href="foundation.uniqueness-truncation.html#827" class="Bound">l1</a><a id="863" class="Symbol">}</a>
  <a id="867" class="Symbol">(</a><a id="868" href="foundation.uniqueness-truncation.html#868" class="Bound">B</a> <a id="870" class="Symbol">:</a> <a id="872" href="foundation-core.truncated-types.html#1651" class="Function">UU-Truncated-Type</a> <a id="890" href="foundation.uniqueness-truncation.html#830" class="Bound">l2</a> <a id="893" href="foundation.uniqueness-truncation.html#846" class="Bound">k</a><a id="894" class="Symbol">)</a> <a id="896" class="Symbol">(</a><a id="897" href="foundation.uniqueness-truncation.html#897" class="Bound">f</a> <a id="899" class="Symbol">:</a> <a id="901" href="foundation.uniqueness-truncation.html#854" class="Bound">A</a> <a id="903" class="Symbol">→</a> <a id="905" href="foundation-core.truncated-types.html#1792" class="Function">type-Truncated-Type</a> <a id="925" href="foundation.uniqueness-truncation.html#868" class="Bound">B</a><a id="926" class="Symbol">)</a>
  <a id="930" class="Symbol">(</a><a id="931" href="foundation.uniqueness-truncation.html#931" class="Bound">C</a> <a id="933" class="Symbol">:</a> <a id="935" href="foundation-core.truncated-types.html#1651" class="Function">UU-Truncated-Type</a> <a id="953" href="foundation.uniqueness-truncation.html#833" class="Bound">l3</a> <a id="956" href="foundation.uniqueness-truncation.html#846" class="Bound">k</a><a id="957" class="Symbol">)</a> <a id="959" class="Symbol">(</a><a id="960" href="foundation.uniqueness-truncation.html#960" class="Bound">g</a> <a id="962" class="Symbol">:</a> <a id="964" href="foundation.uniqueness-truncation.html#854" class="Bound">A</a> <a id="966" class="Symbol">→</a> <a id="968" href="foundation-core.truncated-types.html#1792" class="Function">type-Truncated-Type</a> <a id="988" href="foundation.uniqueness-truncation.html#931" class="Bound">C</a><a id="989" class="Symbol">)</a>
  <a id="993" class="Symbol">{</a><a id="994" href="foundation.uniqueness-truncation.html#994" class="Bound">h</a> <a id="996" class="Symbol">:</a> <a id="998" href="foundation.truncated-types.html#3516" class="Function">type-hom-Truncated-Type</a> <a id="1022" href="foundation.uniqueness-truncation.html#846" class="Bound">k</a> <a id="1024" href="foundation.uniqueness-truncation.html#868" class="Bound">B</a> <a id="1026" href="foundation.uniqueness-truncation.html#931" class="Bound">C</a><a id="1027" class="Symbol">}</a> <a id="1029" class="Symbol">(</a><a id="1030" href="foundation.uniqueness-truncation.html#1030" class="Bound">H</a> <a id="1032" class="Symbol">:</a> <a id="1034" class="Symbol">(</a><a id="1035" href="foundation.uniqueness-truncation.html#994" class="Bound">h</a> <a id="1037" href="foundation-core.functions.html#407" class="Function Operator">∘</a> <a id="1039" href="foundation.uniqueness-truncation.html#897" class="Bound">f</a><a id="1040" class="Symbol">)</a> <a id="1042" href="foundation-core.homotopies.html#467" class="Function Operator">~</a> <a id="1044" href="foundation.uniqueness-truncation.html#960" class="Bound">g</a><a id="1045" class="Symbol">)</a>
  <a id="1049" class="Keyword">where</a>

  <a id="1058" class="Keyword">abstract</a>
    <a id="1071" href="foundation.uniqueness-truncation.html#1071" class="Function">is-equiv-is-truncation-is-truncation</a> <a id="1108" class="Symbol">:</a>
      <a id="1116" class="Symbol">({</a><a id="1118" href="foundation.uniqueness-truncation.html#1118" class="Bound">l</a> <a id="1120" class="Symbol">:</a> <a id="1122" href="Agda.Primitive.html#597" class="Postulate">Level</a><a id="1127" class="Symbol">}</a> <a id="1129" class="Symbol">→</a> <a id="1131" href="foundation.universal-property-truncation.html#2009" class="Function">is-truncation</a> <a id="1145" href="foundation.uniqueness-truncation.html#1118" class="Bound">l</a> <a id="1147" href="foundation.uniqueness-truncation.html#868" class="Bound">B</a> <a id="1149" href="foundation.uniqueness-truncation.html#897" class="Bound">f</a><a id="1150" class="Symbol">)</a> <a id="1152" class="Symbol">→</a>
      <a id="1160" class="Symbol">({</a><a id="1162" href="foundation.uniqueness-truncation.html#1162" class="Bound">l</a> <a id="1164" class="Symbol">:</a> <a id="1166" href="Agda.Primitive.html#597" class="Postulate">Level</a><a id="1171" class="Symbol">}</a> <a id="1173" class="Symbol">→</a> <a id="1175" href="foundation.universal-property-truncation.html#2009" class="Function">is-truncation</a> <a id="1189" href="foundation.uniqueness-truncation.html#1162" class="Bound">l</a> <a id="1191" href="foundation.uniqueness-truncation.html#931" class="Bound">C</a> <a id="1193" href="foundation.uniqueness-truncation.html#960" class="Bound">g</a><a id="1194" class="Symbol">)</a> <a id="1196" class="Symbol">→</a>
      <a id="1204" href="foundation-core.equivalences.html#1542" class="Function">is-equiv</a> <a id="1213" href="foundation.uniqueness-truncation.html#994" class="Bound">h</a>
    <a id="1219" href="foundation.uniqueness-truncation.html#1071" class="Function">is-equiv-is-truncation-is-truncation</a> <a id="1256" href="foundation.uniqueness-truncation.html#1256" class="Bound">H</a> <a id="1258" href="foundation.uniqueness-truncation.html#1258" class="Bound">K</a> <a id="1260" class="Symbol">=</a>
      <a id="1268" href="foundation-core.dependent-pair-types.html#575" class="InductiveConstructor">pair</a>
        <a id="1281" class="Hole">{! sec-is-truncation!}</a>
        <a id="1312" class="Hole">{!!}</a>

<a id="1318" class="Comment">{-
      is-equiv-has-inverse 
        ( pr1 (center K))
        ( htpy-eq
          ( is-injective-is-equiv
            ( Ug C)
            { h ∘ k}
            { id}
            ( ( precomp-comp-Set-Quotient R C g B k C h) ∙
              ( ( ap (λ t → precomp-Set-Quotient R B t C h) α) ∙
                ( ( eq-htpy-reflecting-map-Eq-Rel R C
                    ( precomp-Set-Quotient R B f C h) g H) ∙
                  ( inv (precomp-id-Set-Quotient R C g)))))))
        ( htpy-eq
          ( is-injective-is-equiv
            ( Uf B)
            { k ∘ h}
            { id}
            ( ( precomp-comp-Set-Quotient R B f C h B k) ∙
              ( ( ap
                  ( λ t → precomp-Set-Quotient R C t B k)
                  ( eq-htpy-reflecting-map-Eq-Rel R C
                    ( precomp-Set-Quotient R B f C h) g H)) ∙
                ( ( α) ∙
                  ( inv (precomp-id-Set-Quotient R B f)))))))
      where
      K : is-contr
            ( Σ ( type-hom-Set C B)
                ( λ h →
                  ( h ∘ map-reflecting-map-Eq-Rel R g) ~
                  ( map-reflecting-map-Eq-Rel R f)))
      K = universal-property-set-quotient-is-set-quotient R C g Ug B f
      k : type-Set C → type-Set B
      k = pr1 (center K)
      α : Id (precomp-Set-Quotient R C g B k) f
      α = eq-htpy-reflecting-map-Eq-Rel R B
            ( precomp-Set-Quotient R C g B k)
            ( f)
            ( pr2 (center K))
            -}</a>

  
<a id="2774" class="Comment">{-
-- Uniqueness of set truncations

module _
  {l1 l2 l3 : Level} {A : UU l1} (B : UU-Set l2) (f : A → type-Set B)
  (C : UU-Set l3) (g : A → type-Set C) {h : type-hom-Set B C}
  (H : (h ∘ f) ~ g)
  where

  abstract
    is-equiv-is-set-truncation-is-set-truncation :
      ({l : Level} → is-set-truncation l B f) →
      ({l : Level} → is-set-truncation l C g) →
      is-equiv h
    is-equiv-is-set-truncation-is-set-truncation Sf Sg =
      is-equiv-is-set-quotient-is-set-quotient
        ( mere-eq-Eq-Rel A)
        ( B)
        ( reflecting-map-mere-eq B f)
        ( C)
        ( reflecting-map-mere-eq C g)
        ( H)
        ( λ {l} → is-set-quotient-is-set-truncation B f Sf)
        ( λ {l} → is-set-quotient-is-set-truncation C g Sg)

  abstract
    is-set-truncation-is-equiv-is-set-truncation :
      ({l : Level} → is-set-truncation l C g) → is-equiv h → 
      {l : Level} → is-set-truncation l B f
    is-set-truncation-is-equiv-is-set-truncation Sg Eh =
      is-set-truncation-is-set-quotient B f
        ( is-set-quotient-is-equiv-is-set-quotient
          ( mere-eq-Eq-Rel A)
          ( B)
          ( reflecting-map-mere-eq B f)
          ( C)
          ( reflecting-map-mere-eq C g)
          ( H)
          ( is-set-quotient-is-set-truncation C g Sg)
          ( Eh))

  abstract
    is-set-truncation-is-set-truncation-is-equiv :
      is-equiv h → ({l : Level} → is-set-truncation l B f) →
      {l : Level} → is-set-truncation l C g
    is-set-truncation-is-set-truncation-is-equiv Eh Sf =
      is-set-truncation-is-set-quotient C g
        ( is-set-quotient-is-set-quotient-is-equiv
          ( mere-eq-Eq-Rel A)
          ( B)
          ( reflecting-map-mere-eq B f)
          ( C)
          ( reflecting-map-mere-eq C g)
          ( H)
          ( Eh)
          ( is-set-quotient-is-set-truncation B f Sf))

module _
  {l1 l2 l3 : Level} {A : UU l1} (B : UU-Set l2) (f : A → type-Set B)
  (C : UU-Set l3) (g : A → type-Set C)
  (Sf : {l : Level} → is-set-truncation l B f)
  (Sg : {l : Level} → is-set-truncation l C g)
  where

  abstract
    uniqueness-set-truncation :
      is-contr (Σ (type-Set B ≃ type-Set C) (λ e → (map-equiv e ∘ f) ~ g))
    uniqueness-set-truncation =
      uniqueness-set-quotient
        ( mere-eq-Eq-Rel A)
        ( B)
        ( reflecting-map-mere-eq B f)
        ( is-set-quotient-is-set-truncation B f Sf)
        ( C)
        ( reflecting-map-mere-eq C g)
        ( is-set-quotient-is-set-truncation C g Sg)
  
  equiv-uniqueness-set-truncation : type-Set B ≃ type-Set C
  equiv-uniqueness-set-truncation =
    pr1 (center uniqueness-set-truncation)

  map-equiv-uniqueness-set-truncation : type-Set B → type-Set C
  map-equiv-uniqueness-set-truncation =
    map-equiv equiv-uniqueness-set-truncation

  triangle-uniqueness-set-truncation :
    (map-equiv-uniqueness-set-truncation ∘ f) ~ g
  triangle-uniqueness-set-truncation =
    pr2 (center uniqueness-set-truncation)
-}</a>
</pre>