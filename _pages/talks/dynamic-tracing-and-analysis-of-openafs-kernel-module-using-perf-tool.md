---
title: Dynamic tracing and analysis of OpenAFS kernel module using Perf tool
slug: dynamic-tracing-and-analysis-of-openafs-kernel-module-using-perf-tool
permalink: /talks/dynamic-tracing-and-analysis-of-openafs-kernel-module-using-perf-tool/
layout: workshop/talk
presenters:
  - name: Kailas Zadbuke
    org: IBM India Pvt. Ltd.
  - name: Todd DeSantis
    org: IBM
---

This presentation will talk about how to trace and analyse the OpenAFS kernel
module functions dynamically.  Adding static tracepoints requires a code edit,
rebuild of code, whereas dynamic tracepoints can be placed at any time at any
place within the code during runtime. In this talk, we will show how we can
leverage the perf tool to add the perf probes within the OpenAFS kernel module.
Using the perf tool, we will show how we can analyse the calls by extracting
argument values, stack trace of the function calls.

In this talk, mainly we will focus on architecture of perf tool and how it can
be used for profiling, dynamic tracing and instrumentation of OpenAFS kernel
module. We will also touch on tracing user space processes like AFS servers.
