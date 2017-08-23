FROM node:6

RUN npm install -g ember-cli@2.3.0 bower phantomjs-prebuilt@2.1.15

EXPOSE 4200 35729
WORKDIR /usr/src/app
