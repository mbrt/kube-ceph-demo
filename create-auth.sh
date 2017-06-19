#!/bin/bash
ceph auth get-or-create client.kube mon 'allow r' osd 'allow rwx pool=kube'
