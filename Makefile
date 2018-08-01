all: script clean

script:
	pdflatex modulformen.tex
	makeindex modulformen.idx
	pdflatex modulformen.tex
	pdflatex modulformen.tex

silent:
	pdflatex -interaction=batchmode modulformen.tex
	makeindex script.idx
	pdflatex -interaction=batchmode modulformen.tex
	pdflatex -interaction=batchmode modulformen.tex

once:
	pdflatex -interaction=batchmode modulformen.tex

clean:
	rm -f *.aux
	rm -f *.log
	rm -f *.out
	rm -f *.toc
	rm -f *.idx
	rm -f *.ind
	rm -f *.ilg
	rm -f *.loe
	rm -f *.synctex.gz
	rm -f vorlesungen/chapter*/*.log
	rm -f vorlesungen/chapter*/*.aux
	rm -f vorlesungen/lectures/*.log
	rm -f vorlesungen/lectures/*.aux