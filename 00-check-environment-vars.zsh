#!/bin/zsh

echo -e "\n=== Checking Environment Variables ==="

echo -e "\n1. Did you configure your API Whitelist in MongoDB Cloud Manager?"

echo -e "\n2. Have you sourced the environment-vars.env yet?"

# Check for K8S Namespace
if [ -z $K8S_NAMESPACE ]; then
    echo -e "\nYour K8S Namespace is NOT set!"
else
    echo -e "\nK8S Namespace: $K8S_NAMESPACE"
fi

# Check for Public API Key
if [ -z $PUBLIC_API_KEY ]; then
    echo -e "\nYour Public API Key is NOT set!"
else
    echo -e "\nYour Public API Key is set."
fi

# Check for Private API Key
if [ -z $PRIVATE_API_KEY ]; then
    echo -e "\nYour Private API Key is NOT set!"
else
    echo -e "\nYour Private API Key is set."
fi

echo -e "\nIf any of your environment variables were not set correctly, please run 'source environment-vars.env'."
