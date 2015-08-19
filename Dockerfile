FROM ubuntu:latest

MAINTAINER Dave <git@davidesaias.com>

# make sure apt is up to date along with installing packages
RUN	apt-get update && apt-get install -y \
	curl \
	git

# get node.js
RUN  curl -sL https://deb.nodesource.com/setup_0.12 | sudo bash - && \

# install node.js
RUN apt-get install -y nodejs


# Install app dependencies
RUN \
	cd /opt && \
	git clone https://github.com/yinzer/node-app.git && \
	cd node-app && \
	npm install

EXPOSE 8080

CMD ["node", "/opt/node-app/server.js"]