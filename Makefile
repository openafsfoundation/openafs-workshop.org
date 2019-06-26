.PHONY: all install build

DESTDIR=/var/www/html

all: build

install: build

build:
	jekyll build -d $(DESTDIR)
