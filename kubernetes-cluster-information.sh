#!/bin/sh

echo "                       SERVICES:" > kubernetes-cluster-information-output
# Get services and their information, then overwrite to kubernetes-cluster-information-output.
kubectl get svc -o wide >> kubernetes-cluster-information-output

# Add a whitespace
echo " " >> kubernetes-cluster-information-output

echo "                        PODS:" >> kubernetes-cluster-information-output
# Get pods and their information, then append to kubernetes-cluster-information-output.
kubectl get pods -o wide >> kubernetes-cluster-information-output