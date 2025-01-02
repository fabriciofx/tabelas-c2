RM = rm -f
BUILD = pdflatex
BIB = bibtex
BUIL_OPTS := -file-line-error -halt-on-error -interaction=nonstopmode -recorder

.PHONY: all build clean show

all: build

build: tabelas.tex
	$(BUILD) $(BUILD_OPTS) tabelas.tex

clean:
	$(RM) *.iml .DS_Store *.aux *.log *.bcf *.bbl *.fdb_latexmk *.fls *.run.xml *.blg *.synctex.gz tabelas.pdf
