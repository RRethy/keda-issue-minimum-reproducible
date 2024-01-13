To reproduce the issue, run the following:

```bash
# creates a kind cluster with a ScaledObject and Deployment
./setup.sh
kubectl --context kind-kind --namespace foobar get hpa -w
```

Initially you may see the replicas be 12, but within a few minutes the targets will change to `2/1 (avg)` and then the replicas will change to 24.

The expected behavior would be the replicas remain at 12.
