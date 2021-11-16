#! /bin/bash

curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add

sudo apt-add-repository "deb http://apt.kubernetes.io/ kubernetes-xenial main"

sudo apt install --allow-downgrades -y kubeadm=1.20.12-00 kubelet=1.20.12-00 kubectl=1.20.12-00

sudo systemctl start kubelet

kubelet -- version





