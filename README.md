# kube-ceph-demo
Scripts for the demo Kubernetes + Ceph

## On a Bright cluster
On a Bright 8.0 cluster you can easily setup both Ceph and Kubernetes with a
single script provided in this repository:

```
$./setup-bright.sh
```

Then wait for the nodes to reboot.

## Setup on a non-Bright cluster
You can run the demo even if you don't have a cluster setup with Bright Cluster Manager.
Deploy Ceph and Kubernetes the way you prefer and make sure you have working `kubectl` and
`ceph` commands on the head node of the cluster.

## When you have Ceph and Kubernetes
You can run the demo by using the following scripts in sequence:

```
./create-pool.sh
./create-auth.sh
./create-secrets.sh
kubectl apply -f storage-class.yaml
kubectl apply -f app.yaml
```

To delete the app:

```
kubectl delete -f app.yaml
```

Verify that the created Persistent Volume is gone by using `kubectl get pv`.
