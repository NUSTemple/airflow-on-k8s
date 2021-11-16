#!/bin/bash
set -e


export NAMESPACE=airflow

echo "Postgres installation starts!"

# Setup Postgres Config
kubectl apply -n $NAMESPACE -f ./postgres-configmap.yaml

# Setup PV and PVC for Postgres
kubectl apply -n $NAMESPACE -f ./postgres-pv.yaml
kubectl apply -n $NAMESPACE -f ./postgres-pvc.yaml

# Install Postgres
kubectl apply -n $NAMESPACE -f ./postgres-statefulset.yaml

# Create Postgres Service
kubectl apply -n $NAMESPACE -f ./postgres-svc.yaml

echo "Postgres installation is done!"