#!/bin/bash
kubectl create secret generic ceph-secret --type="kubernetes.io/rbd" \
        --from-literal=key=$(ceph auth get-key client.admin) \
        --namespace=kube-system
kubectl create secret generic ceph-secret-user --type="kubernetes.io/rbd" \
        --from-literal=key=$(ceph auth get-key client.kube) \
        --namespace=default
