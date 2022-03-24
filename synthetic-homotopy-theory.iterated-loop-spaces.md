# Iterated loop spaces

<pre class="Agda"><a id="33" class="Symbol">{-#</a> <a id="37" class="Keyword">OPTIONS</a> <a id="45" class="Pragma">--without-K</a> <a id="57" class="Pragma">--exact-split</a> <a id="71" class="Symbol">#-}</a>

<a id="76" class="Keyword">module</a> <a id="83" href="synthetic-homotopy-theory.iterated-loop-spaces.html" class="Module">synthetic-homotopy-theory.iterated-loop-spaces</a> <a id="130" class="Keyword">where</a>

<a id="137" class="Keyword">open</a> <a id="142" class="Keyword">import</a> <a id="149" href="elementary-number-theory.natural-numbers.html" class="Module">elementary-number-theory.natural-numbers</a> <a id="190" class="Keyword">using</a> <a id="196" class="Symbol">(</a><a id="197" href="elementary-number-theory.natural-numbers.html#1444" class="Datatype">ℕ</a><a id="198" class="Symbol">;</a> <a id="200" href="elementary-number-theory.natural-numbers.html#1465" class="InductiveConstructor">zero-ℕ</a><a id="206" class="Symbol">;</a> <a id="208" href="elementary-number-theory.natural-numbers.html#1478" class="InductiveConstructor">succ-ℕ</a><a id="214" class="Symbol">)</a>

<a id="217" class="Keyword">open</a> <a id="222" class="Keyword">import</a> <a id="229" href="foundation.identity-types.html" class="Module">foundation.identity-types</a> <a id="255" class="Keyword">using</a> <a id="261" class="Symbol">(</a><a id="262" href="foundation-core.identity-types.html#641" class="Datatype">Id</a><a id="264" class="Symbol">;</a> <a id="266" href="foundation-core.identity-types.html#694" class="InductiveConstructor">refl</a><a id="270" class="Symbol">)</a>
<a id="272" class="Keyword">open</a> <a id="277" class="Keyword">import</a> <a id="284" href="foundation.universe-levels.html" class="Module">foundation.universe-levels</a> <a id="311" class="Keyword">using</a> <a id="317" class="Symbol">(</a><a id="318" href="Agda.Primitive.html#597" class="Postulate">Level</a><a id="323" class="Symbol">;</a> <a id="325" href="foundation-core.universe-levels.html#222" class="Primitive">UU</a><a id="327" class="Symbol">)</a>

<a id="330" class="Keyword">open</a> <a id="335" class="Keyword">import</a> <a id="342" href="synthetic-homotopy-theory.loop-spaces.html" class="Module">synthetic-homotopy-theory.loop-spaces</a> <a id="380" class="Keyword">using</a> <a id="386" class="Symbol">(</a><a id="387" href="synthetic-homotopy-theory.loop-spaces.html#1043" class="Function">Ω</a><a id="388" class="Symbol">)</a>
<a id="390" class="Keyword">open</a> <a id="395" class="Keyword">import</a> <a id="402" href="synthetic-homotopy-theory.pointed-types.html" class="Module">synthetic-homotopy-theory.pointed-types</a> <a id="442" class="Keyword">using</a> <a id="448" class="Symbol">(</a><a id="449" href="synthetic-homotopy-theory.pointed-types.html#392" class="Function">Pointed-Type</a><a id="461" class="Symbol">)</a>
</pre>
<pre class="Agda"><a id="476" class="Keyword">module</a> <a id="483" href="synthetic-homotopy-theory.iterated-loop-spaces.html#483" class="Module">_</a>
  <a id="487" class="Symbol">{</a><a id="488" href="synthetic-homotopy-theory.iterated-loop-spaces.html#488" class="Bound">l</a> <a id="490" class="Symbol">:</a> <a id="492" href="Agda.Primitive.html#597" class="Postulate">Level</a><a id="497" class="Symbol">}</a>
  <a id="501" class="Keyword">where</a>

  <a id="510" href="synthetic-homotopy-theory.iterated-loop-spaces.html#510" class="Function">iterated-loop-space</a> <a id="530" class="Symbol">:</a> <a id="532" href="elementary-number-theory.natural-numbers.html#1444" class="Datatype">ℕ</a> <a id="534" class="Symbol">→</a> <a id="536" href="synthetic-homotopy-theory.pointed-types.html#392" class="Function">Pointed-Type</a> <a id="549" href="synthetic-homotopy-theory.iterated-loop-spaces.html#488" class="Bound">l</a> <a id="551" class="Symbol">→</a> <a id="553" href="synthetic-homotopy-theory.pointed-types.html#392" class="Function">Pointed-Type</a> <a id="566" href="synthetic-homotopy-theory.iterated-loop-spaces.html#488" class="Bound">l</a>
  <a id="570" href="synthetic-homotopy-theory.iterated-loop-spaces.html#510" class="Function">iterated-loop-space</a> <a id="590" href="elementary-number-theory.natural-numbers.html#1465" class="InductiveConstructor">zero-ℕ</a> <a id="597" href="synthetic-homotopy-theory.iterated-loop-spaces.html#597" class="Bound">A</a> <a id="599" class="Symbol">=</a> <a id="601" href="synthetic-homotopy-theory.iterated-loop-spaces.html#597" class="Bound">A</a>
  <a id="605" href="synthetic-homotopy-theory.iterated-loop-spaces.html#510" class="Function">iterated-loop-space</a> <a id="625" class="Symbol">(</a><a id="626" href="elementary-number-theory.natural-numbers.html#1478" class="InductiveConstructor">succ-ℕ</a> <a id="633" href="synthetic-homotopy-theory.iterated-loop-spaces.html#633" class="Bound">n</a><a id="634" class="Symbol">)</a> <a id="636" href="synthetic-homotopy-theory.iterated-loop-spaces.html#636" class="Bound">A</a> <a id="638" class="Symbol">=</a> <a id="640" href="synthetic-homotopy-theory.loop-spaces.html#1043" class="Function">Ω</a> <a id="642" class="Symbol">(</a><a id="643" href="synthetic-homotopy-theory.iterated-loop-spaces.html#510" class="Function">iterated-loop-space</a> <a id="663" href="synthetic-homotopy-theory.iterated-loop-spaces.html#633" class="Bound">n</a> <a id="665" href="synthetic-homotopy-theory.iterated-loop-spaces.html#636" class="Bound">A</a><a id="666" class="Symbol">)</a>
</pre>