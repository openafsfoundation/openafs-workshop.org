---
layout: workshop/talk
permalink: /talks/handling-dafs-volume-packages-dynamically-through-fssync-debug/
title: Handling DAFS volume packages dynamically through fssync-debug
slug: handling-dafs-volume-packages-dynamically-through-fssync-debug
presenters:
  - name: Ganesh G Chaudhari
    org: IBM
  - name: Kailas Zadbuke
    org: IBM
  - name: Indira Sawant
    org: IBM
  - name: Todd DeSantis
    org: IBM
---

The fssync-debug is a command suite that allows low-level inspection and control
of the DA file-server volume packages. Running this command suit requires
understanding of the volume finite-state machine and their various volume
states. A finite state machine is a computation model that is implemented
considering the various AFS volume states and used to simulate sequential logic.
Finite state machines can be used to model problems in many fields. fssync-debug
command suit operates at an extremely low-level and hence requires detailed
knowledge of the AFS architecture and code.  As a part of presentation, we will
cover various volume states and how to dynamically handle DAFS volume packages
using command suit options of fsync-debug like; attach, detach, online, offline,
callback, etc.  We will also touch on analogous command suit salvsync-debug and
FSM flow during this talk.
