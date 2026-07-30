# Cheat sheet

## Start
```bash
docker network create \
  --driver=bridge \
  --subnet=192.168.2.0/24 \
  --gateway=192.168.2.254 \
  local-bridge
```

Some images don't support Apple Silicon (ARM64) and that causes an error -
`no matching manifest for linux/arm64/v8 in the manifest list entries`
```bash
export DOCKER_DEFAULT_PLATFORM=linux/amd64

docker-compose up -d
docker exec -it elasticsearch bin/elasticsearch-service-tokens create elastic/kibana kibana-token
docker-compose up -d --force-recreate kibana
```

## Check
```bash
nc -vz localhost 4317
nc -vz localhost 4318
nc -vz localhost 55679
nc -vz localhost 9090
nc -vz localhost 9200
nc -vz localhost 5601

docker-compose logs > log.log
```
Prometheus UI: http://localhost:9090
Kibana UI: http://localhost:5601
Splunk UI: http://localhost:8000

# Prometheus queries

```promql
{exported_job="experimental-multithreading-java"}
```

## Delete
```bash
docker-compose down -v --remove-orphans
```
