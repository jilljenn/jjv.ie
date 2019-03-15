all:
	pandoc -s --filter pandoc-citeproc index.md -t html5 -o index.html

articles.bib: biblio.bib
	bib2bib -ob articles.bib -c '$$type = "ARTICLE"' -c 'not $$key : "Mag"' biblio.bib

magazines.bib: biblio.bib
	bib2bib -ob magazines.bib -c '$$type = "ARTICLE"' -c '$$key : "Mag"' biblio.bib

%.html: %.bib
	bib2html $<

lol.htm: index.md
	pandoc -s --filter pandoc-citeproc index.md magazines.html -t html5 -o lol.htm

clean:
	rm articles.bib magazines.bib articles.html magazines.html
