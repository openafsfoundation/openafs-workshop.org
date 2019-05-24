---
layout: single
title: Overcoming Ubik Limitations
permalink: /2019/schedule/overcoming-ubik-limitations/
---

The current version of the Ubik subsystem prevents transactions of different
types (reads / writes) from running at the same time, and prevents
read-transactions during the recovery phase. These constraints can directly
affect Ubik-using processes, leading to slow performance or even hangs. This
presentation will provide an overview of the limitations mentioned above and
the latest enhancements developed to overcome them.
