---
layout: single
title: Faster WAN Volume Operations with DPF
permalink: /2019/schedule/faster-wan-volume-operations-with-dpf/
---

Anyone that has tried to release or move a volume across the WAN knows how
painfully slow Rx can be across high-latency links. Some design decisions in Rx
make it difficult or impossible to fix this, but there are other protocols and
software that already handle this case much better than Rx, so why not use
those? In this talk, we'll look at an enhancement to OpenAFS called DPF, and
how one site is already using it in production to speed up volume operations
with TCP and on-the-fly compression.
