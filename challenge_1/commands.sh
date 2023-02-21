#! /bin/bash

kubectl apply -f developer-role.yml
kubectl apply -f developer-rolebinding.yml

kubectl apply -f pvc.yml
kubectl apply -f pod.yml
kubectl apply -f service.yml

kubectl config set-credentials martin --client-certificate ./martin.crt --client-key ./martin.key
kubectl config set-context developer --cluster kubernetes --user martin

kubectl config use-context developer