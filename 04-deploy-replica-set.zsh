#! /bin/zsh

# Deploy the cloud manager ConfigMap
echo -e "\n=== Deploying the Cloud Manager Replica Set ConfigMap ==="
kubectl apply -f cloud-mgr-replica-set.yaml 

# Deploy a replica set
echo -e "\n=== Deploying a mongodb replica set ==="
kubectl apply -f replica-set.yaml

# Track the status of the deployment.  Once successful, ctrl-c to stop
echo -e "\n=== Checking status of replica set deployment.  If status = Running, ctrl-c to stop script. ==="
kubectl get mdb replica-set -n $K8S_NAMESPACE -o yaml -w
