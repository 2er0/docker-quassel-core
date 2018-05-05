FROM ubuntu
MAINTAINER David Baumgartner <2er0@dbaumi.at>

RUN  UBUNTU_INSTALL=noninteractive apt-get update && apt-get install -y git curl bash gnupg2 build-essential \
	&& curl -sL https://deb.nodesource.com/setup_8.x | bash - \
	&& apt-get update \
	&& apt-get install -y nodejs \
#	&& useradd -d /opt/quassel-webserver -M -r quassel-webserver \
	&& git clone https://github.com/magne4000/quassel-webserver.git /opt/quassel-webserver 
#	&& chown -R quassel-webserver:quasselweb-server /opt/quassel-webserver

#USER quassel-webserver

WORKDIR /opt/quassel-webserver
RUN npm install --production

COPY settings-user.js .

ENTRYPOINT ["/usr/bin/node", "/opt/quassel-webserver/app.js -l 0.0.0.0 -m http"]
EXPOSE 64080
