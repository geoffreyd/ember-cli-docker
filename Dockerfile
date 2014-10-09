FROM node

RUN npm install -g ember-cli@0.1.0 bower

RUN apt-get update --quiet && apt-get install --quiet --yes sudo
RUN groupadd --force user && \
    useradd --gid user user && \
    mkdir --parent /home/user && \
    chown -R user:user /home/user

ADD as_user /usr/local/bin/as_user

EXPOSE 4200 35729
WORKDIR /usr/src/app
ENTRYPOINT ["/usr/local/bin/as_user", "/usr/local/bin/ember"]
CMD ["help"]
