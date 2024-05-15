#install redis from public repository
helm upgrade --install --wait redis oci://registry-1.docker.io/bitnamicharts/redis -f ./redis_env.yaml
#install redis-cli from custom helm chart
helm upgrade --install --wait redis-cli ./redis-cli -f ./redis_env.yaml

helm list