1. Setup SSH and Hosts
2. Install Ansible
3. Install Docker
   ```bash
    sudo apt-get remove docker docker-engine docker.io -y
    sudo apt install docker.io -y
    sudo systemctl start docker
    sudo systemctl enable docker
    sudo usermod -aG docker pengtan
   ```
4. Install Master Node
5. Install Slave Node
   ```bash
   pengtan@master01:~$ kubectl get nodes
    NAME       STATUS   ROLES                  AGE     VERSION
    master01   Ready    control-plane,master   19m     v1.20.12
    mysql01    Ready    <none>                 12m     v1.20.12
    slave01    Ready    <none>                 5m2s    v1.20.12
    slave02    Ready    <none>                 2m26s   v1.20.12
    slave03    Ready    <none>                 75s     v1.20.12
   ```