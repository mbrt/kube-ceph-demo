#!/bin/bash
ceph osd pool create kube 100 100
ceph osd pool set kube size 3
ceph osd pool set kube min_size 1
