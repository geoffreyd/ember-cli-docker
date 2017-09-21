FROM geekykaran/headless-chrome-node-docker:latest

RUN npm install -g ember-cli@2.15.1 bower

EXPOSE 4200 35729
WORKDIR /usr/src/app
