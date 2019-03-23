all: publications.html
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

# %.html: %.bib
# 	bib2html $<

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

clean:
	rm -f publications.html
	rm -f preprints.html articles.html books.html chapters.html conferences.html others.html magazines.html

bibclean:
	rm -f preprints.bib articles.bib books.bib chapters.bib conferences.bib others.bib magazines.bib
