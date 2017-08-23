all:
	pandoc -s --filter pandoc-citeproc index.md -t html5 -o index.html
