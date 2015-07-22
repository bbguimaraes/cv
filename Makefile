.PHONY: clean
all: cv.pdf
cv.pdf: cv.tex overview.tex detailed.tex
	pdflatex cv.tex
clean:
	rm -f cv.{aux,log,out,pdf} detailed.aux overview.aux
