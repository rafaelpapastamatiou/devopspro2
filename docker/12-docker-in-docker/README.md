# Docker in Docker

### Using host's docker.sock
```sh
docker run -it --name devopspro2-docker-12-dind-docker-sock -v /var/run/docker.sock:/var/run/docker.sock ubuntu /bin/bash
``` 

### Using DinD
```sh
docker container run -d --name devopspro2-docker-12-dind-dind --privileged docker:dind
```

### Using the db creation tool inside a container
Building the image
```sh
docker build -t devopspro2-12-dind-db-creation-tool .
```

Create database
```sh
docker container run --rm -v /var/run/docker.sock:/var/run/docker.sock devopspro2-12-dind-db-creation-tool criar
```

List databases
```sh
docker container run --rm -v /var/run/docker.sock:/var/run/docker.sock devopspro2-12-dind-db-creation-tool listar
```
