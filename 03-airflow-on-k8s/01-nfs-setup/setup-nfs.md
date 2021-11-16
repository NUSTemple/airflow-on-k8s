# Setup NFS 
## Install NFS Server on host
```bash
sudo apt install nfs-kernel-server -y
```

## Create Shared Folder
```bash
sudo mkdir -p /k8s/d1
sudo mkdir -p /k8s/d2
```

## Change Folder Ownership
```bash
sudo chown -R nobody:nogroup /k8s/d1
sudo chown -R nobody:nogroup /k8s/d2
```

## Change Folder Permission
```bash
sudo chmod 777 -R /k8s/d1
sudo chmod 777 -R /k8s/d2
```

## Whitelist Client host IP for NFS Access
```bash
sudo vim /etc/exports
```
Add below line in file 
```text
/k8s/d1 192.168.50.0/16(rw,sync,no_subtree_check,no_root_squash)
/k8s/d2 192.168.50.0/16(rw,sync,no_subtree_check,no_root_squash)
```
Restart Server
```bash
$ sudo exportfs -a
$ sudo systemctl restart nfs-kernel-server
```

## Install NFS for all client host
```bash
sudo apt install nfs-common -y
```

## Test NFS Setup
Go to one of client host
```bash
sudo mkdir -p /k8s/d1
sudo mkdir -p /k8s/d2
sudo mount mysql01:/k8s/d1 /k8s/d1
sudo mount mysql01:/k8s/d1 /k8s/d1
```
Create a dummy file to test NFS 

```bash
cd /k8s/d1
touch file1.txt file2.txt file3.txt
ls -lrt /k8s/d1/
```
If there is permission issue, try to use sudo access to create the file. 


### Reference 
[How to Install and Configure an NFS Server on Ubuntu 18.04](https://www.tecmint.com/install-nfs-server-on-ubuntu/)