# Resume

## Dependencies

Install XeLaTeX, latexmk, Make, and the Lato font.

```sh
# Fedora
sudo dnf install make latexmk texlive-xetex texlive-collection-latexextra \
  texlive-collection-fontsrecommended texlive-collection-plaingeneric lato-fonts

# Debian / Ubuntu
sudo apt update
sudo apt install make latexmk texlive-xetex texlive-latex-extra \
  texlive-fonts-recommended texlive-plain-generic fonts-lato

# macOS (Make also requires Xcode Command Line Tools)
xcode-select --install
brew install --cask mactex font-lato
```

## Build locally

Run from the repository root:

```sh
make pdf                      # general resume
make pdf ROLE=software         # one version
make all                      # every version
make clean                    # remove generated build files
```

Roles: `general`, `devops`, `software`, `biomedical`, `mechanical`, `electrical`, `robotics`.

PDFs: `out/Gavin_Tranquilino.pdf` for general; `out/<role>/Gavin_Tranquilino.pdf` for others.

In VS Code with LaTeX Workshop, open `Gavin_Tranquilino.tex`, select **Build with recipe**, and choose **Resume: <role>**.

## Editing workflow

- Edit bullet wording in `resume/content/experience/` or `resume/content/projects/`.
- Select and reorder bullets in `resume/variants/<role>.tex`:
  ```tex
  \RenderExperience{qidni}{firmware,docker,touchgfx}
  ```
- Add new content files to `resume/library.tex` before selecting them.
- Shared files: `resume/header.tex`, `resume/education.tex`, and `resume/content/skills.tex`. Formatting: `resume/layout.tex`.
- Rebuild the version and open its PDF to review.

## CI

On pushes to `main` or a manual run, GitHub Actions sends a `pdf_update` event to
`gavintranquilino/gavintranquilino.github.io-hugo` using the `WORKFLOW_DISPATCH_TOKEN`
secret. This workflow only sends the event; it does not compile or test the resumes.
