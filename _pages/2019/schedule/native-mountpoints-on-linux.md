---
layout: workshop/talk
year: 2019
title: Native Mountpoints on Linux
permalink: /2019/schedule/native-mountpoints-on-linux/
slides: 2019-06-19-03-adeason-linux-mtpt.pdf
presenter: Andrew Deason
---

In existing releases of OpenAFS, AFS mountpoints look like plain directories on
the client. Some software, including the Linux kernel itself, tends to not like
how we do that, and over the years this has caused various issues and subtle
odd behavior. Presenting AFS mountpoints as "native" mounts that show up in
'mount' would make these problems go away, and there are actually experimental
patches to OpenAFS to do just that. In this talk, we'll take a look at what it
looks like to run a client like this, and briefly touch on some of the
technical background of this issue.
