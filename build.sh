#!/bin/sh

pandoc_options=--standalone --metadata date="`date "+%b %e, %y"`"
latex_options=--latex-engine=xelatex --include-in-header=latex_header.tex --variable=subparagraph --variable papersize=a4

pandoc $PANDOC_OPTIONS $LATEX_OPTIONS -o CV.pdf CV.md
