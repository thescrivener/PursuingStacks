all : main.pdf

chapters=ps1.tex ps2.tex ps3.tex ps4.tex ps5.tex ps6.tex ps7.tex

main.pdf : main.tex ps.bib preface.tex $(chapters) simplex.pdf square.pdf globe.pdf
	latexmk -pdf main

ebook.pdf : ebook.tex ps.bib preface.tex $(chapters) simplex.pdf square.pdf globe.pdf
	latexmk -pdf ebook

simplex.pdf : simplex-page.tex
	pdflatex simplex-page
	pdfcrop simplex-page.pdf simplex.pdf

square.pdf : square-page.tex
	pdflatex square-page
	pdfcrop square-page.pdf square.pdf

globe.pdf : globe-page.tex
	pdflatex globe-page
	pdfcrop globe-page.pdf globe.pdf

.PHONY: 
clean :
	rm -f main.aux main.bbl main.bcf main.blg main.fdb_latexmk \
	main.fls main.log main.out main.pdf main.run.xml main.synctex.gz main.toc \
	preface.aux ps1.aux ps2.aux ps3.aux ps4.aux ps5.aux ps6.aux ps7.aux \
	simplex-page.log simplex-page.aux simplex-page.pdf simplex.pdf \
	square-page.log square-page.aux square-page.pdf square.pdf \
	globe-page.log globe-page.aux globe-page.pdf globe.pdf \

dist : main.pdf
	rm -rf PursuingStacks
	mkdir PursuingStacks
	cp README.md Makefile main.tex ps.bib preface.tex $(chapters) \
	simplex-page.tex square-page.tex globe-page.tex PursuingStacks
	tar zcf PursuingStacks.tar.gz PursuingStacks
	rm -rf PursuingStacks
	cp main.pdf PursuingStacks.pdf
