FROM ubuntu:24.04

# Install dependencies
RUN apt update && apt install -y curl nginx

# Set working directory (container will start here)
WORKDIR /app
VOLUME /app/data

# Copy files from host to container
COPY file.txt .

# Add local, remote and compressed files to container
ADD file_to_add.txt .
ADD compressed.tar.gz .
ADD https://www.google.com ./google.html

# Labels
LABEL author="Rafael Papastamatiou"
LABEL contact="rafael@papastamatiou.com"
LABEL version="1.0"

# Environment variables (can be overwritten using --env flag of docker container run)
ENV DOCKER_ENV_VALUE="ANYTHING"

#  ARG variables (can be overwritten using --build-arg flag of docker build)
# example: docker build --build-arg DOCKER_USER_NAME="John Doe" .
ARG DOCKER_USER_NAME="Rafael Papastamatiou"
RUN echo "Hello, $DOCKER_USER_NAME" > hello.txt

# Expose port
EXPOSE 80

# Create User and copy file giving ownership to user.
# its a good practice to create a user and run the container as that user
# to avoid running the container as root
RUN useradd rafaelpapastamatiou
COPY --chown=rafaelpapastamatiou:rafaelpapastamatiou --chmod=777 owned_file.txt .
USER rafaelpapastamatiou

# Copy entrypoint script
COPY --chown=rafaelpapastamatiou:rafaelpapastamatiou --chmod=777 entrypoint.sh .

# Entry point
# ENTRYPOINT [ "echo", "Hello" ]

# Entrypoint with environment variable
# ENTRYPOINT echo "Hello ${DOCKER_ENV_VALUE}"

# Entrypoint with script file
ENTRYPOINT [ "./entrypoint.sh" ]

# CMD
# Combine with ENTRYPOINT to create a default command that can be overwritten
CMD [ "World!" ]
