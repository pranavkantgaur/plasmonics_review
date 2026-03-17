# Makefile for plasmonics review article
# Usage: make        — build PDF
#        make clean  — remove build artefacts

ARTICLE_DIR := article
TEX         := plasmonics_review
OUTPUT_DIR  := output

.PHONY: all clean

all: $(OUTPUT_DIR)/$(TEX).pdf

$(OUTPUT_DIR)/$(TEX).pdf: $(ARTICLE_DIR)/$(TEX).tex $(ARTICLE_DIR)/references.bib
	cd $(ARTICLE_DIR) && \
	  pdflatex -interaction=nonstopmode $(TEX).tex && \
	  bibtex $(TEX)                                && \
	  pdflatex -interaction=nonstopmode $(TEX).tex && \
	  pdflatex -interaction=nonstopmode $(TEX).tex
	cp $(ARTICLE_DIR)/$(TEX).pdf $(OUTPUT_DIR)/$(TEX).pdf

clean:
	cd $(ARTICLE_DIR) && \
	  rm -f *.aux *.bbl *.blg *.log *.out *.toc *.lof *.lot *.synctex.gz *.pdf
