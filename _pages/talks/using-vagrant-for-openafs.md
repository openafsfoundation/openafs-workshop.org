---
title: Using Vagrant for OpenAFS
slug: using-vagrant-for-openafs
permalink: /talks/using-vagrant-for-openafs/
layout: workshop/talk
presenters:
  - name: Amar Bhandari
    org: IBM
  - name: Kailas Zadbuke
    org: IBM
  - name: Todd DeSantis
    org: IBM
---

This presentation will talk about How Vagrant can be used in setting up
development & testing environment of Openafs.

Vagrant is an open-source tool that helps us to automate the creation and
management of Virtual Machines. Vagrant creates the Virtual Machine on top of
each physical machine, automatically installs and setups all the
components/packages mentioned in configuration file. It provides a ready
start-to-work Virtual Machine instantaneously. Using the vagrant box, it is
possible to create multiple identical VM.

For Openafs, vagrant can be used to create multiple identical development &
testing sandboxes.  For Admins, if we provide the vagrant box with the latest
Openafs pre-installed, admins can quickly configure the VM as server/client and
start their testing.  Admins will not need to build the Openafs, as it will be
already installed in vagrant box.
