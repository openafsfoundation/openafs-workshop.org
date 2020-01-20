# openafs-workshop.org

Static website for the OpenAFS Workshop, an conference for admins and
developers interested in the AFS distributed filesystem.

This site is based on the jekyll theme minimal-mistakes, which has been
imported into this repo.

## Generating pages

Install jekyll and the gems used by this theme to generate the site locally.
Use Bundler to install jekyll and the gems required by this theme in order to
get the correct versions.

Checkout project directory.

    git clone https://github.com/openafsfoundation/openafs-workshop.org.git
    cd openafs-workshop.org

Install packages to build native extensions.

    sudo apt-get update
    sudo apt-get install build-essential autoconf
    sudo apt-get install zlib1g-dev

[Install ruby][1]

    sudo apt-get install ruby ruby-dev

[Install bundler][2]

    mkdir .ruby
    export GEM_HOME=.ruby
    export PATH=$PATH:.ruby/bin

    gem install bundler

In the project directory, run bundle to install the ruby gems.

    bundle install

In the project directory, run jekyll to generate the site:

    jekyll build -d <path-to-doc-root>


[1]: https://www.ruby-lang.org/en/documentation/installation/
[2]: https://bundler.io/
