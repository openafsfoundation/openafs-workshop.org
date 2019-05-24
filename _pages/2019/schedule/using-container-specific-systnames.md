---
layout: single
title: Using Container-specific Sysnames
permalink: /2019/schedule/using-container-specific-systnames/
---

If you've ever thought about using OpenAFS for Docker containers, you may have
realized that you can only have one list of sysnames for @sys expansion. This
can make it difficult to access software in AFS if your containers are running
RHEL7 and SLES12, and need different @sys paths for each. In this talk, we'll
take a look at a recent improvement to OpenAFS that lets you have different
@sys lists for each Linux container. This talk will primarily be using Linux
Docker containers to illustrate this feature, but this works with other
container technologies on Linux, and could also be applied to other platforms
(such as Solaris zones).
