FROM node:slim

# install curl so we can install docker
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update && apt-get install -y curl apt-utils && rm -rf /var/lib/apt/lists/*

# install docker
RUN curl -sSL https://get.docker.com/ | sh

WORKDIR /usr/src/app

# copy server app/source files
COPY ./app/. .

# install node dependencies
RUN npm install

# copy entrypoint script
COPY docker-entrypoint.sh /usr/local/bin/
