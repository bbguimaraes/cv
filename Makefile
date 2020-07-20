PARTS = \
	education.tex events.tex others.tex overview.tex professional.tex \
	research.tex
.PHONY: clean
all: cv.pdf
cv.pdf: cv.tex $(PARTS)
	pdflatex cv.tex
clean:
	rm -f cv.{log,out,pdf} $(PARTS:.tex=.aux)
