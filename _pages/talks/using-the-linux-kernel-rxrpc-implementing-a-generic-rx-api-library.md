---
title: Using the Linux kernel rxrpc - implementing a generic rx API library
slug: using-the-linux-kernel-rxrpc-implementing-a-generic-rx-api-library
permalink: /talks/using-the-linux-kernel-rxrpc-implementing-a-generic-rx-api-library/
layout: workshop/talk
presenters:
  - name: Marc Dionne
    org: AuriStor
---

The `AF_RXRPC` protocol was added to the Linux kernel as an implementation of
rx that could be used by the in kernel AFS client (kafs). But it can also be
used independently of kafs to build client or server side rx applications in
userspace.

This talk will give an overview of `AF_RXRPC` and how it can be used from
userspace for rx client and server applications.  It will also present an
experimental library that hides the details of the recvmsg/sendmsg usage behind
a generic API.  By implementing the same API on top of the AuriStor rx library,
it becomes possible to write code for a client or server application that can
be linked against either rx implementation.  As a test case, this was used to
create an rxrpc version of the rxperf performance testing tool that can also be
linked against the AuriStor rx library.

The challenges (and bugs) that were encountered will be discussed, as will some
of the current limitations, and ideas for future work in this space.
