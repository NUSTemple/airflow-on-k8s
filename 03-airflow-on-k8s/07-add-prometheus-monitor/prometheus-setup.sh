#!/bin/bash

# Create Namespace
kubectl create namespace prometheus

# Create PV
kubectl apply -f prometheus-pv.yaml

# Create PVC
kubectl apply -f prometheus-pvc.yaml

# Create ConfigMap
kubectl apply -f prometheus-cm.yaml

# Create Deployment
kubectl apply -f prometheus-dp.yaml

# Create Service
kubectl apply -f prometheus-service.yaml
