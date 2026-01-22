
TEX_SOURCES = $(wildcard *.tex)

.PHONY: all
all: uvacs_gradhandbook.pdf

uvacs_gradhandbook.pdf: $(TEX_SOURCES)
	latexrun  --latex-cmd=lualatex --latex-args=-shell-escape -o $@ main.tex

.PHONY: publish
publish: uvacs_gradhandbook.pdf
	cp uvacs_gradhandbook.pdf pdfs/uvacs_gradhandbook_$(shell date '+%Y-%m-%d').pdf
	cp uvacs_gradhandbook.pdf pdfs/uvacs_gradhandbook-current.pdf
