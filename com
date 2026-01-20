kubectl get deploy metrics-server -n kube-system -o yaml > metrics-server-latest.yaml
kubectl apply -f metrics-server-latest.yaml
