# mongodb-k8s
# Set of scripts to ease the deployment of the MongoDB K8S Operator

## High-level notes (to be completed soon with screenshots)

### Pre-requisites
minikube installed
minikube and kubectl CLI tools installed

### Notes on adding more RAM to the minikube config

### Step 1
Configure API Access via Cloud Manager
https://docs.cloudmanager.mongodb.com/tutorial/configure-public-api-access/

### Step 2
Open up the file example-environment-vars.env
Make the appropriate changes

```
# Defaults to mongodb
K8S_NAMESPACE=mongodb

# Public API Key
PUBLIC_API_KEY=<YOUR PUBLIC KEY>

# Private API Key
PRIVATE_API_KEY=<YOUR PRIVATE KEY>

# Export environment variables to shell
export K8S_NAMESPACE PUBLIC_API_KEY PRIVATE_API_KEY

```

You can keep the file name the same or name it something else

```
source example-environment-vars.env (or whatever you changed it to)
```

### Step 3 - Add Org id to ConfigMap
#### cloud-mgr-standalone.yaml
Find and add your Cloud Manager Org ID and add it to the orgId variable indicated below

```
---
apiVersion: v1
kind: ConfigMap
metadata:
  name: cloud-mgr-configmap-standalone
  namespace: mongodb

data:
  projectName: K8S-standalone
  orgId: <YOUR CLOUD MGR ORG ID>
  baseUrl: https://cloud.mongodb.com
```

#### cloud-mgr-replica-set.yaml
Find and add your Cloud Manager Org ID and add it to the orgId variable indicated below

```
---
apiVersion: v1
kind: ConfigMap
metadata:
  name: cloud-mgr-configmap-replica-set
  namespace: mongodb

data:
  projectName: K8S-replica-set
  orgId: <YOUR CLOUD MGR ORG ID>
  baseUrl: https://cloud.mongodb.com
```

NOTE: Only a single standalone and/or replica set can be created PER PROJECT!  Notice that the projectName variable for both files are different and independent of one another

### Step 4 - Run the various scripts in order

### Step 5 

