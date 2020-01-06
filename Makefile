OUTDIR=out/

SRCS=$(wildcard *.tex)

LATEX=latexmk -pdf -output-directory=$(OUTDIR) -interaction=nonstopmode

GARBAGE := *.log *.aux *.dvi *.synctex.gz *.fls *.fdb_latexmk *.nav *.snm *.toc *.out *.vrb


.PHONY: clean move
all: $(SRCS)
	mkdir -p $(OUTDIR)
	$(LATEX) $^

move:
	mkdir -p $(OUTDIR)
	mv *.pdf $(OUTDIR)



clean:
	$(RM) $(GARBAGE)
	$(RM) -r $(OUTDIR)
