---
title: A History of RX Connection Management
slug: a-history-of-rx-connection-management
permalink: /talks/a-history-of-rx-connection-management/
layout: workshop/talk
presenters:
  - name: Jeffrey Altman
    org: AuriStor, Inc.
---

AFS 3.0 shipped with an RX Connection defined by an 8-tuple (source address,
source port, destination address, destination port, epoch, cid, direction,
security index) and all was good.  Over the course of the next three decades
various changes were introduced intended to improve reliability or security.
Examples include ignoring the source address; the introduction of high
epoch-bit processing; security index restrictions; and connection peer
migration.  Although the intentions were good these changes introduced security
vulnerabilities (OPENAFS-SA-2003-002) and new connectivity issues.  This
presentation will review the history of RX from AFS 3.0 to the present day in
IBM AFS, OpenAFS and AuriStorFS.  It will explain the various changes, when and
why they were introduced; describe the problems they caused; and make
recommendations for the future.
