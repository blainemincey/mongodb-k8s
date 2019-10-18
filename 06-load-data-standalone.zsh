#! /bin/zsh

HOST=<IP of Minikube>
PORT=<PORT of Standalone deployment>

echo -e "\n=== Loading data into mongodb standalone ==="

mongoimport --host $HOST --port $PORT --db myStandaloneDb --collection restaurants data/restaurants.json

echo -e "\n=== Opening MongoDB Shell ==="

mongo --host $HOST --port $PORT
