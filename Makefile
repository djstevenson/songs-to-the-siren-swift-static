# Simple makefile, it's gonna re-run some stuff every time.
# But that still only takes a few seconds, so it's not a problem

.PHONY: all clean test check

all: css prettify check

clean:
	rm -rf output/* .build

build:
	swift build

run: build
	swift run

css: run
	npx tailwindcss -o ./output/css/songs-to-the-siren.css --jit --input=tailwind.css
	npx minify output/css/songs-to-the-siren.css > output/css/songs-to-the-siren-min.css

prettify: run
	for i in $$(find output -name \*.html) ; do \
		mv $${i} $${i}.tmp && tidy -indent --indent-spaces 4 -quiet --tidy-mark no  --warn-proprietary-attributes no --gnu-emacs yes --wrap 0 $${i}.tmp > $${i}; \
		rm $${i}.tmp ; \
	done

check: prettify
	find output -name \*html | xargs vnu

