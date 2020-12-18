#!/bin/bash
kubectl delete -f 1-fluentd-cm.yaml
kubectl delete -f 2-fluentd-kubernetes-cm.yaml
kubectl delete -f 3-fluentd-rbac.yaml
kubectl delete -f 4-fluentd-ds.yaml

kubectl create -f 1-fluentd-cm.yaml
kubectl create -f 2-fluentd-kubernetes-cm.yaml
kubectl create -f 3-fluentd-rbac.yaml
kubectl create -f 4-fluentd-ds.yaml
