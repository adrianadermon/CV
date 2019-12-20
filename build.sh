#!/bin/sh

pandoc --standalone --metadata date="`date "+%b %e, %y"`" --latex-engine=xelatex --include-in-header=latex_header.tex --variable=subparagraph --variable papersize=a4 --verbose -o CV.pdf CV.md
