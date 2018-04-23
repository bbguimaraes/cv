PARTS = \
	overview.tex education.tex research.tex professional.tex events.tex \
	others.tex
AUX   = \
	overview.aux education.aux research.aux professional.aux events.aux \
	others.aux
.PHONY: clean
all: cv.pdf
cv.pdf: cv.tex $(PARTS)
	pdflatex cv.tex
clean:
	rm -f cv.{aux,log,out,pdf} $(AUX)
