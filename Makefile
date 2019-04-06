all: index.html cv.pdf cv-fr.pdf visual.png

index.html: index.md publications.html
	pandoc --filter pandoc-citeproc -s index.md publications.html -t html5 -o index.html

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
	pandoc --filter pandoc-citeproc $< -t html5 -o $@

publications.html: preprints.html articles.html books.html chapters.html conferences.html others.html magazines.html
	sed -i '' s/"refs"/"refs1"/ preprints.html
	sed -i '' s/"refs"/"refs2"/ articles.html
	sed -i '' s/"refs"/"refs3"/ books.html
	sed -i '' s/"refs"/"refs4"/ chapters.html
	sed -i '' s/"refs"/"refs5"/ conferences.html
	sed -i '' s/"refs"/"refs6"/ others.html
	sed -i '' s/"refs"/"refs7"/ magazines.html
	pandoc $^ -o publications.html

cv.pdf: cv.tex
	pandoc cv.md -o content.tex
	lualatex cv
# 	biber cv
# 	lualatex cv
	open cv.pdf

cv-fr.pdf: cv-fr.tex
	pandoc cv-fr.md -o content-fr.tex
	lualatex cv-fr
# 	biber cv-fr
# 	lualatex cv-fr
	open cv-fr.pdf

visual.png: Makefile
	make -Bnd | ~/code/makefile2graph/make2graph | sed s/green/forestgreen/g > visual.dot
	dot -Tpng visual.dot > visual.png

clean:
	rm -f publications.html
	rm -f preprints.html articles.html books.html chapters.html conferences.html others.html magazines.html
	rm -f cv.pdf résumé.pdf cv-fr.pdf visual.png index.html

bibclean:
	rm -f preprints.bib articles.bib books.bib chapters.bib conferences.bib others.bib magazines.bib

publish:
	mv cv.pdf résumé.pdf
	mv cv-fr.pdf CV.pdf
	scp CV.pdf résumé.pdf mangaki:/srv/http/jj/_static/
