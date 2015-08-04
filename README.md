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
  * some bits on page 3 (section 15, djvu page 37, weak type)
  * one word in the footnote on page 4 (section 15, djvu p. 38, handwriting)
  * many bits on page 7,8 (section 16bis, djvu p. 40-41, highlighted)
  * whole line on page 10 (section 18, djvu p. 44, highlighted)
  * one bit on page 12 (section 19, djvu p. 46, highlighted)
  * some bits on page 15,16 (section 21, djvu p. 49-50, highlighted)
  * "relato?" on page 29 (section 27, djvu p. 63, word running off page)
  * the assumption on page 30 (section 28, djvu p. 64, highlighted)
  * the footnote on page 115 (section 51, djvu p. 149, punched hole and handwriting)
  * the rest of page 246 (end of section 78, djvu p. 280, missing in scan)
  * the footnote on page 449 (section 111, djvu p. 483, handwriting)
