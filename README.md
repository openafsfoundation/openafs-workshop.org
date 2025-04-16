# openafs-workshop.org

This is the content for the [OpenAFS Workshop](https://workshop.openafs.org)
static webite.

A pre-built Podman container image containing ruby, jekyll, and the required
gems is used to generate the site from the markdown source files.

Each conference year is on a separate git branch.

## Instructions

Install `podman`, `git`, and `make` on your system:

    sudo apt install git make podman

Clone this repository:

    git clone https://github.com/openafsfoundation/openafs-workshop.org.git
    cd openafs-workshop.org

Build the site with:

    make podman-run

The generated pages will be located in the `_site` directory.

To preview the the generated site:

    make podman-serve
