default: all

all:
	latexmk -pv -pdf src/main

again:
	latexmk -g -pv -pdf src/main

# Why is a 'setup' rule needed? Because:
# latexmk prior to version 4.86 does not support creation of nested 
# subdirectories in auxiliary directory. Versions 4.86 and later do
# add the feature, but I tested once and it still wasn't a charming
# experience. Hence the following rule. README for more info.
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

