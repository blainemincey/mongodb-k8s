#! /bin/zsh
#
echo -e "=== You are deleting ALL MongoDB Resources and Services ===\n"
# these three operations must be called first!

kubectl delete mdb --all -n mongodb

# any of the following commands must be called after removing all existing mongodb resources
kubectl delete namespace mongodb 
kubectl delete deployment mongodb-enterprise-operator -n mongodb 
kubectl delete crd/mongodb.mongodb.com
kubectl delete service external-connect-mongo
