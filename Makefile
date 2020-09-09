.PHONY: all
all: kick.docset

.PHONY: install
install:
	open kick.docset

kick.docset: theweb.dk
	dashing build

theweb.dk:
	-wget -r -np -k http://theweb.dk/KickAssembler/webhelp/content

.PHONY: clean
clean:
	rm -rf kick.docset
	rm -rf theweb.dk
