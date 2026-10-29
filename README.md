# Resume

This project builds locally with XeLaTeX. Docker and the VS Code Dev
Containers extension are not required.

## Install dependencies

The resume uses the system Lato font through `fontspec`, so install Lato in
addition to the LaTeX packages.

### Fedora

```sh
sudo dnf install latexmk texlive-xetex texlive-collection-latexextra \
  texlive-collection-fontsrecommended texlive-collection-plaingeneric lato-fonts
```

### Debian or Ubuntu

```sh
sudo apt update
sudo apt install latexmk texlive-xetex texlive-latex-extra \
  texlive-fonts-recommended texlive-plain-generic fonts-lato
```

### macOS

Install MacTeX and the Lato font:

```sh
brew install --cask mactex
brew install --cask font-lato
```

After installing the prerequisites, confirm they are available:

```sh
xelatex --version
latexmk --version
fc-match Lato
```

## Build

From the repository root, run:

```sh
make pdf
```

The PDF is written to `out/Gavin_Tranquilino.pdf`. To build without `make`,
run:

```sh
latexmk -xelatex -interaction=nonstopmode -file-line-error \
  -outdir=out -auxdir=out Gavin_Tranquilino.tex
```

To remove generated LaTeX files:

```sh
make clean
```

LaTeX Workshop is configured to use the same `latexmk (XeLaTeX)` recipe. In
VS Code, install the **LaTeX Workshop** extension and use **LaTeX Workshop:
Build LaTeX project** or the extension's build button.
