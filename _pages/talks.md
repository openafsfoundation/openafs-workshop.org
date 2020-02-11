---
layout: workshop/talks
permalink: /talks/
title: Talks
talks:
  - title: "AuriStor File System Status Report"
    presenter: Jeffrey Altman, AuriStor CEO
    desc: >
      An update on major updates to the AuriStor File System in 2019 and
      2020 plus a road map of expected deliverables in 2020.  This will
      include real world milestones achieved by end user sites.

  - title: "Complying with Key Rotation Policies using AuriStorFS"
    presenter: AuriStor
    desc: >
      Many organizations are required to perform key rotation for network
      services on a regular cycle with typical periods ranging from 60 to 180
      days.  Key rotation is relatively easy for standalone services such as a
      host's Kerberos keytab.  However, when keys must be rotated for a
      distributed service a failure to update any one instance's key can
      result in an outage.  This talk will present the techniques that can be
      used with AuriStorFS to rotate cell-wide <code>rxkad_krb5</code>
      and <code>yfs-rxgk</code> keys without the risk of outages.

  - title: "NIST 800 171 considerations for storage"
    presenter: John N. Riley III, Teradactyl LLC. CEO
    desc: >
      Organizations deploying AFS technologies may soon have internal or
      research data subject to NIST 800-171 security standards under executive
      orders from both President Obama and President Trump.  Funding for U.S.
      government federal agencies, commercial U.S. government federal
      contractors, and Educational institutions both domestic and
      international who are receiving grants or other U.S. government federal
      aid will become increasingly subject to compliance.  Teradactyl will
      discuss NIST 800-171 requirements for controlled unclassified
      information.  Learn the requirements and how organizations can adopt a
      compliant backup and archive solution for AFS technologies, HPC
      environments, and other heterogeneous computing platforms.

  - title: "Interoperability of AFS and AuriStor with Backup and Restore"
    presenter: Kristen J. Webb, Teradactyl LLC. CFO
    desc: >
      OpenAFS and AuriStor continue to develop and introduce new features.
      Backup and restore software should provide solutions designed to
      simultaneously recover both of these AFS technologies in the event
      updates result in unintended and undesired consequences.  The solution
      should also be capable of protecting organizational data in operations
      running multiple cells, transitioning between the solutions, or
      deploying both technologies to ensure organizational data integrity and
      business continuity.

  - title: "Proposed RX Extensions"
    presenter: AuriStor
    desc: >
      AuriStor RX and Linux <code>RX_RPC</code> have pushed the RX protocol
      to its limits.  This talk will present several proposals for RX protocol
      extensions which could improve the efficiency on LANs and throughput on high
      throughput high latency networks.  These include proposals to increase
      the effective size of the selective acknowledgment table, negotiate
      large packet sizes up to 64K, and more.

  - title: "Linux: kafs, where are you now?"
    presenter: David Howells, Red Hat
    desc: >
      Linux kernel afs (kafs) and AF_RXRPC have inspired the development of
      many Linux subsystems including keyrings, keyutils, FS-cache, file
      system namespaces, and the new mount api which in turn have influenced
      the development of NFS, CIFS, Plan9 and Ceph.   This talk discusses the
      current state of these technologies, how kafs was added to the Fedora
      Core distribution, and the next steps in its development.

  - title: "AuriStorFS for Microsoft Windows"
    presenter: Jeffrey Altman, AuriStor
    desc: >
      The last version of OpenAFS for Windows, 1.7.33, was released by
      AuriStor in November 2015.  This talk will describe the current status
      of the AuriStorFS for Windows client and the changes that have been
      implemented in pursuit of certification by Microsoft.

---

The [Call for Presentations]({{ site.baseurl }}/cfp/) for the 2020 AFS Technologies Workshop
is open until **Febraury 15, 2020**.
