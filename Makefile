# Makefile for converting markdown CV to PDF

PANDOC_OPTIONS=--standalone --metadata date="`date "+%B %e, %Y"`"
LATEX_OPTIONS=--latex-engine=xelatex --include-in-header=latex_header.tex --variable=subparagraph --variable papersize=a4

all: CV.pdf 

CV.pdf: CV.md latex_header.tex
	pandoc $(PANDOC_OPTIONS) $(LATEX_OPTIONS) -o $@ $<
