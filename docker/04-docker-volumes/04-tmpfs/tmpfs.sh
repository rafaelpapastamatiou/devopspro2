# Creates a container using tmpfs (storing the container's data in RAM))
docker container run \
  --rm \
  -it \
  --mount type=tmpfs,target=/app \
  ubuntu \
  bin/bash