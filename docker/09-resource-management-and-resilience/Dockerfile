FROM node:20.9.0
WORKDIR /app
COPY package.json yarn.lock tsconfig.json ./
RUN corepack enable && yarn install
RUN apt update && apt install stress --yes
COPY ./src .
RUN yarn compile
EXPOSE 3000

# Add a healthcheck to the container
# HEALTHCHECK --interval=30s --timeout=5s --start-period=30s --retries=5 CMD [ "curl", "-f", "http://localhost:3000/health" ]

# Disable healthcheck, if exists in the base image
# HEALTHCHECK NONE

CMD ["yarn", "start"]
