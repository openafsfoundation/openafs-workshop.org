.PHONY: all build setup install_apt install_gems clean distclean

TESTDIR=/var/www/html
PRODDIR=/afs/.grand.central.org/www/workshop.openafs.org

include Makefile.config

help:
	@echo "usage: make [target]"
	@echo "targets:"
	@echo "  setup       to install jekyll"
	@echo "  test        to build test site"
	@echo "  prod        to build production site"
	@echo "  clean       to remove generated files"
	@echo "  distclean   to remove jekyll too"
	@echo ""
	@echo "Makefile.config variables:"
	@echo "  BASEURL     the build destination subpath (one for each year)"

test:
	GEM_HOME=.ruby .ruby/bin/bundle exec .ruby/bin/jekyll build -d $(TESTDIR)$(BASEURL)

prod:
	GEM_HOME=.ruby .ruby/bin/bundle exec .ruby/bin/jekyll build -d $(PRODDIR)$(BASEURL)

clean:
	git clean -f -d -x -q \
	  --exclude=.ruby/ \
	  --exclude=vendor/ \
	  --exclude=Gemfile.lock

distclean: clean
	rm -rf .ruby/
	rm -rf vendor/
	rm -rf Gemfile.lock

setup: install_apt install_gems

# Install ruby and devel packages to build native extensions.
install_apt:
	sudo apt install build-essential autoconf zlib1g-dev ruby ruby-dev

# Install jekyll and ruby gems required by this theme.
install_gems: .ruby
.ruby:
	mkdir -p .ruby
	GEM_HOME=.ruby/ gem install jekyll bundler
	GEM_HOME=.ruby/ .ruby/bin/bundle install

Makefile.config: _config.yml
	@grep baseurl _config.yml | sed -e 's@baseurl  *:  *@BASEURL=@' -e 's@"@@g' >Makefile.config
