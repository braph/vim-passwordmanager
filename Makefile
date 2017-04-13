PREFIX = /usr
PROGRAM = vimpass

build:

install:
	install -m 0755 $(PROGRAM).sh $(PREFIX)/bin/$(PROGRAM)
	install -m 0755 -d $(PREFIX)/share/$(PROGRAM)
	install -m 0644 $(PROGRAM).vim $(PREFIX)/share/$(PROGRAM)/$(PROGRAM).vim
