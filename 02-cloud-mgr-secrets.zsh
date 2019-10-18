#! /bin/zsh

# Apply the API Public and API Private keys
echo -e "\n=== Creating access via Cloud Manager API Keys ==="
kubectl -n $K8S_NAMESPACE \
  create secret generic mongodb-cloud-mgr \
  --from-literal="user=$PUBLIC_API_KEY" \
  --from-literal="publicApiKey=$PRIVATE_API_KEY"

# Check it
echo -e "\n=== Verify the secret ==="
kubectl describe secrets/mongodb-cloud-mgr -n $K8S_NAMESPACE
