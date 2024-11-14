## Build the app image and push it to Docker Hub

```sh
docker build -t rafaelpapastamatiou/devopspro2-docker-06-fullstack-app-example-node:v1 .

docker login

docker push rafaelpapastamatiou/devopspro2-docker-06-fullstack-app-example-node:v1

docker tag rafaelpapastamatiou/devopspro2-docker-06-fullstack-app-example-node:v1 rafaelpapastamatiou/devopspro2-docker-06-fullstack-app-example-node:latest

docker push rafaelpapastamatiou/devopspro2-docker-06-fullstack-app-example-node:latest
```

## Create the network of type bridge

```sh
docker network create devopspro2-docker-06-fullstack-app-example

docker network inspect devopspro2-docker-06-fullstack-app-example
```

## Create the PostgreSQL container

```sh
docker volume create devopspro2-docker-06-fullstack-app-example-postgresql-vol

docker container run \
  -d \
  -p 5432:5432 \
  --rm \
  --name devopspro2-docker-06-fullstack-app-example-postgresql \
  -e POSTGRES_PASSWORD=Pg#123 \
  -e POSTGRES_USER=kubedevnews \
  -e POSTGRES_DB=kubedevnews \
  --network devopspro2-docker-06-fullstack-app-example \
  --mount type=volume,source=devopspro2-docker-06-fullstack-app-example-postgresql-vol,target=/var/lib/postgresql/data \
  postgres:12-alpine
```

## Run the web app container

```sh
docker container run -p 8080:8080 \
  --rm \
  -e DB_DATABASE=kubedevnews \
  -e DB_USERNAME=kubedevnews \
  -e DB_PASSWORD=Pg#123 \
  -e DB_HOST=devopspro2-docker-06-fullstack-app-example-postgresql \
  --network devopspro2-docker-06-fullstack-app-example \
  rafaelpapastamatiou/devopspro2-docker-06-fullstack-app-example-node
```