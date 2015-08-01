Pursuing Stacks
---------------

These files form a LaTeX-version of Grothendieck's _Pursuing Stacks_
(PS) typescript from 1983. The files are released into the public
domain. It is requested, though, that positive changes or alternative
layouts are shared if they could be of help to others.

Building
--------

The included `Makefile` is set up so that all you should need is to
type `make` if you have a recent
[TeX Live](https://www.tug.org/texlive/) installation (including the
`pdfcrop` tool). The reason a `Makefile` is helpful is because three
`pdf`-files, `simplex.pdf`, `square.pdf` and `globe.pdf` are made only
once and then only included once when compiling the main document
(these contain symbols for the three main shape categories mentioned
throughout PS).

To Do List
----------

- review of all equivalences (`\equ`) vs isomorphisms (`\sim`)
- change many `\piz` to `\bpiz` (when the source is `\Cat` mainly)
- say something about later developments inspired by PS
- proof-read, check kerning, add more notes
- put in more forward references to corrections and errata
- figure out missing bits:
  * many bits on page 7,8
  * "highlighted" bits on page 15,16
  * the assumption on page 30
  * the footnote on page 115
  * the rest of page 246
