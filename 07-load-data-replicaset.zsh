#! /bin/zsh

HOST=<IP of Minikube>
PORT=<Port of Replica Set>

echo -e "\n=== Loading data into mongodb replica set ==="

mongoimport --host $HOST --port $PORT --db myReplicaSetDb --collection restaurants data/restaurants.json

echo -e "\n=== Opening MongoDB Shell ==="

mongo --host $HOST --port $PORT
