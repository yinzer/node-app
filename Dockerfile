FROM yinzer/node

MAINTAINER Yinzer

ADD package.json /tmp/package.json
RUN cd /tmp && npm install
RUN mkdir -p /opt/app && cp -a /tmp/node_modules /opt/app/

ADD . /opt/app

WORKDIR /opt/app

EXPOSE 80

CMD ["node", "server.js"]