---
layout: workshop/talk
year: 2019
title: How to Saturate a 10GbE Link with an OpenAFS Rx Fileserver
permalink: /2019/schedule/how-to-saturate-a-10g-link-with-an-openafs-rx-fileserver/
slides: 2019-06-19-06-adeason-rxlperf.pdf
presenter: Andrew Deason
---

Network throughput in OpenAFS has always been notoriously bottlenecked by
single-core CPU performance. Even with ideal conditions and low network
latency, it is difficult to ever see the fileserver push more than a gbps or
two, or to see more than one or two CPU cores get stressed. In this talk, we
will explore some of the reasons for this, and show off and discuss some recent
fixes to improve these issues without using TCP or rearchitecting Rx.
