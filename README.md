# Project skeleton for Beamer presentation

## Commands
- `make build/main.pdf`: Generates slide file.
- `make build/handout.pdf`: Generates slide file without animation.
- `make all`: Alias of `make build/main.pdf`.
- `make clean`: Delete `build` directory to clean everything up.
- `make daemon`: Start automatic recompilation daemon for `main.tex`.

[NOTE] The commands above depend on `latexmk` to build LaTeX files.

## Structure
- `README.md`: This file.
- `main.tex`: Main file for Beamer presentation where the information on top page is defined.
- `content.tex`: Page content which initially includes `example.tex`.
- `handout.tex`: Used for generating handout version of the slides.
- `img/`: Image files. This directory is added to `graphicspath`.
- `build/`: [auto generated] Organising build files. This directory is not managed by `git`.
- `example.tex`: Example content.
