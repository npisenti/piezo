# PHONY target; ensures these are run regardless of file that might
# exist with the same name.
.PHONY: all clean quick sub

SUBDIR=submission
FIGDIR=fig

PNG_FILES=$(wildcard $(FIGDIR)/*.png)
EPS_FILES=$(wildcard $(FIGDIR)/*.eps)
SUB_FILES=$(addsuffix .tiff,  $(notdir $(basename $(PNG_FILES))))
SUB_EPS = $(addprefix $(SUBDIR)/, $(notdir $(EPS_FILES)))

all: piezo.pdf

clean:
	rm -rf build

quick: piezo.tex
	pdflatex piezo.tex
	pdflatex piezo.tex


.SUFFIXES: .tiff .png

test: $(addprefix $(SUBDIR)/,$(SUB_FILES))
	@echo finished test

$(SUBDIR)/%.tiff: $(addprefix $(FIGDIR)/, %.png)
	@mkdir -p $(SUBDIR)
	@echo converting $< to $@
	@gm convert $< $@

$(SUBDIR)/%.eps: $(addprefix $(FIGDIR)/, %.eps) 
	@echo copying $< to submission dir
	cp $< $@


sub: $(addprefix $(SUBDIR)/, $(SUB_FILES)) piezo.pdf $(SUB_EPS)
	@echo ------------------------
	@echo make sure you have exported ai to eps
	@echo ------------------------
	cp build/piezo.pdf $(addprefix $(SUBDIR)/, piezo.pdf)
	cp build/piezo.bbl $(addprefix $(SUBDIR)/, piezo.bbl)
	cp piezo.tex $(addprefix $(SUBDIR)/, piezo.tex)


piezo.pdf: piezo.tex
	mkdir -p build
	latexmk -f -pdf -pdflatex="pdflatex -interaction=nonstopmode -file-line-error" -use-make -jobname=build/piezo piezo.tex
	cp build/piezo.pdf .
