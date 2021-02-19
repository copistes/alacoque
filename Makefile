PANDOC=pandoc

FNAME=alacoque

all: $(FNAME).pdf $(FNAME).epub


$(FNAME).pdf : texte.md
	$(PANDOC) texte.md -t pdf -o $@

$(FNAME).epub : texte.md
	pandoc -o $@ $^ --epub-cover-image=cover.png --metadata-file ./metadata.yml
