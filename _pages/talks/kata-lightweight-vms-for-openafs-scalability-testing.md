---
layout: workshop/talk
permalink: /talks/kata-lightweight-vms-for-openafs-scalability-testing/
title: Kata lightweight VMs for OpenAFS scalability testing
slug: kata-lightweight-vms-for-openafs-scalability-testing
presenters:
  - name: Pravin Junnarkar
    org: IBM
  - name: Yadavendra Yadav
    org: IBM
  - name: Kailas Zadbuke
    org: IBM
  - name: Todd DeSantis
    org: IBM
---

The traditional performance/scalability testing with the OpenAFS module has the
requirement of multiple Bare-metal systems or virtual machines which is
cost-intensive and the setup itself is a laborious process.  An alternative to
this is a widely used containerization approach but their core capability of
sharing the host kernel is actually the limitation with OpenAFS since each
OpenAFS client has to work with its own kernel module.

To overcome these challenges, we investigated Kata Containers. Kata provides a
standard implementation of lightweight virtual machines (VMs) that feels and
performs like containers, but provide the workload isolation and security
advantages of VMs.

The session highlights how the automated OpenAFS testing framework is
effectively using Docker and Kata to provide a reusable and easily reproducible
infrastructure for faster scalability/performance testing.
