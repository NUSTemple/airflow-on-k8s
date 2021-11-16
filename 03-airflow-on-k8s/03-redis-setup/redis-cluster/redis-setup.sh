#!/bin/bash

# Create PV
kubectl create -f redis-pv.yaml 

# Create Config Map
kubectl create configmap redis-conf --from-file=redis.conf -n airflow

# Create headless-service
kubectl create -f redis-headless-service.yaml -n airflow

# Create STS
kubectl create -f redis-sts.yaml -n airflow

# Create Service
kubectl create -f redis-access-service.yaml -n airflowcat > /etc/apt/sources.list



