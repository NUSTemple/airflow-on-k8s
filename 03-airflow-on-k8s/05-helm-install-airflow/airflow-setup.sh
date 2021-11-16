#!/bin/bash

## set the release-name & namespace
export RELEASE_NAME="airflow-cluster"
export AIRFLOW_NAMESPACE="airflow"
export CHART_VERSION="8.4.0"
export VALUES_FILE="./value/airflow-values.yaml"


echo "Create airflow clusters? [yes]"
read input

if [[ $input == "yes" ]]; then
  echo "Proceed to destroy (if existing) and recreate airflow cluster now"

  helm delete $RELEASE_NAME --namespace $AIRFLOW_NAMESPACE
  helm repo add airflow-stable https://airflow-helm.github.io/chart
  helm repo update

  kubectl apply --namespace $AIRFLOW_NAMESPACE -f ./secret/secret-postgres-db-secrets.yaml
  kubectl apply --namespace $AIRFLOW_NAMESPACE -f ./secret/secret-redis-db-secrets.yaml

  helm install $RELEASE_NAME airflow-stable/airflow \
  --namespace $AIRFLOW_NAMESPACE \
  --version $CHART_VERSION \
  --values $VALUES_FILE
else 
  echo "Skipping airlfow installation"
fi



