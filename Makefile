# Makefile for converting markdown CV to PDF and HTML

PANDOC_OPTIONS=--standalone --metadata date="`date "+%B %e, %Y"`"
LATEX_OPTIONS=--pdf-engine=xelatex --include-in-header=latex_header.tex --variable=subparagraph --variable papersize=a4

all: CV.pdf CV.html

CV.pdf: CV.md latex_header.tex
	pandoc $(PANDOC_OPTIONS) $(LATEX_OPTIONS) -o $@ $<

CV.html: CV.md
	pandoc $(PANDOC_OPTIONS) $< -o $@
