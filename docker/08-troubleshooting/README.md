## Commands used for troubleshooting

### Info
Get info about the docker engine
```sh
docker info
```

### Events
Monitor the docker events
```sh
docker events
```

See all docker events that happened since a specific point in time (2 hours)
```sh
  docker events --since 2h
```

See all docker events that happened until a specific point in time (30 minutes)
```sh
  docker events --until 30m
```

Filter docker events (create)
```sh
  docker events --filter create
```

### Logs
Get container logs
```sh
  docker container logs {CONTAINER_ID}
```

Watch container logs
```sh
  docker container logs --follow {CONTAINER_ID}
```

Get container logs since a specific point in time (2 hours)
```sh
  docker container logs --since 2h {CONTAINER_ID}
```

Get container logs until a specific point in time (30 minutes)
```sh
  docker container logs --until 30m {CONTAINER_ID}
```

Get the last lines of the container logs (10 lines)
```sh
  docker container logs --tail 10 {CONTAINER_ID}
```

### Inspection
Inspect a docker container
```sh
  docker container inspect {CONTAINER_ID}
```

Inspect a docker image
```sh
  docker image inspect {IMAGE_ID}
```

Inspect a docker network
```sh
  docker network inspect {NETWORK_ID}
```

### Processes
List processes running inside a container
```sh
docker top {CONTAINER_ID_OR_NAME}
```

### Resource Usage
Watch the resource usage of all running containers
```sh
docker stats
```

Get the current resource usage of all running containers
```sh
docker stats --no-stream
```

Get the current resource usage of all containers
```sh
docker stats --no-stream -a
```

Get the resource usage of a specific container
```sh
docker stats {CONTAINER_ID}
```

Get the resource usage of all running containers (scrolling down automatically)
```sh
docker stats --no-trunc
```

### EXEC
Execute a command inside a specific container
```sh
docker exec {CONTAINER_ID} echo Hello World
```

Get access to the container's terminal
```sh
docker exec -it {CONTAINER_ID} bin/bash

docker exec -it {CONTAINER_ID} bin/sh
```