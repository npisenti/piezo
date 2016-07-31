# PHONY target; ensures these are run regardless of file that might
# exist with the same name.
.PHONY: piezo.pdf all clean edit

all: piezo.pdf

clean:
	rm -rf build

quick: piezo.tex
	pdflatex piezo.tex
	pdflatex piezo.tex
	#rm *.aux *.log piezoNotes.bib

piezo.pdf: piezo.tex
	mkdir -p build
	latexmk -f -pdf -pdflatex="pdflatex -interaction=nonstopmode -file-line-error" -use-make -jobname=build/piezo piezo.tex
	cp build/piezo.pdf .
