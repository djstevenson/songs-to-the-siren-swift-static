# Simple makefile, it's gonna build everything every time.
# But that still only takes a few seconds, and it saves maintaining
# deps, so it's a fair trade-off

all: prettify css

build:
	swift build

run: build
	swift run

css: run
	npx tailwindcss -o ./output/css/songs-to-the-siren.css --jit --input=tailwind.css ; \
	npx minify output/css/songs-to-the-siren.css > output/css/songs-to-the-siren-min.css

prettify: run
	for i in $$(find output -name \*.html) ; do \
		mv $${i} $${i}.tmp && tidy -indent --indent-spaces 4 -quiet --tidy-mark no  --warn-proprietary-attributes no --gnu-emacs yes --wrap 0 $${i}.tmp > $${i} ; \
		rm $${i}.tmp ; \
	done

