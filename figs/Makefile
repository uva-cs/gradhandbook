# batch convert all .pptx files in a directory to .pdf  
# files and crop them. 
# 
# to be used in conjunction with ppt.vbs, which converts
# a .pptx file into a pdf. 
#
# usage: copy this file and ppt.vbs to figs/ and run make
# there
#
# environment: windows + cygwin
#

objects := $(patsubst %.pptx,%.pdf,$(wildcard *.pptx))

all : $(objects)

clean:
	rm -rf $(objects)

%.pdf.uncrop : %.pptx
	cscript.exe ppt.vbs `cygpath -aw $^` `cygpath -aw $@`

%.pdf: %.pdf.uncrop
	pdfcrop $^ $@