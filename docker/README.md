## Cheat sheet

```bash
eval $(minikube -p minikube docker-env)
```

```bash
docker network create \
  --driver=bridge \
  --subnet=192.168.2.0/24 \
  --gateway=192.168.2.254 \
  local-bridge
```

```bash
docker-compose up -d
docker exec -it elasticsearch bin/elasticsearch-service-tokens create elastic/kibana kibana-token
docker-compose up -d --force-recreate kibana

nc -vz $(minikube ip) 4317
nc -vz $(minikube ip) 4318
nc -vz $(minikube ip) 55679
nc -vz $(minikube ip) 9090
nc -vz $(minikube ip) 9200
nc -vz $(minikube ip) 5601
```
Kibana UI: http://192.168.64.2:5601
Splunk UI: http://192.168.64.2:8000
