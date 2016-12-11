# Ultra-low noise, high-voltage piezo driver

DOI: [10.1063/1.4969059](http://dx.doi.org/10.1063/1.4969059)
Arxiv version: [1609.03607](http://arxiv.org/abs/1609.03607)

To compile, run `make` or use your favorite LaTeX toolchain.

For consistency and ease of editing, TeX linebreaks should occur at sentence boundaries.

Directory structure:

    piezo
      - build/* (ignored by git; `make` build targets)
      - fig/* (place figures here)
      - piezo.tex
      - piezo.bib
      - piezo.pdf (only add/commit if there are substantive changes;
                    note that a recompile will make git want to re-add pdf)
      - makefile

Schematics and board design files can be found at [https://github.com/JQIamo/hv-piezo-driver](https://github.com/JQIamo/hv-piezo-driver).
