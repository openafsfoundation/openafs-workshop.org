---
title: On the Naming of Things
slug: on-the-naming-of-things
permalink: /talks/on-the-naming-of-things/
layout: workshop/talk
presenters:
  - name: Simon Wilkinson
    org: AuriStor Ltd
---

The directory structure casts a long shadow over AFS. It functions as a
fileserver name store, a client side cache and as a transport format. Issues
with the format cause some of the fundamental limitations of AFS - arbitrary
limits on directory entries, lack of internationalisation and poor metadata
performance.

This talk will examine each of these issues in turn - looking at scalability,
lookup performance, and the thorny world of Unicode. We’ll look at the
requirements for case insensitivity for Windows, and the unique approach to
normalisation required for Mac OS.

We will present a new directory format building upon these existing foundations
and discuss the challenges involved in transitioning live data over to a new
format. We’ll talk about the need for a different paradigm as directory sizes
grow, and examine the use of lookup and enumeration RPCs

Finally we will consider opportunities for future work that leverages the new
directory format, including support for extended attributes.
