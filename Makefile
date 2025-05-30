default: all

all:
	latexmk -pv -pdf -outdir=build src/AUTthesis.tex

clean:
	latexmk -c 

