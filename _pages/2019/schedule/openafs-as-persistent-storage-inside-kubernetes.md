---
layout: workshop/talk
year: 2019
title: OpenAFS as Persistent Storage inside Kubernetes using Container Storage Interface plugin for OpenAFS
permalink: /2019/schedule/openafs-as-persistent-storage-inside-kubernetes/
slides: 2019-06-20-02-yyadav-openafs-csi.pdf
presenters:
  - Yadavendra Yadav, IBM
  - Todd DeSantis, IBM
---

Storage is required by containers and pods for a variety of purposes, from
caching data to building stateful applications.  Shared filesystems can be
easily used as a persistent storage within container, as it will be available
on all the nodes in a cluster. So, when PODs get scheduled/moved on different
nodes due to failover/replication etc., persistent storage would be available
on that node too. OpenAFS is a shared filesystem and has multiple benefits like
location independence, Scalability, Security, uniform namespace, replication
etc., which makes it a good candidate for Persistent Storage inside container.
Certain ML/DL workloads inside container read large data sets/models repeatedly
and for such cases OpenAFS client caching makes these operations faster.
“Container Storage Interface” (CSI) was developed as a standard for exposing
arbitrary block and file storage systems to containerized workloads on
Container Orchestration Systems (COs) like Kubernetes.
