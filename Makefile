default: all

setup:
	mkdir aux build

all:
	latexmk -pv -pdf src/main

clean:
	rm -rf aux/*
	rm -rf build/*

