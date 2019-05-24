---
layout: single
title: VLserver memory cache
permalink: /2019/schedule/vlserver-memory-cache/
---

For typical OpenAFS cells, vlserver throughput is very low on the list of
factors that may limit cell performance. However, for one very large OpenAFS
site, the size of the VLDB (several million volumes) began to expose
limitations in the vlserver implementation that were a major detriment to the
cell’s users.  This presentation will explain the original symptoms, root
causes, alternatives that were evaluated, and the solution that was ultimately
delivered.  Even if your site’s VLDB will never be this large, you will gain
valuable information about OpenAFS troubleshooting, instrumentation, and stress
testing.
