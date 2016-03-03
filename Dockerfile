FROM node:5.7

RUN npm install -g ember-cli@2.3.0 bower phantomjs@2.1.3

EXPOSE 4200 35729
WORKDIR /usr/src/app
