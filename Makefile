# Programs
TEX := python3 bin/pylatex

DOCS := FAIL16

all: docs

clean:
	rm -rf build

# Building tex files
docs: $(DOCS:%=build/docs/%.pdf)

build/docs/%.pdf : tex/%.tex
	@mkdir -p $(@D)
	$(TEX) $< $@
