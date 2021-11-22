
.PHONY : src/Everything.agda
src/Everything.agda:
	@rm -rf $@
	@cd src && find . -type f \( -name "*.agda" -o -name "*.lagda"  -o -name  "*.lagda.md" \) > agdaFiles
	@cd src && sort -o agdaFiles agdaFiles
	@cd src && echo "-- Everything" > Everything.agda
	@cd src && echo "-- The list of Agda modules below is automatically generated." >> Everything.agda
	@cd src && echo "{-# OPTIONS --without-K --exact-split --allow-unsolved-metas #-}" >> Everything.agda
	@cd src && echo "module Everything where" >> Everything.agda
	@cd src && echo "" >> Everything.agda
	@cd src && cat agdaFiles | cut -c 3-               \
                     | cut -f1 -d'.'           \
                     | sed 's/\//\./g'         \
                     | sed 's/^/open import /' \
                     >> Everything.agda

.PHONY : check
check : src/Everything.agda
	agda src/Everything.agda

html: src/Everything.agda
	mkdir -p docs
	rm -rf docs/*.html
	agda --html --html-highlight=code --html-dir=docs src/Everything.agda --css=docs/Agda.css --dependency-graph=docs/dependency.dot -v0
	dot -Tpng -o docs/graph.png docs/dependency.dot
	cp docs/Everything.html docs/index.html
