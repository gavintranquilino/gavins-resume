.PHONY: pdf clean

pdf:
	mkdir -p out
	latexmk -xelatex -interaction=nonstopmode -file-line-error -outdir=out -auxdir=out Gavin_Tranquilino.tex

clean:
	latexmk -C -outdir=out -auxdir=out Gavin_Tranquilino.tex
