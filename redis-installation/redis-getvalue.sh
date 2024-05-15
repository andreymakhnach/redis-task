#run this script with parameters sh ./redis_setvalue.sh myKey
kubectl exec -it $(kubectl get pod -l app.kubernetes.io/name=redis-cli -o name) -- redis-cli -h redis-master -p 6379 GET $1