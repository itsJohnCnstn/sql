# Run MySQL

```shell
docker run --name learning-mysql -e MYSQL_ROOT_PASSWORD=password -d mysql:latest
```

# How to connect to MySQL from a Docker container

## Option 1 (simplest): use docker exec

### Run the MySQL client inside the same container:
```shell
docker exec -it learning-mysql mysql -uroot -p
```

## Option 2: expose a port and connect via localhost

### Start MySQL with a port mapping:
```shell
docker run --name learning-mysql \
  -e MYSQL_ROOT_PASSWORD=password \
  -p 3306:3306 \
  -d mysql:latest
```

### Then connect from your host or another container:
```shell
mysql -h 127.0.0.1 -P 3306 -uroot -p
```

## Option 3 (Docker-native): create a shared network

```shell
docker network create johncnstn-mysql-net
```

### Run MySQL:
```shell
docker run --name johncnstn-mysql \
  --network johncnstn-mysql-net \
  -e MYSQL_ROOT_PASSWORD=password \
  -d mysql:latest
```

### Run client:
```shell
docker run -it --rm \
  --network johncnstn-mysql-net \
  mysql mysql -h johncnstn-mysql -uroot -p
```

Why Docker behaves this way (important concept)
•	Container names ≠ global hostnames
•	DNS resolution works per Docker network
•	This prevents accidental cross-container access and improves isolation

This same rule applies to:
•	Docker Compose services
•	Kubernetes pods & services
•	ECS task networking