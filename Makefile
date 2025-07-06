default: all

all:
	latexmk -pv -pdf src/main

again:
	latexmk -g -pv -pdf src/main

setup:
	mkdir -p aux/src/abstract
	mkdir -p aux/src/appendices
	mkdir -p aux/src/chapters
	mkdir -p aux/src/dic
	mkdir -p aux/src/etc
	mkdir -p aux/src/title

clean:
	rm -rf aux/*
	rm -rf build/*

