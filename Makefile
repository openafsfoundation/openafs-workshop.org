.PHONY: help
help:
	@echo "Usage: make <target> [DESTDIR=<path>]"
	@echo ""
	@echo "Setup targets:"
	@echo "  install-apt       to install ruby build dependencies with apt (requires sudo)"
	@echo "  install-dnf       to install ruby build dependencies with dnf (requires sudo)"
	@echo "  install-rbenv     to install rbenv and ruby (installs to ~/.rbenv)"
	@echo "  install-bundle    to install jekyll and required gems"
	@echo "  update-bundle     to update the gem versions (changes Gemfile.lock)"
	@echo ""
	@echo "Test targets:"
	@echo "  preview           to preview with your browser"
	@echo "  check             to verify the build"
	@echo ""
	@echo "Run targets:"
	@echo "  workshop          to update the workshop website"
	@echo ""
	@echo "Container targets:"
	@echo "  podman-image      to build a podman container image"
	@echo "  podman-run        to generate pages with the podman container"
	@echo "  podman-serve      to preview pages with the podman container"
	@echo "  podman-deploy     to update the workshop website (requires an AFS token)"
	@echo ""
	@echo "Cleanup targets:"
	@echo "  clean             to remove generated files"
	@echo "  reallyclean       to remove locally installed jekyll and gems"

BASEURL  := /afsbpw25
DESTDIR  := _site
PRODDIR  := /afs/.grand.central.org/www/workshop.openafs.org
STAGEDIR := meffie:/var/www/workshop.meffie.org
IMAGE_NAME := ghcr.io/openafsfoundation/openafs-workshop.org/workshop
IMAGE_VERSION := v1

.PHONY: workshop
workshop:
	bash ruby-check.sh
	bundle exec jekyll build -d $(PRODDIR)$(BASEURL)

.PHONY: preview
preview: .install-bundle
	bash ruby-check.sh
	bundle exec jekyll serve --open-url -d $(DESTDIR)$(BASEURL)

.PHONY: check
check: .install-bundle
	bash ruby-check.sh
	bundle exec jekyll build -d $(DESTDIR)$(BASEURL)

.PHONY: install-bundle
install-bundle: .install-bundle

# Install jekyll and ruby gems.
.install-bundle: Gemfile
	bash ruby-check.sh
	gem install bundler --version 2.4.13
	bundle config set path 'vendor/bundle'
	bundle install
	touch .install-bundle

.PHONY: update
update-bundle: .install-bundle
	bash ruby-check.sh
	bundle update

.PHONY: clean
clean:
	rm -rf _site
	rm -rf .sass-cache
	rm -rf .jekyll-cache
	rm -rf .jekyll-metadata

.PHONY: reallyclean
reallyclean: clean
	rm -rf .install-bundle
	rm -rf .bundle
	rm -rf vendor

.PHONY: install-rbenv
install-rbenv:
	@echo "Installing rbenv"
	curl -fsSL https://github.com/rbenv/rbenv-installer/raw/HEAD/bin/rbenv-installer | bash
	@echo "Installing ruby"
	~/.rbenv/bin/rbenv install $(cat .ruby-version)
	@echo "Show rbenv setup instructions."
	~/.rbenv/bin/rbenv init || true

# Install Debian/Ubuntu ruby-build dependencies
.PHONY: install-apt
install-apt:
	apt-get install -y autoconf bison build-essential curl git libreadline6-dev \
		libffi-dev libssl-dev libssl-dev libyaml-dev libyaml-dev zlib1g-dev

# Install Fedora ruby-build dependencies
.PHONY: install-dnf
install-dnf:
	dnf install -y autoconf automake bison bzip2 curl gcc-c++ git-core \
		libffi-devel libtool libyaml-devel openssl-devel patch perl readline \
		readline-devel sqlite-devel zlib zlib-devel

.PHONY: podman-image
podman-image:
	podman build -t workshop:$(IMAGE_VERSION) .

.PHONY: podman-run
podman-run: clean
	mkdir -p _site
	podman run -ti --rm -v $(CURDIR):/app/src:ro -v $(CURDIR)/_site:/app/_site $(IMAGE_NAME):$(IMAGE_VERSION)

.PHONY: podman-serve
podman-serve: podman-run
	podman run -ti --rm -p 4000:4000 -v $(CURDIR):/app/src:ro -v $(CURDIR)/_site:/app/_site $(IMAGE_NAME):$(IMAGE_VERSION) ./jekyll.sh serve

.PHONY: podman-deploy
podman-deploy: podman-run
	cd _site && rsync -a . $(PRODDIR)$(BASEURL)

.PHONY: stage
stage: clean check
	cd $(DESTDIR)$(BASEURL) && rsync -a . $(STAGEDIR)$(BASEURL)
