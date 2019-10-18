#! /bin/zsh

# Create the namespace for the K8S deployment
echo -e "\n=== Creating namespace $K8S_NAMESPACE ==="
kubectl create namespace $K8S_NAMESPACE

# Output the namespace to ensure it is created
echo -e "\n=== Check the namespace ==="
kubectl get namespace

# Output the environment variable
echo -e "\nEnvironment value for namespace.  Is it equal to that above?"
echo $K8S_NAMESPACE

# Apply the Custom Resource Definition
echo -e "\n=== Applying Custom Resource Definition ==="
kubectl apply -f crds.yaml

# Deploy the MongoDB Operator for K8S
echo -e  "\n=== Deploying the K8S Operator for MongoDB ==="
kubectl apply -f mongodb-enterprise.yaml
