#!/bin/bash

# Create statsd-exporter
kubectl apply -f ./statsd-exporter-app.yaml

# Create statsd-exporter service
kubectl apply -f ./statsd-exporter-service.yaml
