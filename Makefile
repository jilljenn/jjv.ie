all: index.html _layouts/default.html publications.md cv.md cv.pdf cv-fr.pdf visual.png

index.html: index.md
	pandoc --citeproc -s index.md -t html5 -o index.html

_layouts/default.html: _layouts/_default.md
	pandoc -s $< -t html5 -o $@

preprints.bib: biblio.bib
	bib2bib -ob preprints.bib -c '$$type = "UNPUBLISHED"' biblio.bib

articles.bib: biblio.bib
	bib2bib -ob articles.bib -c '$$type = "ARTICLE"' -c 'not $$key : "Mag"' biblio.bib

books.bib: biblio.bib
	bib2bib -ob books.bib -c '$$type = "BOOK" or $$type = "PROCEEDINGS"' biblio.bib

chapters.bib: biblio.bib
	bib2bib -ob chapters.bib -c '$$type = "INCOLLECTION"' biblio.bib

conferences.bib: biblio.bib
	bib2bib -ob conferences.bib -c '$$type = "INPROCEEDINGS"' -c 'not $$key : "workshop"' -c 'not $$key : "poster"' biblio.bib

others.bib: biblio.bib
	bib2bib -ob others.bib -c '$$type = "INPROCEEDINGS"' -c '$$key : "workshop" or $$key : "poster"' biblio.bib

magazines.bib: biblio.bib
	bib2bib -ob magazines.bib -c '$$type = "ARTICLE"' -c '$$key : "Mag"' biblio.bib

%.html: %.md %.bib
	pandoc --citeproc $< -t html5 -o $@

publications.md: preprints.html articles.html books.html chapters.html conferences.html others.html magazines.html
	sed -i.tmp s/"refs"/"refs1"/ preprints.html  # Si Mac OS X
	sed -i.tmp s/"refs"/"refs2"/ articles.html
	sed -i.tmp s/"refs"/"refs3"/ books.html
	sed -i.tmp s/"refs"/"refs4"/ chapters.html
	sed -i.tmp s/"refs"/"refs5"/ conferences.html
	sed -i.tmp s/"refs"/"refs6"/ others.html
	sed -i.tmp s/"refs"/"refs7"/ magazines.html
	rm *.tmp
	pandoc $^ -t html5 -o publications.md

cv.md: cv-en.md
	pandoc --strip-comments --shift-heading-level-by=2 $< -t html5 -o $@

cv.pdf: cv-en.md biblio.bib
	pandoc --filter latexdivs.py cv-en.md -o content.tex
	lualatex cv
	biber cv
	lualatex cv

cv-fr.pdf: cv-fr.md biblio.bib
	pandoc cv-fr.md -o content-fr.tex
	lualatex cv-fr
	biber cv-fr
	lualatex cv-fr

cv-2p.pdf: cv-2p.tex
	pandoc cv-2p.md -o content-2p.tex
	lualatex cv-2p
	biber cv-2p
	lualatex cv-2p

cv-1p.pdf: cv-1p.tex cv-1p.md
	pandoc cv-1p.md -o content-1p.tex
	lualatex cv-1p
	biber cv-1p
	lualatex cv-1p

makefile2graph:
	git clone https://github.com/lindenb/makefile2graph.git
	cd makefile2graph && make

visual.png: Makefile makefile2graph
	export LC_ALL=C && make -Bnd | ./makefile2graph/make2graph | sed s/green/forestgreen/g > visual.dot
	dot -Tpng visual.dot > visual.png

clean:
	rm -f publications.html
	rm -f preprints.html articles.html books.html chapters.html conferences.html others.html magazines.html
	rm -f cv.pdf résumé.pdf cv-fr.pdf visual.png index.html
	rm -r cv.aux cv.bcf cv.blg cv.log cv.out cv.run.xml
	rm -r cv-fr.aux cv-fr.bcf cv-fr.blg cv-fr.log cv-fr.out cv-fr.run.xml

bibclean:
	rm -f preprints.bib articles.bib books.bib chapters.bib conferences.bib others.bib magazines.bib

publish:
	mv cv.pdf résumé.pdf
	mv cv-fr.pdf CV.pdf
	scp CV.pdf résumé.pdf mangaki.fr:/srv/http/jj/_static/
	bundle exec jekyll build && rsync --exclude slides -avz _site/* mangaki.fr:/srv/http/jjv/
