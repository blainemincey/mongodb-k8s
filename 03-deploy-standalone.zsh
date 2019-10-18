#! /usr/bin/env zsh

# Deploy the cloud manager ConfigMap
echo -e "\n=== Deploying the Cloud Manager Standalone ConfigMap ==="
kubectl apply -f cloud-mgr-standalone.yaml 

# Deploy a standalone node
echo -e "\n=== Deploying a standalone mongodb node ==="
kubectl apply -f standalone.yaml

# Track the status of the deployment.  Once successful, ctrl-c to stop
echo -e "\n=== Checking status of standalone deployment.  If status = Running, ctrl-c to stop script. ==="
kubectl get mdb standalone -n $K8S_NAMESPACE -o yaml -w
