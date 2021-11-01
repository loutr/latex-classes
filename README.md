<p align="center"><font color="#006f54">
  <h2 align="center"><font color="#00a57d">Loutr_</font>'s LaTeX Templates</h2>
  <h3 align="center">an untranslated and partially organised</br>collection of LaTeX class files</h3>
</font></p>

---
This repository is a collection of LaTeX class files I use to produce
my personal and professional documents. It was originally intended
for personal use only, hence the lack of properly translated
functions and attributes.


## Installation
The class files hereby provided can be copied next to the desired
`.tex` file. Alternatively, they can be put in the `texmf` folder,
which extends the `PATH` of LaTeX. Using `bash`:
```
mkdir -p "$HOME/texmf/tex/latex/" &&
cp src/*.{sty,cls} "$HOME/texmf/tex/latex/"
```


## Content

### Features
Several class files are provided, and most of them depends on
`base.sty`. This file provides common dependencies, mathematical
macros, verbatim (`listing`) environments and other things. It
may be edited to redefine default values like `\@auteur`,
`\@categorie`, but it should not be used on its own.

Most class files share a common syntax:
- commands like `\auteur{..}`, `\titre{..}` that must be put in
the document prelude, to define document properties that will be
used to produce the title, the headers and the footers;
- beautiful, finely-crafted commands like `\fairetitre` to produce
a title, environments like `rep` (enumerate answers), `question`
(produce an adequate frame to typeset a question), `citation`
(quotes), etc.

Most functions are undocumented but feel free to explore the source
code to discover them. Examples can be found in the `example` directory,
including one generic `.tex` file.

### Class description
- `compte-rendu`: small report for conferences, progress description
in a project, etc.;
- `dm`: general assignment, essays, lecture notes, etc.;
- `rapport`: bigger reports;
- `transparents`: beamer class.


## Contribute
Feel free to file an issue or a pull request for any suggestion.


## License and contact
This project is released into the public domain (see LICENCE.md for
more details).

Lucas Tabary-Maujean, 🄯2021, [e-mail](mailto:l.ta-ma@pm.me)
