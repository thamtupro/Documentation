#!/bin/bash

echo "1. Install kubectl version 1.30"
curl -LO https://dl.k8s.io/release/v1.28.0/bin/linux/amd64/kubectl
chmod +x ./kubectl
sudo mv ./kubectl /usr/local/bin/kubectl

echo "2. Install minikube"
curl -Lo minikube https://storage.googleapis.com/minikube/releases/v1.32.0/minikube-linux-amd64
chmod +x minikube
sudo mkdir -p /usr/local/bin/
sudo install minikube /usr/local/bin/

kubectl version
minikube version