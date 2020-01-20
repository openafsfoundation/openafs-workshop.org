.PHONY: all install build setup setup_deb setup_gem

DESTDIR=/var/www/html

all: build

install: build

build:
	GEM_HOME=.ruby .ruby/bin/jekyll build -d $(DESTDIR)

setup_deb:
	sudo apt-get update
	sudo apt-get install build-essential autoconf zlib1g-dev ruby ruby-dev

setup_gem:
	mkdir -p .ruby
	GEM_HOME=.ruby/ gem install bundler
	GEM_HOME=.ruby/ .ruby/bin/bundle install

setup: setup_deb setup_gem

