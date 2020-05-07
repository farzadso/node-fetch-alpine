FROM node:alpine
WORKDIR /usr/src

RUN set -x \
    && apk add --no-cache bash git openssh \
    && git --version && bash --version
RUN npm init -y
RUN npm install node-fetch
RUN npm install config

CMD ["/bin/sh"]