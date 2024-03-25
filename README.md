# openafs-workshop.org

Static website for the OpenAFS Workshop; a conference for admins and developers
interested in the AFS distributed filesystem.

This site generated with Jekyll and requires the minimal-mistakes theme, which
has been imported into this repo.

The Ruby rbenv and gem bundler projects are used to manage the ruby and gem
depenencies.

## Setup

Install `git` and `make`.

    $ sudo apt install git make

Checkout the project:

    $ git clone https://github.com/openafsfoundation/openafs-workshop.org.git
    $ cd openafs-workshop.org

Install system packages (requires sudo):

    $ sudo make install-apt

Install rbenv:

    $ make install-rbenv

Update your profile to activate rbenv. Add the following to your `$HOME/.bashrc`
file then logout and login again.

    eval "$($HOME/.rbenv/bin/rbenv init - bash)"

Install the ruby gems:

    $ make install-bundle

## Generating pages

Each workshop enent is managed on a separate branch. Checkout the current year
with:

    $ git checkout workshop-2024

To generate a local copy and preview the pages in your browser:

    $ make preview

To update the production site (requires AFS tokens with write rights to the
site path):

    $ make workshop
