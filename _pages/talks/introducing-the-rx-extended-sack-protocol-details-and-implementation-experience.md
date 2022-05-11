---
title: Introducing the RX Extended SACK Protocol - Details and Implementation Experience
slug: introducing-the-rx-extended-sack-protocol-details-and-implementation-experience
permalink: /talks/introducing-the-rx-extended-sack-protocol-details-and-implementation-experience/
layout: workshop/talk
presenters:
  - name: Jeffrey Altman
    org: AuriStor, Inc.
---

The RX protocol inherited from IBM AFS is incapable of filling a network pipe
with a single RPC when the pipe's bandwidth delay product exceeds 44 1/4 KB. On
a 1 Gbit/sec pipe with a 1ms RTT, the maximum theoretical throughput is 360
Mbit/sec with a maximum window size of 44 KB. The RX ACK packet format provides
for a theoretical maximum window of 65535 packets but the Selective
Acknowledgment (SACK) Table is limited to 255 packets. with 255 packets the
maximum window size is 351 KB or maximum throughput of 2.875 Gbit/sec with 1ms
RTT. Increase the RTT to 8ms and the maximum throughput is once again reduced
to 360 Mbit/sec. The RTT on cross-Atlantic commodity internet pipes often
exceed 110ms which reduces the theoretical throughput to 28 MBit/sec.

This presentation will describe AuriStor's  RX Extended SACK Table protocol
extension, prior efforts at extending the maximum window size, and preliminary
results on real-world networks using AuriStor's prototype supporting maximum
windows up to 8192 packets or 11MB.  In addition to growing the maximum window
size the RX Extended SACK protocol extension corrects several weaknesses in the
RX ACK which have collected over the past 32 years.  These include the
inconsistent meaning of the Previous Packet field and the lack of a
well-defined method for introducing new ACK Trailer Fields.

Finally, the author will relate important lessons learned during the implementation.
