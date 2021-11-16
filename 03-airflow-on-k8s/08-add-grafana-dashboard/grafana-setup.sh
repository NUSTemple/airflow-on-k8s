#!/bin/bash

# Create PV
kubectl apply -f grafana-pv.yaml

# Create PVC
kubectl apply -f grafana-pvc.yaml

# Create Deployment
kubectl apply -f grafana-dp.yaml

# Create Service
kubectl apply -f grafana-service.yaml


