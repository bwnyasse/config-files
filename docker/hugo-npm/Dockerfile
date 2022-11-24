FROM registry.gitlab.com/pages/hugo/hugo_extended:latest

RUN apk update
RUN apk update && \
    apk add --update git g++ nodejs npm go && \
    npm install newman --global
RUN hugo version
RUN npm install -g postcss-cli
RUN npm install -g autoprefixer