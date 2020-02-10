.PHONY: all build setup install_debs install_gems

include Makefile.config

all: build

help:
	@echo "make [build] [DESTDIR=<path-to-site>]"
	@echo "make install_debs   -- install ruby on debian/ubuntu"
	@echo "make install_gems   -- install jekyll and gems"

build:
	GEM_HOME=.ruby .ruby/bin/jekyll build -d $(DESTDIR)

clean:
	git clean -f -d -x -q --exclude=.ruby --exclude=Makefile.config

# Install ruby and devel packages to build native extensions.
install_debs:
	sudo apt-get update
	sudo apt-get install build-essential autoconf zlib1g-dev ruby ruby-dev

# Install jekyll and ruby gems required by this theme.
install_gems:
	mkdir -p .ruby
	GEM_HOME=.ruby/ gem install bundler
	GEM_HOME=.ruby/ .ruby/bin/bundle install

Makefile.config:
	echo DESTDIR=_site >Makefile.config
