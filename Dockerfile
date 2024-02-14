FROM node:18-alpine

WORKDIR /app

RUN apk --update --no-cache add \
    alpine-conf \
    python3 \
    make \
    g++ \
    linux-headers \
    eudev \
    udev-init-scripts \
    && rm -rf /var/cache/apk/* /root/.cache/pip/*

RUN npm install balena-cli --global --production --unsafe-perm
