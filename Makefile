OUTDIR=out/

SRCS=$(wildcard *.tex)

LATEX=latexmk -pdf -output-directory=$(OUTDIR)

GARBAGE := *.log *.aux *.dvi *.synctex.gz *.fls *.fdb_latexmk *.nav *.snm *.toc *.out *.vrb


.PHONY: clean move

move:
	mkdir -p $(OUTDIR)
	mv *.pdf $(OUTDIR)

all: $(SRCS)
	mkdir -p $(OUTDIR)
	$(LATEX) $^


clean:
	$(RM) $(GARBAGE)
	$(RM) -r $(OUTDIR)
