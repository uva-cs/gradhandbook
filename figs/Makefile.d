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

docobjects := $(patsubst %.docx,%.pdf,$(wildcard *.docx)) $(patsubst %.dox,%.pdf,$(wildcard *.dox))

all : $(docobjects) 

clean:
	rm -rf $(docobjects) $(pptobjects)

%.pdf.uncrop : %.docx
	/cygdrive/c/Windows/SysWOW64/cscript.exe docx.vbs "`cygpath -aw $^`" "`cygpath -aw $@`"

%.pdf.uncrop : %.dox
	/cygdrive/c/Windows/SysWOW64/cscript.exe docx.vbs "`cygpath -aw $^`" "`cygpath -aw $@`"
	
%.pdf: %.pdf.uncrop
	pdfcrop $^ $@