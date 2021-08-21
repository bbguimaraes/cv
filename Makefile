PARTS = education.tex others.tex overview.tex professional.tex projects.tex
ENV = LANG=C max_print_line=1000 error_line=254 half_error_line=238

.PHONY: clean
all: cv.pdf
cv.pdf: cv.tex $(PARTS)
	$(ENV) texfot pdflatex --halt-on-error cv.tex
clean:
	rm -f cv.{log,out,pdf} $(PARTS:.tex=.aux)
