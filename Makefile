

.PHONY: all
all: uvacs_gradhandbook.pdf


uvacs_gradhandbook.pdf: main.tex
	latexrun  --latex-cmd=lualatex --latex-args=-shell-escape -o $@ $<


.PHONY: publish
publish: uvacs_gradhandbook.pdf
	cp uvacs_gradhandbook.pdf uvacs_gradhandbook_$(shell date '+%Y-%m-%d').pdf
