#! /bin/bash

#checked logs and edited etc/kubernetes/manifests/kube-apiserver.yaml

#edit port in .kube/config

#restart kubelet
systemctl restart kubelet

#to monitor and debug container runtimes
crictl ps 

kubectl set image deployment/coredns -n kube-system coredns=k8s.gcr.io/coredns/coredns:v1.8.6

kubectl uncordon node01

scp /media/* node01:/web

kubectl apply -f pv.yml

kubectl apply -f pvc.yml

kubectl apply -f pod.yml

kubectl apply -f service.yml

