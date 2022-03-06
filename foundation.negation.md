# Negation

<pre class="Agda"><a id="21" class="Symbol">{-#</a> <a id="25" class="Keyword">OPTIONS</a> <a id="33" class="Pragma">--without-K</a> <a id="45" class="Pragma">--exact-split</a> <a id="59" class="Symbol">#-}</a>

<a id="64" class="Keyword">module</a> <a id="71" href="foundation.negation.html" class="Module">foundation.negation</a> <a id="91" class="Keyword">where</a>

<a id="98" class="Keyword">open</a> <a id="103" class="Keyword">import</a> <a id="110" href="foundation.cartesian-product-types.html" class="Module">foundation.cartesian-product-types</a> <a id="145" class="Keyword">using</a> <a id="151" class="Symbol">(</a><a id="152" href="foundation-core.cartesian-product-types.html#577" class="Function Operator">_×_</a><a id="155" class="Symbol">)</a>
<a id="157" class="Keyword">open</a> <a id="162" class="Keyword">import</a> <a id="169" href="foundation.dependent-pair-types.html" class="Module">foundation.dependent-pair-types</a> <a id="201" class="Keyword">using</a> <a id="207" class="Symbol">(</a><a id="208" href="foundation-core.dependent-pair-types.html#575" class="InductiveConstructor">pair</a><a id="212" class="Symbol">;</a> <a id="214" href="foundation-core.dependent-pair-types.html#592" class="Field">pr1</a><a id="217" class="Symbol">;</a> <a id="219" href="foundation-core.dependent-pair-types.html#604" class="Field">pr2</a><a id="222" class="Symbol">)</a>
<a id="224" class="Keyword">open</a> <a id="229" class="Keyword">import</a> <a id="236" href="foundation.empty-types.html" class="Module">foundation.empty-types</a> <a id="259" class="Keyword">using</a> <a id="265" class="Symbol">(</a><a id="266" href="foundation.empty-types.html#1292" class="Datatype">empty</a><a id="271" class="Symbol">;</a> <a id="273" href="foundation.empty-types.html#2843" class="Function">is-prop-empty</a><a id="286" class="Symbol">)</a>
<a id="288" class="Keyword">open</a> <a id="293" class="Keyword">import</a> <a id="300" href="foundation.logical-equivalences.html" class="Module">foundation.logical-equivalences</a> <a id="332" class="Keyword">using</a> <a id="338" class="Symbol">(</a><a id="339" href="foundation-core.logical-equivalences.html#1025" class="Function Operator">_⇔_</a><a id="342" class="Symbol">;</a> <a id="344" href="foundation-core.logical-equivalences.html#886" class="Function Operator">_↔_</a><a id="347" class="Symbol">)</a>
<a id="349" class="Keyword">open</a> <a id="354" class="Keyword">import</a> <a id="361" href="foundation.propositions.html" class="Module">foundation.propositions</a> <a id="385" class="Keyword">using</a>
  <a id="393" class="Symbol">(</a> <a id="395" href="foundation-core.propositions.html#1246" class="Function">is-prop</a><a id="402" class="Symbol">;</a> <a id="404" href="foundation.propositions.html#3080" class="Function">is-prop-function-type</a><a id="425" class="Symbol">;</a> <a id="427" href="foundation-core.propositions.html#1322" class="Function">UU-Prop</a><a id="434" class="Symbol">;</a> <a id="436" href="foundation-core.propositions.html#1424" class="Function">type-Prop</a><a id="445" class="Symbol">;</a> <a id="447" href="foundation-core.propositions.html#1491" class="Function">is-prop-type-Prop</a><a id="464" class="Symbol">)</a>
<a id="466" class="Keyword">open</a> <a id="471" class="Keyword">import</a> <a id="478" href="foundation.universe-levels.html" class="Module">foundation.universe-levels</a> <a id="505" class="Keyword">using</a> <a id="511" class="Symbol">(</a><a id="512" href="foundation-core.universe-levels.html#222" class="Primitive">UU</a><a id="514" class="Symbol">;</a> <a id="516" href="Agda.Primitive.html#597" class="Postulate">Level</a><a id="521" class="Symbol">)</a>
</pre>
## Idea

The Curry-Howard interpretation of negation in type theory is the interpretation of the proposition `P ⇒ ⊥` using propositions as types. Thus, the negation of a type `A` is the type `A → empty`.

## Definition

<pre class="Agda"><a id="¬"></a><a id="756" href="foundation.negation.html#756" class="Function">¬</a> <a id="758" class="Symbol">:</a> <a id="760" class="Symbol">{</a><a id="761" href="foundation.negation.html#761" class="Bound">l</a> <a id="763" class="Symbol">:</a> <a id="765" href="Agda.Primitive.html#597" class="Postulate">Level</a><a id="770" class="Symbol">}</a> <a id="772" class="Symbol">→</a> <a id="774" href="foundation-core.universe-levels.html#222" class="Primitive">UU</a> <a id="777" href="foundation.negation.html#761" class="Bound">l</a> <a id="779" class="Symbol">→</a> <a id="781" href="foundation-core.universe-levels.html#222" class="Primitive">UU</a> <a id="784" href="foundation.negation.html#761" class="Bound">l</a>
<a id="786" href="foundation.negation.html#756" class="Function">¬</a> <a id="788" href="foundation.negation.html#788" class="Bound">A</a> <a id="790" class="Symbol">=</a> <a id="792" href="foundation.negation.html#788" class="Bound">A</a> <a id="794" class="Symbol">→</a> <a id="796" href="foundation.empty-types.html#1292" class="Datatype">empty</a>

<a id="map-neg"></a><a id="803" href="foundation.negation.html#803" class="Function">map-neg</a> <a id="811" class="Symbol">:</a> <a id="813" class="Symbol">{</a><a id="814" href="foundation.negation.html#814" class="Bound">l1</a> <a id="817" href="foundation.negation.html#817" class="Bound">l2</a> <a id="820" class="Symbol">:</a> <a id="822" href="Agda.Primitive.html#597" class="Postulate">Level</a><a id="827" class="Symbol">}</a> <a id="829" class="Symbol">{</a><a id="830" href="foundation.negation.html#830" class="Bound">P</a> <a id="832" class="Symbol">:</a> <a id="834" href="foundation-core.universe-levels.html#222" class="Primitive">UU</a> <a id="837" href="foundation.negation.html#814" class="Bound">l1</a><a id="839" class="Symbol">}</a> <a id="841" class="Symbol">{</a><a id="842" href="foundation.negation.html#842" class="Bound">Q</a> <a id="844" class="Symbol">:</a> <a id="846" href="foundation-core.universe-levels.html#222" class="Primitive">UU</a> <a id="849" href="foundation.negation.html#817" class="Bound">l2</a><a id="851" class="Symbol">}</a> <a id="853" class="Symbol">→</a>
  <a id="857" class="Symbol">(</a><a id="858" href="foundation.negation.html#830" class="Bound">P</a> <a id="860" class="Symbol">→</a> <a id="862" href="foundation.negation.html#842" class="Bound">Q</a><a id="863" class="Symbol">)</a> <a id="865" class="Symbol">→</a> <a id="867" class="Symbol">(</a><a id="868" href="foundation.negation.html#756" class="Function">¬</a> <a id="870" href="foundation.negation.html#842" class="Bound">Q</a> <a id="872" class="Symbol">→</a> <a id="874" href="foundation.negation.html#756" class="Function">¬</a> <a id="876" href="foundation.negation.html#830" class="Bound">P</a><a id="877" class="Symbol">)</a>
<a id="879" href="foundation.negation.html#803" class="Function">map-neg</a> <a id="887" href="foundation.negation.html#887" class="Bound">f</a> <a id="889" href="foundation.negation.html#889" class="Bound">nq</a> <a id="892" href="foundation.negation.html#892" class="Bound">p</a> <a id="894" class="Symbol">=</a> <a id="896" href="foundation.negation.html#889" class="Bound">nq</a> <a id="899" class="Symbol">(</a><a id="900" href="foundation.negation.html#887" class="Bound">f</a> <a id="902" href="foundation.negation.html#892" class="Bound">p</a><a id="903" class="Symbol">)</a>
</pre>
## Properties

### The negation of a type is a proposition

<pre class="Agda"><a id="is-prop-neg"></a><a id="978" href="foundation.negation.html#978" class="Function">is-prop-neg</a> <a id="990" class="Symbol">:</a> <a id="992" class="Symbol">{</a><a id="993" href="foundation.negation.html#993" class="Bound">l</a> <a id="995" class="Symbol">:</a> <a id="997" href="Agda.Primitive.html#597" class="Postulate">Level</a><a id="1002" class="Symbol">}</a> <a id="1004" class="Symbol">{</a><a id="1005" href="foundation.negation.html#1005" class="Bound">A</a> <a id="1007" class="Symbol">:</a> <a id="1009" href="foundation-core.universe-levels.html#222" class="Primitive">UU</a> <a id="1012" href="foundation.negation.html#993" class="Bound">l</a><a id="1013" class="Symbol">}</a> <a id="1015" class="Symbol">→</a> <a id="1017" href="foundation-core.propositions.html#1246" class="Function">is-prop</a> <a id="1025" class="Symbol">(</a><a id="1026" href="foundation.negation.html#756" class="Function">¬</a> <a id="1028" href="foundation.negation.html#1005" class="Bound">A</a><a id="1029" class="Symbol">)</a>
<a id="1031" href="foundation.negation.html#978" class="Function">is-prop-neg</a> <a id="1043" class="Symbol">{</a><a id="1044" class="Argument">A</a> <a id="1046" class="Symbol">=</a> <a id="1048" href="foundation.negation.html#1048" class="Bound">A</a><a id="1049" class="Symbol">}</a> <a id="1051" class="Symbol">=</a> <a id="1053" href="foundation.propositions.html#3080" class="Function">is-prop-function-type</a> <a id="1075" href="foundation.empty-types.html#2843" class="Function">is-prop-empty</a>

<a id="neg-Prop&#39;"></a><a id="1090" href="foundation.negation.html#1090" class="Function">neg-Prop&#39;</a> <a id="1100" class="Symbol">:</a> <a id="1102" class="Symbol">{</a><a id="1103" href="foundation.negation.html#1103" class="Bound">l1</a> <a id="1106" class="Symbol">:</a> <a id="1108" href="Agda.Primitive.html#597" class="Postulate">Level</a><a id="1113" class="Symbol">}</a> <a id="1115" class="Symbol">→</a> <a id="1117" href="foundation-core.universe-levels.html#222" class="Primitive">UU</a> <a id="1120" href="foundation.negation.html#1103" class="Bound">l1</a> <a id="1123" class="Symbol">→</a> <a id="1125" href="foundation-core.propositions.html#1322" class="Function">UU-Prop</a> <a id="1133" href="foundation.negation.html#1103" class="Bound">l1</a>
<a id="1136" href="foundation-core.dependent-pair-types.html#592" class="Field">pr1</a> <a id="1140" class="Symbol">(</a><a id="1141" href="foundation.negation.html#1090" class="Function">neg-Prop&#39;</a> <a id="1151" href="foundation.negation.html#1151" class="Bound">A</a><a id="1152" class="Symbol">)</a> <a id="1154" class="Symbol">=</a> <a id="1156" href="foundation.negation.html#756" class="Function">¬</a> <a id="1158" href="foundation.negation.html#1151" class="Bound">A</a>
<a id="1160" href="foundation-core.dependent-pair-types.html#604" class="Field">pr2</a> <a id="1164" class="Symbol">(</a><a id="1165" href="foundation.negation.html#1090" class="Function">neg-Prop&#39;</a> <a id="1175" href="foundation.negation.html#1175" class="Bound">A</a><a id="1176" class="Symbol">)</a> <a id="1178" class="Symbol">=</a> <a id="1180" href="foundation.negation.html#978" class="Function">is-prop-neg</a>

<a id="neg-Prop"></a><a id="1193" href="foundation.negation.html#1193" class="Function">neg-Prop</a> <a id="1202" class="Symbol">:</a> <a id="1204" class="Symbol">{</a><a id="1205" href="foundation.negation.html#1205" class="Bound">l1</a> <a id="1208" class="Symbol">:</a> <a id="1210" href="Agda.Primitive.html#597" class="Postulate">Level</a><a id="1215" class="Symbol">}</a> <a id="1217" class="Symbol">→</a> <a id="1219" href="foundation-core.propositions.html#1322" class="Function">UU-Prop</a> <a id="1227" href="foundation.negation.html#1205" class="Bound">l1</a> <a id="1230" class="Symbol">→</a> <a id="1232" href="foundation-core.propositions.html#1322" class="Function">UU-Prop</a> <a id="1240" href="foundation.negation.html#1205" class="Bound">l1</a>
<a id="1243" href="foundation.negation.html#1193" class="Function">neg-Prop</a> <a id="1252" href="foundation.negation.html#1252" class="Bound">P</a> <a id="1254" class="Symbol">=</a> <a id="1256" href="foundation.negation.html#1090" class="Function">neg-Prop&#39;</a> <a id="1266" class="Symbol">(</a><a id="1267" href="foundation-core.propositions.html#1424" class="Function">type-Prop</a> <a id="1277" href="foundation.negation.html#1252" class="Bound">P</a><a id="1278" class="Symbol">)</a>
</pre>
### Negation has no fixed points

<pre class="Agda"><a id="no-fixed-points-neg"></a><a id="1327" href="foundation.negation.html#1327" class="Function">no-fixed-points-neg</a> <a id="1347" class="Symbol">:</a>
  <a id="1351" class="Symbol">{</a><a id="1352" href="foundation.negation.html#1352" class="Bound">l</a> <a id="1354" class="Symbol">:</a> <a id="1356" href="Agda.Primitive.html#597" class="Postulate">Level</a><a id="1361" class="Symbol">}</a> <a id="1363" class="Symbol">(</a><a id="1364" href="foundation.negation.html#1364" class="Bound">A</a> <a id="1366" class="Symbol">:</a> <a id="1368" href="foundation-core.universe-levels.html#222" class="Primitive">UU</a> <a id="1371" href="foundation.negation.html#1352" class="Bound">l</a><a id="1372" class="Symbol">)</a> <a id="1374" class="Symbol">→</a> <a id="1376" href="foundation.negation.html#756" class="Function">¬</a> <a id="1378" class="Symbol">(</a><a id="1379" href="foundation.negation.html#1364" class="Bound">A</a> <a id="1381" href="foundation-core.logical-equivalences.html#886" class="Function Operator">↔</a> <a id="1383" class="Symbol">(</a><a id="1384" href="foundation.negation.html#756" class="Function">¬</a> <a id="1386" href="foundation.negation.html#1364" class="Bound">A</a><a id="1387" class="Symbol">))</a>
<a id="1390" href="foundation.negation.html#1327" class="Function">no-fixed-points-neg</a> <a id="1410" href="foundation.negation.html#1410" class="Bound">A</a> <a id="1412" class="Symbol">(</a><a id="1413" href="foundation-core.dependent-pair-types.html#575" class="InductiveConstructor">pair</a> <a id="1418" href="foundation.negation.html#1418" class="Bound">f</a> <a id="1420" href="foundation.negation.html#1420" class="Bound">g</a><a id="1421" class="Symbol">)</a> <a id="1423" class="Symbol">=</a>
  <a id="1427" class="Symbol">(</a> <a id="1429" class="Symbol">λ</a> <a id="1431" class="Symbol">(</a><a id="1432" href="foundation.negation.html#1432" class="Bound">h</a> <a id="1434" class="Symbol">:</a> <a id="1436" href="foundation.negation.html#756" class="Function">¬</a> <a id="1438" href="foundation.negation.html#1410" class="Bound">A</a><a id="1439" class="Symbol">)</a> <a id="1441" class="Symbol">→</a> <a id="1443" href="foundation.negation.html#1432" class="Bound">h</a> <a id="1445" class="Symbol">(</a><a id="1446" href="foundation.negation.html#1420" class="Bound">g</a> <a id="1448" href="foundation.negation.html#1432" class="Bound">h</a><a id="1449" class="Symbol">))</a> <a id="1452" class="Symbol">(λ</a> <a id="1455" class="Symbol">(</a><a id="1456" href="foundation.negation.html#1456" class="Bound">a</a> <a id="1458" class="Symbol">:</a> <a id="1460" href="foundation.negation.html#1410" class="Bound">A</a><a id="1461" class="Symbol">)</a> <a id="1463" class="Symbol">→</a> <a id="1465" href="foundation.negation.html#1418" class="Bound">f</a> <a id="1467" href="foundation.negation.html#1456" class="Bound">a</a> <a id="1469" href="foundation.negation.html#1456" class="Bound">a</a><a id="1470" class="Symbol">)</a>
</pre>
<pre class="Agda"><a id="1485" class="Keyword">abstract</a>
  <a id="no-fixed-points-neg-Prop"></a><a id="1496" href="foundation.negation.html#1496" class="Function">no-fixed-points-neg-Prop</a> <a id="1521" class="Symbol">:</a>
    <a id="1527" class="Symbol">{</a><a id="1528" href="foundation.negation.html#1528" class="Bound">l1</a> <a id="1531" class="Symbol">:</a> <a id="1533" href="Agda.Primitive.html#597" class="Postulate">Level</a><a id="1538" class="Symbol">}</a> <a id="1540" class="Symbol">(</a><a id="1541" href="foundation.negation.html#1541" class="Bound">P</a> <a id="1543" class="Symbol">:</a> <a id="1545" href="foundation-core.propositions.html#1322" class="Function">UU-Prop</a> <a id="1553" href="foundation.negation.html#1528" class="Bound">l1</a><a id="1555" class="Symbol">)</a> <a id="1557" class="Symbol">→</a> <a id="1559" href="foundation.negation.html#756" class="Function">¬</a> <a id="1561" class="Symbol">(</a><a id="1562" href="foundation.negation.html#1541" class="Bound">P</a> <a id="1564" href="foundation-core.logical-equivalences.html#1025" class="Function Operator">⇔</a> <a id="1566" href="foundation.negation.html#1193" class="Function">neg-Prop</a> <a id="1575" href="foundation.negation.html#1541" class="Bound">P</a><a id="1576" class="Symbol">)</a>
  <a id="1580" href="foundation.negation.html#1496" class="Function">no-fixed-points-neg-Prop</a> <a id="1605" href="foundation.negation.html#1605" class="Bound">P</a> <a id="1607" class="Symbol">=</a> <a id="1609" href="foundation.negation.html#1327" class="Function">no-fixed-points-neg</a> <a id="1629" class="Symbol">(</a><a id="1630" href="foundation-core.propositions.html#1424" class="Function">type-Prop</a> <a id="1640" href="foundation.negation.html#1605" class="Bound">P</a><a id="1641" class="Symbol">)</a>
</pre>