.PHONY: clean
all: cv.pdf
cv.pdf: cv.tex
	pdflatex cv.tex
clean:
	rm -f cv.{aux,log,out,pdf} detailed.aux overview.aux
