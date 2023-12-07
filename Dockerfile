ARG NODE_VERSION=hydrogen

FROM node:${NODE_VERSION}

ARG GANACHE_VERSION=7.9.1
RUN npm install -g ganache@$GANACHE_VERSION

USER node
WORKDIR /var/ganache

EXPOSE 8545

ENTRYPOINT ["/bin/bash", "run.sh"]
