# arXivtool
Tool to prepare directory for arXiv

* makes a new folder 
* moves all `.cls` files
* expands `filename.tex` into it, including the bibliography, removing comments
* moves graphics files into the folder (probably doesn't work if they're not supposed to be in the same folder as filename.tex) 
* assumes `filename.bbl` is stored in `tmp` folder relative to the `filename.tex`
* moves `lipics` like things to the folder too.


# LIPIcs

Does everything above, but doesn't expand the bibliography into the file (since LIPIcs requires a bib file). 
Instead it makes a new `refs.bib` from the existing aux file. So make sure final paper uses `refs.bib` and not `ref.bib` or `biblio.bib` or any `myproject.bib`.

Usage
-----

`filename.tex` should already be compiled, such that `filename.bbl` exists

`./arxiv.sh [filename] [destination]`


* `filename` default is `main` (to find `main.tex`)
* `destination` default is `arxiv` (to place in folder called `arxiv`  in the current directory)

