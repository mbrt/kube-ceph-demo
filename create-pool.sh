#!/bin/bash

# refer to the Ceph documentation for the pool parameters
# the ones provided here work in a fairly small demo cluster
ceph osd pool create kube 100 100
ceph osd pool set kube size 2
ceph osd pool set kube min_size 1
