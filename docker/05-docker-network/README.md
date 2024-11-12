## Bridge Network Example

Create a new bridge network:

```sh
docker network create devopspro2-bridge-network-example
```

Create using specific subnet and gateway

```sh
docker network create --subnet=10.0.0.0/16 --gateway=10.0.0.1 devopspro2-bridge-network-example-specific
```

List networks:

```sh
docker network ls
```

Inspect a specific network:

```sh
docker inspect devopspro2-bridge-network-example
```

Create an nginx container and connect it to previously created the bridge network:

```sh
docker container run --rm --name devopspro2-bridge-network-example-nginx -d nginx

docker network connect devopspro2-bridge-network-example devopspro2-bridge-network-example-nginx
```

Create an ubuntu container and connect it to previously created the bridge network:

```sh
docker container run --rm -it --name devopspro2-bridge-network-example-ubuntu -d ubuntu /bin/bash

docker network connect devopspro2-bridge-network-example devopspro2-bridge-network-example-ubuntu
```

Disconnect both nginx and ubuntu containers from the bridge network:

```sh
docker network disconnect devopspro2-bridge-network-example devopspro2-bridge-network-example-nginx

docker network disconnect devopspro2-bridge-network-example devopspro2-bridge-network-example-ubuntu
```

Remove the created bridge network

```sh
docker network rm devopspro2-bridge-network-example
```

## DNS

Create a nginx container attached to the host network
```sh
docker container run --rm --network host --name devopspro2-network-dns-example-nginx -d nginx
```

Get the local IP address
```sh
ifconfig
```

Create a ubuntu container with a host (rafaelpapastamatiou.com) mapped to the local ip
```sh
docker container run \
  -it --rm \
  --add-host rafaelpapastamatiou.com:{LOCAL_IP_HERE} \
  --name devopspro2-network-dns-example-nginx \
  ubuntu /bin/bash
```

Make a GET request to the mapped host
```sh
curl http://rafaelpapastamatiou.com
```