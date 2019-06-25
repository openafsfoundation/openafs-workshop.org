---
layout: workshop/talk
year: 2019
title: Overcoming Ubik Limitations
permalink: /2019/schedule/overcoming-ubik-limitations/
slides: 2019-06-20-06-mbarbosa-overcoming-ubik-limitations.pdf
presenter: Marcio Barbosa, Sine Nomine Associates
---

The current version of the Ubik subsystem prevents transactions of different
types (reads / writes) from running at the same time, and prevents
read-transactions during the recovery phase. These constraints can directly
affect Ubik-using processes, leading to slow performance or even hangs. This
presentation will provide an overview of the limitations mentioned above and
the latest enhancements developed to overcome them.
