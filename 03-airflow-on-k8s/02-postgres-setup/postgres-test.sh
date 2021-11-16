#!/bin/bash
kubectl get pods
kubectl exec -it {{ pid_id }} -- psql -U postgres -

