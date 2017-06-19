#!/bin/bash

# This setup is possible if you have a Bright Cluster with
# at least 6 compute nodes

cmsh -c "category; add ceph; commit"
cmsh -c "device; foreach -n node002..node004 (set category ceph); commit"
cm-ceph-setup -c ceph-config.xml

cmsh -c "category; add kube; commit"
cmsh -c "device; foreach -n node005..node006 (set category kube); commit"
cm-kube-setup -y -x kube-config.xml
cmsh -c "device; foreach -c kube (reboot)"
