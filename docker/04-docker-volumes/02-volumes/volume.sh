# Create a new volume
docker volume create devopspro2_volume_example

# List all volumes
# docker volume ls

# Inspect a volume
# docker volume inspect devopspro2_volume_example

# Remove a volume
# docker volume rm devopspro2_volume_example

docker container run \
  -it \
  --mount type=volume,source=devopspro2_volume_example,target=/app \
  --name volume_mount_example_ubuntu \
  ubuntu \
  /bin/bash

# Create a backup of the container's volume
# docker container run \
#   --rm \
#   --volumes-from volume_mount_example_ubuntu \
#   -v $(pwd):/backup \
#   ubuntu \
#   tar cvf /backup/backup.tar /app