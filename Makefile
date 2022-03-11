.PHONY: all build setup install_apt install_gems clean distclean

include Makefile.config

help:
	@echo "usage: make [target]"
	@echo "targets:"
	@echo "  setup       to install jekyll"
	@echo "  build       to build static site"
	@echo "  clean       to remove generated files"
	@echo "  distclean   to remove jekyll too"
	@echo ""
	@echo "Makefile.config variables:"
	@echo "  PKGMGR      system package manager: apt"
	@echo "  DESTDIR     the build destination directory"

build:
	GEM_HOME=.ruby .ruby/bin/bundle exec .ruby/bin/jekyll build -d $(DESTDIR)

clean:
	git clean -f -d -x -q \
	  --exclude=.ruby/ \
	  --exclude=vendor/ \
	  --exclude=Gemfile.lock \
	  --exclude=Makefile.config

distclean: clean
	rm -rf .ruby/
	rm -rf vendor/
	rm -rf Gemfile.lock

setup: install_$(PKGMGR) install_gems

# Install ruby and devel packages to build native extensions.
install_apt:
	sudo apt install build-essential autoconf zlib1g-dev ruby ruby-dev

# Install jekyll and ruby gems required by this theme.
install_gems: .ruby
.ruby:
	mkdir -p .ruby
	GEM_HOME=.ruby/ gem install jekyll bundler
	GEM_HOME=.ruby/ .ruby/bin/bundle install

Makefile.config:
	echo PKGMGR=apt    >Makefile.config
	echo DESTDIR=_site >>Makefile.config
