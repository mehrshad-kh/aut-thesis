default: all

all:
	latexmk -pv -pdf src/AUTthesis.tex

clean:
	rm -rf build/*

