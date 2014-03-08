.SUFFIXES: .md .pdf .html

ALL_OPTIONS=-s -S --bibliography references.bib
PDF_OPTIONS=--latex-engine xelatex
HTML_OPTIONS=

.md.pdf:
	pandoc $(ALL_OPTIONS) $(PDF_OPTIONS) -t pdf -o $@ $<

.md.html:
	pandoc $(ALL_OPTIONS) $(HTML_OPTIONS) -t html -o $@ $<
