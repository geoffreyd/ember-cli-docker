FROM node

RUN npm install -g ember-cli@0.1.0 bower

RUN groupadd -f -g 1000 dummy && \
    useradd -u 1000 -g dummy dummy && \
    mkdir --parent /home/dummy && \
    chown -R dummy:dummy /home/dummy

EXPOSE 4200 35729
WORKDIR /usr/src/app
ENTRYPOINT ["/usr/local/bin/ember"]
CMD ["help"]
