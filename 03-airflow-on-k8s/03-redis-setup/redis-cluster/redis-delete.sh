#!/bin/bash

# Delete Service
kubectl delete svc/redis-access-service -n airflow
kubectl delete svc/redis-service -n airflow

# Delete StatefulSet (sts)
kubectl delete sts/redis-app -n airflow

# Delete PVC
kubectl delete pvc/redis-data-redis-app-0 -n airflow
kubectl delete pvc/redis-data-redis-app-1 -n airflow
kubectl delete pvc/redis-data-redis-app-2 -n airflow
kubectl delete pvc/redis-data-redis-app-3 -n airflow
kubectl delete pvc/redis-data-redis-app-4 -n airflow
kubectl delete pvc/redis-data-redis-app-5 -n airflow

# Delete PV
kubectl delete pv/redis-pv1
kubectl delete pv/redis-pv2
kubectl delete pv/redis-pv3
kubectl delete pv/redis-pv4
kubectl delete pv/redis-pv5
kubectl delete pv/redis-pv6

# Delete ConfigMap
kubectl delete cm/redis-conf -n airflow 
