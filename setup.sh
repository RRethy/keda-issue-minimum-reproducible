#! /bin/bash

kind create cluster --config kind-config.yaml
kubectl apply --server-side -f https://github.com/kedacore/keda/releases/download/v2.12.1/keda-2.12.1.yaml
kubectl create ns foobar
kubectl apply -f ./manifest.yaml
