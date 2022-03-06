---
title: Formalisation of the Symmetry Book
---

<pre class="Agda"><a id="60" class="Symbol">{-#</a> <a id="64" class="Keyword">OPTIONS</a> <a id="72" class="Pragma">--without-K</a> <a id="84" class="Pragma">--exact-split</a> <a id="98" class="Symbol">#-}</a>

<a id="103" class="Keyword">module</a> <a id="110" href="groups.examples-higher-groups.html" class="Module">groups.examples-higher-groups</a> <a id="140" class="Keyword">where</a>

<a id="147" class="Keyword">open</a> <a id="152" class="Keyword">import</a> <a id="159" href="groups.higher-groups.html" class="Module">groups.higher-groups</a> <a id="180" class="Keyword">public</a>
<a id="187" class="Keyword">open</a> <a id="192" class="Keyword">import</a> <a id="199" href="synthetic-homotopy-theory.circle.html" class="Module">synthetic-homotopy-theory.circle</a> <a id="232" class="Keyword">public</a>

<a id="240" class="Keyword">module</a> <a id="247" href="groups.examples-higher-groups.html#247" class="Module">_</a>
  <a id="251" class="Keyword">where</a>

  <a id="260" href="groups.examples-higher-groups.html#260" class="Function">classifying-type-ℤ-∞-Group</a> <a id="287" class="Symbol">:</a> <a id="289" href="Agda.Primitive.html#326" class="Primitive">UU</a> <a id="292" href="Agda.Primitive.html#764" class="Primitive">lzero</a>
  <a id="300" href="groups.examples-higher-groups.html#260" class="Function">classifying-type-ℤ-∞-Group</a> <a id="327" class="Symbol">=</a> <a id="329" href="synthetic-homotopy-theory.circle.html#11315" class="Postulate">𝕊¹</a>

  <a id="335" href="groups.examples-higher-groups.html#335" class="Function">shape-ℤ-∞-Group</a> <a id="351" class="Symbol">:</a> <a id="353" href="synthetic-homotopy-theory.circle.html#11315" class="Postulate">𝕊¹</a>
  <a id="358" href="groups.examples-higher-groups.html#335" class="Function">shape-ℤ-∞-Group</a> <a id="374" class="Symbol">=</a> <a id="376" href="synthetic-homotopy-theory.circle.html#11340" class="Postulate">base-𝕊¹</a>

  <a id="387" href="groups.examples-higher-groups.html#387" class="Function">classifying-pointed-type-ℤ-∞-Group</a> <a id="422" class="Symbol">:</a> <a id="424" href="univalent-foundations.pointed-types.html#228" class="Function">Pointed-Type</a> <a id="437" href="Agda.Primitive.html#764" class="Primitive">lzero</a>
  <a id="445" href="groups.examples-higher-groups.html#387" class="Function">classifying-pointed-type-ℤ-∞-Group</a> <a id="480" class="Symbol">=</a>
    <a id="486" href="foundation-core.dependent-pair-types.html#575" class="InductiveConstructor">pair</a>
      <a id="497" href="groups.examples-higher-groups.html#260" class="Function">classifying-type-ℤ-∞-Group</a>
      <a id="530" href="groups.examples-higher-groups.html#335" class="Function">shape-ℤ-∞-Group</a>

  <a id="549" href="groups.examples-higher-groups.html#549" class="Function">ℤ-∞-Group</a> <a id="559" class="Symbol">:</a> <a id="561" href="groups.higher-groups.html#1473" class="Function">∞-Group</a> <a id="569" href="Agda.Primitive.html#764" class="Primitive">lzero</a>
  <a id="577" href="groups.examples-higher-groups.html#549" class="Function">ℤ-∞-Group</a> <a id="587" class="Symbol">=</a>
    <a id="593" href="foundation-core.dependent-pair-types.html#575" class="InductiveConstructor">pair</a>
      <a id="604" href="groups.examples-higher-groups.html#387" class="Function">classifying-pointed-type-ℤ-∞-Group</a>
      <a id="645" href="synthetic-homotopy-theory.circle.html#18833" class="Function">is-path-connected-𝕊¹</a>

<a id="667" class="Keyword">module</a> <a id="674" href="groups.examples-higher-groups.html#674" class="Module">_</a>
  <a id="678" class="Symbol">{</a><a id="679" href="groups.examples-higher-groups.html#679" class="Bound">l</a> <a id="681" class="Symbol">:</a> <a id="683" href="Agda.Primitive.html#597" class="Postulate">Level</a><a id="688" class="Symbol">}</a> <a id="690" class="Symbol">(</a><a id="691" href="groups.examples-higher-groups.html#691" class="Bound">X</a> <a id="693" class="Symbol">:</a> <a id="695" href="Agda.Primitive.html#326" class="Primitive">UU</a> <a id="698" href="groups.examples-higher-groups.html#679" class="Bound">l</a><a id="699" class="Symbol">)</a>
  <a id="703" class="Keyword">where</a>

  <a id="712" href="groups.examples-higher-groups.html#712" class="Function">classifying-type-symmetric-∞-Group</a> <a id="747" class="Symbol">:</a> <a id="749" href="Agda.Primitive.html#326" class="Primitive">UU</a> <a id="752" class="Symbol">(</a><a id="753" href="Agda.Primitive.html#780" class="Primitive">lsuc</a> <a id="758" href="groups.examples-higher-groups.html#679" class="Bound">l</a><a id="759" class="Symbol">)</a>
  <a id="763" href="groups.examples-higher-groups.html#712" class="Function">classifying-type-symmetric-∞-Group</a> <a id="798" class="Symbol">=</a> <a id="800" href="foundation.connected-components-universes.html#2310" class="Function">component-UU</a> <a id="813" href="groups.examples-higher-groups.html#691" class="Bound">X</a>

  <a id="818" href="groups.examples-higher-groups.html#818" class="Function">shape-symmetric-∞-Group</a> <a id="842" class="Symbol">:</a> <a id="844" href="groups.examples-higher-groups.html#712" class="Function">classifying-type-symmetric-∞-Group</a>
  <a id="881" href="groups.examples-higher-groups.html#818" class="Function">shape-symmetric-∞-Group</a> <a id="905" class="Symbol">=</a>
    <a id="911" href="foundation-core.dependent-pair-types.html#575" class="InductiveConstructor">pair</a> <a id="916" href="groups.examples-higher-groups.html#691" class="Bound">X</a> <a id="918" class="Symbol">(</a><a id="919" href="foundation.mere-equivalences.html#1762" class="Function">refl-mere-equiv</a> <a id="935" href="groups.examples-higher-groups.html#691" class="Bound">X</a><a id="936" class="Symbol">)</a>

  <a id="941" href="groups.examples-higher-groups.html#941" class="Function">classifying-pointed-type-symmetric-∞-Group</a> <a id="984" class="Symbol">:</a> <a id="986" href="univalent-foundations.pointed-types.html#228" class="Function">Pointed-Type</a> <a id="999" class="Symbol">(</a><a id="1000" href="Agda.Primitive.html#780" class="Primitive">lsuc</a> <a id="1005" href="groups.examples-higher-groups.html#679" class="Bound">l</a><a id="1006" class="Symbol">)</a>
  <a id="1010" href="groups.examples-higher-groups.html#941" class="Function">classifying-pointed-type-symmetric-∞-Group</a> <a id="1053" class="Symbol">=</a>
    <a id="1059" href="foundation-core.dependent-pair-types.html#575" class="InductiveConstructor">pair</a>
      <a id="1070" href="groups.examples-higher-groups.html#712" class="Function">classifying-type-symmetric-∞-Group</a>
      <a id="1111" href="groups.examples-higher-groups.html#818" class="Function">shape-symmetric-∞-Group</a>

  <a id="1138" href="groups.examples-higher-groups.html#1138" class="Function">is-path-connected-classifying-type-symmetric-∞-Group</a> <a id="1191" class="Symbol">:</a>
    <a id="1197" href="foundation.connected-types.html#1682" class="Function">is-path-connected</a> <a id="1215" href="groups.examples-higher-groups.html#712" class="Function">classifying-type-symmetric-∞-Group</a>
  <a id="1252" href="groups.examples-higher-groups.html#1138" class="Function">is-path-connected-classifying-type-symmetric-∞-Group</a> <a id="1305" class="Symbol">=</a>
    <a id="1311" href="foundation.connected-components-universes.html#6383" class="Function">is-path-connected-component-UU</a> <a id="1342" href="groups.examples-higher-groups.html#691" class="Bound">X</a>
  
  <a id="1349" href="groups.examples-higher-groups.html#1349" class="Function">symmetric-∞-Group</a> <a id="1367" class="Symbol">:</a> <a id="1369" href="groups.higher-groups.html#1473" class="Function">∞-Group</a> <a id="1377" class="Symbol">(</a><a id="1378" href="Agda.Primitive.html#780" class="Primitive">lsuc</a> <a id="1383" href="groups.examples-higher-groups.html#679" class="Bound">l</a><a id="1384" class="Symbol">)</a>
  <a id="1388" href="groups.examples-higher-groups.html#1349" class="Function">symmetric-∞-Group</a> <a id="1406" class="Symbol">=</a>
    <a id="1412" href="foundation-core.dependent-pair-types.html#575" class="InductiveConstructor">pair</a>
      <a id="1423" href="groups.examples-higher-groups.html#941" class="Function">classifying-pointed-type-symmetric-∞-Group</a>
      <a id="1472" href="groups.examples-higher-groups.html#1138" class="Function">is-path-connected-classifying-type-symmetric-∞-Group</a>
</pre>