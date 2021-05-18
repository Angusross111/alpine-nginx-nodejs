FROM nginx:1.19.6-alpine
LABEL maintainer="Angus Ross <angus.ross@swarmfarm.com>"

# Install nvm with node and npm
RUN  apk add --no-cache --repository https://dl-cdn.alpinelinux.org/alpine/v3.13/main libuv \
    && apk add --no-cache --repository https://dl-cdn.alpinelinux.org/alpine/v3.13/main nodejs=14.15.4-r0 npm=14.15.4-r0 \
    && echo "NodeJS Version:" "$(node -v)" \
    && echo "NPM Version:" "$(npm -v)" \
    && echo "$(nginx -v)" \