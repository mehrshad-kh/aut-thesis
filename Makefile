default: all

all:
	latexmk -pv -pdf src/main

clean:
	rm -rf aux/*
	rm -rf build/*

