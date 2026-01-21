# CONVERSION
pandoc -s handbook-aug-2024.docx -o main-aug-2024.tex
pandoc -s handbook-sept-2024.docx -o main-sept-2024.tex

# URL
https://docs.google.com/document/d/1JfWsY9CaDgaQvM1Ej9gxmMOkji89DpsMog-9pX07LCg/edit?tab=t.0#heading=h.gjdgxs



# output to html 
# (cannot control output dir?
htlatex main.tex "html"


# not perfect, 
pandoc -s main.tex -o output/main.html
