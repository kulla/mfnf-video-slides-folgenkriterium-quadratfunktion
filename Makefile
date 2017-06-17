.PHONY: all
all: slides.pdf

slides.pdf: slides.tex
	pdflatex -halt-on-error -interaction batchmode $<
