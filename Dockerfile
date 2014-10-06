FROM node

RUN npm install -g ember-cli@0.1.0 bower

EXPOSE 4200 35729
WORKDIR /usr/src/app
ENTRYPOINT ["/usr/local/bin/ember"]
CMD ["help"]
