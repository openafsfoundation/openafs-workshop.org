---
layout: workshop/talk
permalink: /talks/auristor-file-system-ubik-services-at-scale/
title: AuriStor File System Ubik Services at Scale
slug: auristor-file-system-ubik-services-at-scale
presenters:
  - name: Jeffrey Altman
    org: AuriStor, Inc.
---

Mike Kazaar's 1989 IEEE paper "Ubik: Replicated Servers Made Easy" describes the
performance goals of Ubik services as supporting one write transaction per
second and ten to one hundred read transactions per second on multiple servers
(for load sharing and availability purposes.)  AuriStor File System cells
simultaneously service many tens of thousands of cache managers accessing
hundreds of thousands of volumes maintaining many hundreds of thousands of rx
connections and hundreds of thousands of user/process and host identities.

Marcio Barbosa's 2019 talk "Overcoming Ubik Limitations" described some of the
technical hurdles to obtaining reliable Ubik performance.  This talk will
describe the AuriStorFS Ubik implementation that has sustained 40,000 read
transactions per second across a quorum of six servers while averaging 22 write
transactions per second continuously for more than two days.

The AuriStorFS Ubik service achieves these performance numbers while
prioritizing data integrity and correctness.  Ubik application services were
originally designed around the light-weight process (lwp) model. Safely scaling
a Ubik application service requires not only altering the Ubik protocol and
library implementation but also rethinking application level caching and data
access rules.
