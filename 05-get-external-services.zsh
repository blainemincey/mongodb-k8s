#! /bin/zsh

echo "\n=== List the host:port of MongoDB ==="

minikube service list -n $K8S_NAMESPACE 
