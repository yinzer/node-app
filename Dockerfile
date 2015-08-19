FROM ubuntu:latest

MAINTAINER Dave <git@davidesaias.com>

# Install Node.js and npm
RUN	\
	apt-get update && \
	apt-get install -y curl && \
	curl -sL https://deb.nodesource.com/setup_0.12 | sudo bash - && \
	apt-get install -y nodejs

# Bundle app source
COPY . /src

# Install app dependencies
RUN cd /src; npm install

EXPOSE 8080

CMD ["node", "/src/server.js"]