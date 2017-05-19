TEX =	Fungi_snoRNAome.tex\
	Fungi_snoRNAome.bib\
	results.tex\
	discussion.tex


.PHONY: all
all: Fungi_snoRNAome.pdf

l=latex
b=bibtex
s=dvips
p=ps2pdf
t=pdflatex
m=makeindex

Fungi_snoRNAome.dvi:	${TEX}
			$(l) Fungi_snoRNAome
			$(b) Fungi_snoRNAome
			$(l) Fungi_snoRNAome
			$(l) Fungi_snoRNAome

Fungi_snoRNAome.pdf:	Fungi_snoRNAome.dvi
			$(s) Fungi_snoRNAome.dvi
			$(p) -dAutoRotatePages=/None Fungi_snoRNAome.ps

.PHONY: 	clean		
clean:
		@rm -f Fungi_snoRNAome.pdf Fungi_snoRNAome.ps Fungi_snoRNAome.dvi Fungi_snoRNAome.bbl Fungi_snoRNAome.blg Fungi_snoRNAome.aux Fungi_snoRNAome.log Fungi_snoRNAome.lot Fungi_snoRNAome.lof Fungi_snoRNAome.ilg Fungi_snoRNAome.toc Fungi_snoRNAome.nls Fungi_snoRNAome.nlo
