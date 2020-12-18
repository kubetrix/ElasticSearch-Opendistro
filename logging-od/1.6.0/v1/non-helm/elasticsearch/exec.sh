#!/bin/bash

kubectl delete -f 1-roles.yaml
kubectl delete -f 2-master-sts.yaml
kubectl delete -f 3-master_svc.yaml
kubectl delete -f 4-data-sts.yaml
kubectl delete -f 5-data-svc.yaml
kubectl delete -f 6-client-deploy.yaml
kubectl delete -f 7-client-svc.yaml
kubectl delete -f 8-psp.yaml
kubectl delete -f 9-es-hq.yaml
kubectl delete -f 10-es-curator.yaml
kubectl delete -f 11-es-curator-config.yaml
kubectl delete -f 12-client-deploy-kibana.yaml
kubectl delete -f 13-client-svc-kibana.yaml
kubectl delete -f 14-data-pdb.yaml
kubectl delete -f 15-master-pdb.yaml

kubectl create -f 1-roles.yaml
kubectl create -f 2-master-sts.yaml
kubectl create -f 3-master_svc.yaml
kubectl create -f 4-data-sts.yaml
kubectl create -f 5-data-svc.yaml
kubectl create -f 6-client-deploy.yaml
kubectl create -f 7-client-svc.yaml
kubectl create -f 8-psp.yaml
kubectl create -f 9-es-hq.yaml
kubectl create -f 10-es-curator.yaml
kubectl create -f 11-es-curator-config.yaml
kubectl create -f 12-client-deploy-kibana.yaml
kubectl create -f 13-client-svc-kibana.yaml
kubectl create -f 14-data-pdb.yaml
kubectl create -f 15-master-pdb.yaml
