chapters=ps1.tex ps2.tex ps3.tex ps4.tex ps5.tex ps6.tex ps7.tex

ps-online.pdf : ps-online.tex main.tex ps.bib preface.tex \
		$(chapters) simplex.pdf square.pdf globe.pdf
	latexmk -pdf ps-online

ps-letter.pdf : ps-letter.tex main.tex ps.bib preface.tex \
		$(chapters) simplex.pdf square.pdf globe.pdf
	latexmk -pdf ps-letter

ps-a4paper.pdf : ps-a4paper.tex main.tex ps.bib preface.tex \
		$(chapters) simplex.pdf square.pdf globe.pdf
	latexmk -pdf ps-a4paper

all : ps-online.pdf ps-letter.pdf ps-a4paper.pdf

simplex.pdf : simplex-page.tex
	pdflatex simplex-page
	pdfcrop simplex-page.pdf simplex.pdf

square.pdf : square-page.tex
	pdflatex square-page
	pdfcrop square-page.pdf square.pdf

globe.pdf : globe-page.tex
	pdflatex globe-page
	pdfcrop globe-page.pdf globe.pdf

.PHONY : clean

clean :
	rm -f preface.aux ps1.aux ps2.aux ps3.aux ps4.aux ps5.aux ps6.aux ps7.aux \
	ps-online.aux ps-online.bbl ps-online.bcf ps-online.blg ps-online.fdb_latexmk \
	ps-online.fls ps-online.log ps-online.out ps-online.pdf \
	ps-online.run.xml ps-online.synctex.gz ps-online.toc \
	ps-letter.aux ps-letter.bbl ps-letter.bcf ps-letter.blg ps-letter.fdb_latexmk \
	ps-letter.fls ps-letter.log ps-letter.out ps-letter.pdf \
	ps-letter.run.xml ps-letter.synctex.gz ps-letter.toc \
	ps-a4paper.aux ps-a4paper.bbl ps-a4paper.bcf ps-a4paper.blg ps-a4paper.fdb_latexmk \
	ps-a4paper.fls ps-a4paper.log ps-a4paper.out ps-a4paper.pdf \
	ps-a4paper.run.xml ps-a4paper.synctex.gz ps-a4paper.toc \
	simplex-page.log simplex-page.aux simplex-page.pdf simplex.pdf \
	square-page.log square-page.aux square-page.pdf square.pdf \
	globe-page.log globe-page.aux globe-page.pdf globe.pdf
