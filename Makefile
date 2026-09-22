MAIN=main
BUILD=build

.PHONY: all clean watch

all:
	latexmk -pdf -outdir=$(BUILD) $(MAIN).tex

watch:
	latexmk -pdf -pvc -outdir=$(BUILD) $(MAIN).tex

clean:
	latexmk -C -outdir=$(BUILD) $(MAIN).tex
