FROM geekykaran/headless-chrome-node-docker:latest

RUN apt-get update && \
    apt-get install procps git -y && \
    apt-get clean autoclean

RUN yarn global add ember-cli@3.2.0

EXPOSE 4200 35729
WORKDIR /usr/src/app
