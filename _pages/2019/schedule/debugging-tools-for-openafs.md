---
layout: single
title: Debugging Tools for OpenAFS Linux Cache Manager
permalink: /2019/schedule/debugging-tools-for-openafs/
---

Most of the Distributed File systems like OpenAFS, NFS etc. have kernel
modules.  For identifying various functional issues, performance bottlenecks,
synchronization issue we use dynamic tracers, so that we can get state of
various in-kernel data structures without going through tedious tasks of -
instrumentation, recompile, install and reboot. For kernel dump analysis we use
"crash" utility. However sometimes it becomes tedious to display all AFS
related data structures from kernel dump. For this we have developed a "crash"
plugin for OpenAFS which prints output similar to OpenAFS kdump from kernel
dump.
