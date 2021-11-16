#! /bin/bash

sudo swapoff -a

sudo kubeadm init \
--pod-network-cidr=10.10.0.0/16 \
--ignore-preflight-errors=All

kubectl apply -f https://raw.githubusercontent.com/coreos/flannel/master/Documentation/kube-flannel.yml