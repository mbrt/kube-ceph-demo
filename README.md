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
Even if you don't have a Bright cluster, you can still setup Ceph and Kubernetes
the way you prefer.

## When you have Ceph and Kubernetes
When you have them, you can try the demo by running the following scripts in
sequence:

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
