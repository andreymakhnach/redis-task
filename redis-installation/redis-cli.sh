#run redis-cli inside container
kubectl exec -it $(kubectl get pod -l app.kubernetes.io/name=redis-cli -o name) -- redis-cli -h redis-master -p 6379