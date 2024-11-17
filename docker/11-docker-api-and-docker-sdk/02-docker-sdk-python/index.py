import docker

# Create a local client (docker.sock)
client = docker.from_env()

# Create a remote client
# client = docker.DockerClient(base_url="URL")

# Run a hello world container
# client.containers.run("hello-world", remove=True)

# Run nginx container
# client.containers.run(
#   "nginx",
#   detach=True,
#   ports={'80/tcp': ('0.0.0.0', 8080)}
# )

# List all containers
# containers = client.containers.list(all=True)

# for container in containers:
#   print(container.id, container.image.tags ,container.name)

# Get a container by id
# container = client.containers.get('container_id')

# Stop a container
# container.stop()

# Remove a container
# container.remove()

# See logs of a container
# print(container.logs())