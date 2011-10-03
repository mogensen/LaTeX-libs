MF="master"
BIB="references.bib"

pdf:
	pdflatex $(MF)
	if [ -f $(BIB) ]; then bibtex $(MF); fi
	pdflatex $(MF)
	pdflatex $(MF)
	open $(MF).pdf

clean:
	rm -f *.aux
	rm -f *.bbl
	rm -f *.blg
	rm -f *.dvi
	rm -f *.glg
	rm -f *.glo
	rm -f *.gls
	rm -f *.idx
	rm -f *.ilg
	rm -f *.ind
	rm -f *.ist
	rm -f *.lof
	rm -f *.log
	rm -f *.lot
	rm -f *.nlo
	rm -f *.out
	rm -f *.toc
	rm -f *.fdb_latexmk
	rm -f *.pdfsync
	rm -f *.synctex.gz
	rm -f *.nav
	rm -f *.snm
	rm -f *.vrb
	rm -f *.pdf
