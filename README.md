# jjv.ie

Collection of scripts to generate a researcher's homepage and CV.

You may be interested in this if you care about:

- multilingual bibliographies (thanks `autolang=other`)
- sectioned bibliographies in pandoc (thanks [`bib2bib`](https://www.lri.fr/~filliatr/bibtex2html/doc/manual.html#sec13))
- writing Chinese in LuaLaTeX (thanks `luatexja-fontspec`)

![Dependency graph](visual.png)

## Requirements

- [pandoc](https://pandoc.org/installing.html) >= 2.11
- [bibtex2html](https://www.lri.fr/~filliatr/bibtex2html/)
- graphviz
- Python package pandocfilters
- Font Noto Serif (CJK) SC

## Try it

    bundle install
    bundle exec jekyll serve

