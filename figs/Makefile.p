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

pptobjects := $(patsubst %.pptx,%.pdf,$(wildcard *.pptx))

all : $(docobjects) $(pptobjects)

clean:
	rm -rf $(docobjects) $(pptobjects)

%.pdf.uncrop : %.pptx
	/cygdrive/c/Windows/SysWOW64/cscript.exe ppt.vbs "`cygpath -aw $^`" "`cygpath -aw $@`"

%.pdf: %.pdf.uncrop
	pdfcrop $^ $@