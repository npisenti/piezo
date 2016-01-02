# Ultra-low noise, high-voltage piezo driver

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

Schematics and board design files can be found at https://github.com/JQIamo/piezo-compact-high-voltage-driver.

## Data/measurements

* FFT -> Switching noise dBc from LM7171 op amp
* PSD
* Characteristic scope trace/long-term noise (measure w/ keithly)
* Use SR560 voltage pre-amp

TODO:

* Look at LIGO design
