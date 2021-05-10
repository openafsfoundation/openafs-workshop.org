---
layout: workshop/talk
permalink: /talks/openafs-cache-manager-tracing-using-ebpf/
title: OpenAFS Cache Manager tracing using eBPF
slug: openafs-cache-manager-tracing-using-ebpf
presenters:
  - name: Yadavendra Yadav
    org: IBM
  - name: Todd DeSantis
    org: IBM
---

For debugging Linux Kernel issues in OpenAFS we use dynamic tracers like
systemTap, perf, kprobe/kretprobe etc. Dynamic tracer like systemTap requires
certain packages to be installed on a system, and it creates a kernel module
which gets loaded in kernel to make probes active, same is a case with kprobe &
kretprobe. eBPF can be used to trace a custom kernel module (like OpenAFS) and
is part of Linux kernel itself. Also eBPF creates a register based Virtual
machine which runs JIT native compiled BPF (Berkeley Packet Filter) programs and
this makes it more safe to use in production environment. eBPF stack also have
verifier in place which will make sure BPF programs doesn’t creates issues, e.g.
loops, null pointer deference etc. eBPF can also be used for tracing user space
programs.  In this talk we will focus on architecture of eBPF and how it can be
used for profiling, dynamic tracing and instrumentation of OpenAFS kernel
module. We will also touch on tracing userspace processes like AFS servers.
