#!/bin/bash

kubectl -n logging-od delete -f 1-rbac.yaml
kubectl -n logging-od delete -f 2-kibana-config-secret.yaml
kubectl -n logging-od delete -f 3-kibana-deployment.yaml
kubectl -n logging-od delete -f 4-kibana-service.yaml
kubectl -n logging-od delete -f 5-nginx-certs.yaml
kubectl -n logging-od delete -f 6-kibana-auth.yaml
kubectl -n logging-od delete -f 7-kibana-ingress.yaml
				  
kubectl -n logging-od create -f 1-rbac.yaml
kubectl -n logging-od create -f 2-kibana-config-secret.yaml
kubectl -n logging-od create -f 3-kibana-deployment.yaml
kubectl -n logging-od create -f 4-kibana-service.yaml
kubectl -n logging-od create -f 5-nginx-certs.yaml
kubectl -n logging-od create -f 6-kibana-auth.yaml
kubectl -n logging-od create -f 7-kibana-ingress.yaml