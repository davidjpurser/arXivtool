# arXivtool
Tool to prepare directory for arXiv

* makes a new folder 
* moves all `.cls` files
* expands `filename.tex` into it, including the bibliography, removing comments
* moves graphics files into the folder (probably doesn't work if they're not supposed to be in the same folder as filename.tex) 



Usage
-----

`filename.tex` should already be compiled, such that `filename.bbl` exists

`./arxiv.sh [filename] [destination]`


* `filename` default is `main` (to find `main.tex`)
* `destination` default is `arxiv` (to place in folder called `arxiv`  in the current directory)

