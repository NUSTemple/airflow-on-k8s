#!/bin/bash

export NAMESPACE=airflow

# Create Secret
kubectl create -f redis-db-secrets.yaml -n $NAMESPACE

# Create Deployment
kubectl create -f redis-dp.yaml -n $NAMESPACE

# Create 
kubectl create -f redis-service.yaml -n $NAMESPACE