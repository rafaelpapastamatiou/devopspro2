# Creates a postgres container using bind mount
# docker container run \
#   -d \
#   -e POSTGRES_PASSWORD=123 \
#   -p 5432:5432 \
#   --rm \
#   --name devopspro2_postgres_bind_example \
#   --mount type=bind,source="$(pwd)/bind_data",target=/var/lib/postgresql/data \
#   postgres

# Creates a postgres container using volume
docker container run \
  -d \
  -e POSTGRES_PASSWORD=123 \
  -p 5432:5432 \
  --rm \
  --name devopspro2_postgres_vol_example \
  --mount type=volume,source=devopspro2_postgres_vol_example_vol,target=/var/lib/postgresql/data \
  postgres