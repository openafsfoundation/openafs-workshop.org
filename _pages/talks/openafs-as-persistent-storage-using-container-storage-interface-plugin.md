---
layout: workshop/talk
permalink: /talks/openafs-as-persistent-storage-using-container-storage-interface-plugin/
title: OpenAFS as Persistent Storage using Container Storage Interface plugin
slug: openafs-as-persistent-storage-using-container-storage-interface-plugin
presenters:
  - name: Pravin Junnarkar
    org: IBM
  - name: Todd DeSantis
    org: IBM
  - name: Yadavendra Yadav
    org: IBM
  - name: Indira Sawant
    org: IBM
---

This talk is in continuation of last year's talk on OpenAFS CSI Plugin. It will
focus on certain enhancements in CSI plugin mainly on handling volume lifecycle
management along with security considerations.  We are also trying to add
operator support for CSI plugin, where AFS CSI Plugin will be added as custom
Resource in K8s and will be managed by Operator.

This talk will also focus on a Testing framework designed for OpenAFS CSI. This
testing framework has been developed using Kubernetes python APIs which provides
easy portability on various platforms. The framework covers exhaustive scenarios
like many pods accessing single Openafs volume, one pod accessing multiple
volumes, etc. This framework is having a modular design which makes it easy to
test different scenarios like parallel Read/Write of volumes, ReadOnly access to
volumes, create/delete multiple volumes at a time. One can also make use of this
framework for OpenAFS workload testing by allowing hundreds of threads to run in
parallel to access volumes. The framework supports a declarative model that
helps in extending test matrix easily.
