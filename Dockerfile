FROM ubuntu:latest

MAINTAINER Dave <git@davidesaias.com>

# Install Node.js and git
RUN	\
	apt-get update && \
	apt-get install -y curl && \
	curl -sL https://deb.nodesource.com/setup_0.12 | sudo bash - && \
	apt-get install -y nodejs git


# Install app dependencies
RUN \
	cd /opt && \
	git clone https://github.com/yinzer/node-app.git && \
	cd /node-app && \
	npm install

EXPOSE 8080

CMD ["node", "/opt/node-app/server.js"]