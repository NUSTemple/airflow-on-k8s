#! /bin/bash

# [Reference](https://airflow.apache.org/docs/apache-airflow/stable/start/local.html)

# Setup Python Env
conda create --prefix /apps/anaconda3/envs/py37airflow python=3.7 -y
conda activate py37airflow

# Pip install airflow

export AIRFLOW_VERSION=2.2.1
export PYTHON_VERSION=3.7
export CONSTRAINT_URL="https://raw.githubusercontent.com/apache/airflow/constraints-${AIRFLOW_VERSION}/constraints-${PYTHON_VERSION}.txt"
pip install "apache-airflow[async,postgres,google,amazon,apache-hive]==${AIRFLOW_VERSION}" --constraint "${CONSTRAINT_URL}"

# Create User
airflow users create \
--role Admin \ 
--username airflow \
--email airflow \
--firstname airflow \
--lastname airflow \
--password airflow

# Start Webserver
airflow webserver --port 9090 &

# Start Scheduler
airflow scheduler &

## Comment
1. Default setup is to use sqlite, should change to mysql
2. webserver and schedule use & to put into background. Not production ready. 





