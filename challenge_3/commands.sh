#!/bin/bash

kubectl apply -f namespace.yml
kubectl apply -f vote-service.yml
kubectl apply -f vote-deployment.yml
kubectl apply -f redis-service.yml
kubectl apply -f redis-deployment.yml
kubectl apply -f worker-deployment.yml
kubectl apply -f db-service.yml
kubectl apply -f db-deployment.yml
kubectl apply -f result-deployment.yml
kubectl apply -f result-service.yml
