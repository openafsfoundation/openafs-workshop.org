---
title: Using Virtualization to debug the OpenAFS Linux kernel module
slug: using-virtualization-to-debug-the-openafs-linux-kernel-module
permalink: /talks/using-virtualization-to-debug-the-openafs-linux-kernel-module/
layout: workshop/talk
presenters:
  - name: Cheyenne Wills
    org: Sine Nomine Associates
slides: virt-debugging.pdf
---

Several of the Linux virtualization engines provide facilities that allow a
running guest system to be examined and controlled by a source code debugger.
With these facilities and some knowledge of the internals of the OpenAFS kernel
module, the debugger can be used interactively to pause and examine the
internal state and memory of a running guest system. In this talk we will focus
on setting up and starting a debugging session to take a quick peek inside a
running OpenAFS kernel module.
