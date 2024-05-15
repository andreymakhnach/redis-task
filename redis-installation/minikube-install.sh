#!/bin/bash
# intall dependences 
sh ./tools/docker_install.sh
sh ./tools/kubectl_install.sh
sh ./tools/helm_install.sh

#minikube install
curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64
install minikube-linux-amd64 /usr/local/bin/minikube && rm minikube-linux-amd64

#run minikube
minikube start --force

kubectl get nodes