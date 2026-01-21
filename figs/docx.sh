#!/bin/bash
# convert docx to pdf using libreoffice

fbname=$(basename "$1" .docx)
libreoffice --headless --invisible --convert-to pdf $1
pdftk ${fbname}.pdf cat 1 output ${fbname}.pdf.page1
pdfcrop ${fbname}.pdf.page1 ${fbname}.pdf

