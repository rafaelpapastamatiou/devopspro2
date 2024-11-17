# Docker API

### Install JQ for better json formatting
```sh
sudo apt-get update
sudo apt-get install jq
```

### Get Docker version
```sh
curl --unix-socket /var/run/docker.sock http://localhost/version | jq .
```

### Get Docker info
```sh
curl --unix-socket /var/run/docker.sock http://localhost/info | jq .
```

### Run container

Pull image
```sh
curl \
--unix-socket /var/run/docker.sock \
-X POST \
http://localhost/images/create?fromImage=nginx:latest
```

Create container
```sh
curl \
--unix-socket /var/run/docker.sock \
-X POST \
-d '{
  "Image": "nginx",
  "HostConfig": {
    "PortBindings": {
      "80/tcp": [
        { "HostIp": "0.0.0.0", "HostPort": "8080" }
      ]
    } 
  } 
}' \
-H "Content-Type: application/json" \
http://localhost/containers/create
```

Start container
```sh
curl \
--unix-socket /var/run/docker.sock \
-X POST \
http://localhost/containers/{CONTAINER_ID}/start
```

### List containers

List running containers
```sh
curl \
--unix-socket /var/run/docker.sock \
-X GET \
http://localhost/containers/json | jq .
```

List all containers
```sh
curl \
--unix-socket /var/run/docker.sock \
-X GET \
http://localhost/containers/json?all=true | jq .
```

### Remove container
Stop container
```sh
curl \
--unix-socket /var/run/docker.sock \
-X POST \
http://localhost/containers/{CONTAINER_ID}/stop
```

Delete stopped container
```sh
curl \
--unix-socket /var/run/docker.sock \
-X DELETE \
http://localhost/containers/{CONTAINER_ID}
```

Force delete container
```sh
curl \
--unix-socket /var/run/docker.sock \
-X DELETE \
http://localhost/containers/{CONTAINER_ID}?force=true
```