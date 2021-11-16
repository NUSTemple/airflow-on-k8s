#! /bin/bash

sudo swapoff -a

kubeadm join 192.168.50.200:6443 --token gqhjej.u8ao3ftvj3h9zcvb \
    --discovery-token-ca-cert-hash sha256:12d806d01fac01adab25d0e9527784af2210f32cc02bc8f7aea9b4bc7b5844eb