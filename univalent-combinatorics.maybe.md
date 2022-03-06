# The maybe modality on finite types

<pre class="Agda"><a id="47" class="Symbol">{-#</a> <a id="51" class="Keyword">OPTIONS</a> <a id="59" class="Pragma">--without-K</a> <a id="71" class="Pragma">--exact-split</a> <a id="85" class="Symbol">#-}</a>

<a id="90" class="Keyword">module</a> <a id="97" href="univalent-combinatorics.maybe.html" class="Module">univalent-combinatorics.maybe</a> <a id="127" class="Keyword">where</a>

<a id="134" class="Keyword">open</a> <a id="139" class="Keyword">import</a> <a id="146" href="foundation.maybe.html" class="Module">foundation.maybe</a> <a id="163" class="Keyword">public</a>

<a id="171" class="Keyword">open</a> <a id="176" class="Keyword">import</a> <a id="183" href="elementary-number-theory.natural-numbers.html" class="Module">elementary-number-theory.natural-numbers</a> <a id="224" class="Keyword">using</a> <a id="230" class="Symbol">(</a><a id="231" href="elementary-number-theory.natural-numbers.html#1438" class="Datatype">ℕ</a><a id="232" class="Symbol">;</a> <a id="234" href="elementary-number-theory.natural-numbers.html#1459" class="InductiveConstructor">zero-ℕ</a><a id="240" class="Symbol">;</a> <a id="242" href="elementary-number-theory.natural-numbers.html#1472" class="InductiveConstructor">succ-ℕ</a><a id="248" class="Symbol">)</a>

<a id="251" class="Keyword">open</a> <a id="256" class="Keyword">import</a> <a id="263" href="foundation.universe-levels.html" class="Module">foundation.universe-levels</a> <a id="290" class="Keyword">using</a> <a id="296" class="Symbol">(</a><a id="297" href="Agda.Primitive.html#597" class="Postulate">Level</a><a id="302" class="Symbol">)</a>

<a id="305" class="Keyword">open</a> <a id="310" class="Keyword">import</a> <a id="317" href="univalent-combinatorics.coproduct-finite-types.html" class="Module">univalent-combinatorics.coproduct-finite-types</a> <a id="364" class="Keyword">using</a>
  <a id="372" class="Symbol">(</a> <a id="374" href="univalent-combinatorics.coproduct-finite-types.html#2561" class="Function">coprod-UU-Fin-Level</a><a id="393" class="Symbol">)</a>
<a id="395" class="Keyword">open</a> <a id="400" class="Keyword">import</a> <a id="407" href="univalent-combinatorics.finite-types.html" class="Module">univalent-combinatorics.finite-types</a> <a id="444" class="Keyword">using</a>
  <a id="452" class="Symbol">(</a> <a id="454" href="univalent-combinatorics.finite-types.html#4468" class="Function">UU-Fin-Level</a><a id="466" class="Symbol">;</a> <a id="468" href="univalent-combinatorics.finite-types.html#4826" class="Function">UU-Fin</a><a id="474" class="Symbol">;</a> <a id="476" href="univalent-combinatorics.finite-types.html#5532" class="Function">unit-UU-Fin</a><a id="487" class="Symbol">)</a>
</pre>
<pre class="Agda"><a id="add-free-point-UU-Fin-Level"></a><a id="502" href="univalent-combinatorics.maybe.html#502" class="Function">add-free-point-UU-Fin-Level</a> <a id="530" class="Symbol">:</a>
  <a id="534" class="Symbol">{</a><a id="535" href="univalent-combinatorics.maybe.html#535" class="Bound">l1</a> <a id="538" class="Symbol">:</a> <a id="540" href="Agda.Primitive.html#597" class="Postulate">Level</a><a id="545" class="Symbol">}</a> <a id="547" class="Symbol">{</a><a id="548" href="univalent-combinatorics.maybe.html#548" class="Bound">k</a> <a id="550" class="Symbol">:</a> <a id="552" href="elementary-number-theory.natural-numbers.html#1438" class="Datatype">ℕ</a><a id="553" class="Symbol">}</a> <a id="555" class="Symbol">→</a> <a id="557" href="univalent-combinatorics.finite-types.html#4468" class="Function">UU-Fin-Level</a> <a id="570" href="univalent-combinatorics.maybe.html#535" class="Bound">l1</a> <a id="573" href="univalent-combinatorics.maybe.html#548" class="Bound">k</a> <a id="575" class="Symbol">→</a> <a id="577" href="univalent-combinatorics.finite-types.html#4468" class="Function">UU-Fin-Level</a> <a id="590" href="univalent-combinatorics.maybe.html#535" class="Bound">l1</a> <a id="593" class="Symbol">(</a><a id="594" href="elementary-number-theory.natural-numbers.html#1472" class="InductiveConstructor">succ-ℕ</a> <a id="601" href="univalent-combinatorics.maybe.html#548" class="Bound">k</a><a id="602" class="Symbol">)</a>
<a id="604" href="univalent-combinatorics.maybe.html#502" class="Function">add-free-point-UU-Fin-Level</a> <a id="632" href="univalent-combinatorics.maybe.html#632" class="Bound">X</a> <a id="634" class="Symbol">=</a> <a id="636" href="univalent-combinatorics.coproduct-finite-types.html#2561" class="Function">coprod-UU-Fin-Level</a> <a id="656" href="univalent-combinatorics.maybe.html#632" class="Bound">X</a> <a id="658" href="univalent-combinatorics.finite-types.html#5532" class="Function">unit-UU-Fin</a>

<a id="add-free-point-UU-Fin"></a><a id="671" href="univalent-combinatorics.maybe.html#671" class="Function">add-free-point-UU-Fin</a> <a id="693" class="Symbol">:</a> <a id="695" class="Symbol">{</a><a id="696" href="univalent-combinatorics.maybe.html#696" class="Bound">k</a> <a id="698" class="Symbol">:</a> <a id="700" href="elementary-number-theory.natural-numbers.html#1438" class="Datatype">ℕ</a><a id="701" class="Symbol">}</a> <a id="703" class="Symbol">→</a> <a id="705" href="univalent-combinatorics.finite-types.html#4826" class="Function">UU-Fin</a> <a id="712" href="univalent-combinatorics.maybe.html#696" class="Bound">k</a> <a id="714" class="Symbol">→</a> <a id="716" href="univalent-combinatorics.finite-types.html#4826" class="Function">UU-Fin</a> <a id="723" class="Symbol">(</a><a id="724" href="elementary-number-theory.natural-numbers.html#1472" class="InductiveConstructor">succ-ℕ</a> <a id="731" href="univalent-combinatorics.maybe.html#696" class="Bound">k</a><a id="732" class="Symbol">)</a>
<a id="734" href="univalent-combinatorics.maybe.html#671" class="Function">add-free-point-UU-Fin</a> <a id="756" href="univalent-combinatorics.maybe.html#756" class="Bound">X</a> <a id="758" class="Symbol">=</a> <a id="760" href="univalent-combinatorics.maybe.html#502" class="Function">add-free-point-UU-Fin-Level</a> <a id="788" href="univalent-combinatorics.maybe.html#756" class="Bound">X</a>
</pre>