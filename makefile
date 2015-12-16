# PHONY target; ensures these are run regardless of file that might
# exist with the same name.
.PHONY: piezo.pdf all clean edit

all: piezo.pdf

piezo.pdf: piezo.tex
	mkdir -p build
	latexmk -pdf -pdflatex="pdflatex -interaction=nonstopmode -file-line-error" -use-make -jobname=build/piezo piezo.tex
	cp build/piezo.pdf .
