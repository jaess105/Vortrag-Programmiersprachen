define generate_with_bib
	pdflatex $(1)
	bibtex $(1)
	pdflatex $(1)
	pdflatex $(1)
endef

compile:
	$(call generate_with_bib, Programmiersprachen)

clean:
	rm -f *.nav *.snm *.log *.out *.aux *.toc *.bbl *.blg *.vrb *.bcf *.xml *.gz

notes:
	cp Programmiersprachen.tex Programmiersprachen_with_notes.tex
	sed -E -i '1 s/\\input\{.*\}/\\input\{..\/head\/header_with_notes}/' Programmiersprachen_with_notes.tex
	$(call generate_with_bib, Programmiersprachen_with_notes)
	rm Programmiersprachen_with_notes.tex

hhu:
	cp Programmiersprachen.tex Programmiersprachen_hhu.tex
	sed -E -i '1 s/\\input\{.*\}/\\input\{..\/head\/header_hhu}/' Programmiersprachen_hhu.tex
	$(call generate_with_bib, Programmiersprachen_hhu)
	rm Programmiersprachen_hhu.tex


# sed -E -i 's/header/header_hhu/g' Programmiersprachen_hhu.tex