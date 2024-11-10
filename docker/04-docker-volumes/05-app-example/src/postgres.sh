# Creates a postgres container
docker container run \
  --name devopspro2-docker-volumes-app-example \
  --rm \
  -d \
  -p 5432:5432 \
  -e POSTGRES_USER=kubedevnews \
  -e POSTGRES_PASSWORD=Pg#123 \
  -e POSTGRES_DB=kubedevnews \
  -v devopspro2-docker-volumes-app-example_vol:/var/lib/postgresql/data \
  postgres:14.10-alpine