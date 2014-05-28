FROM ubuntu
MAINTAINER Christian Lück <christian@lueck.tv>

RUN DEBIAN_FRONTEND=noninteractive apt-get update && apt-get install -y \
	quassel-core \
	libqca2-plugin-ossl libicu52

USER quasselcore
# use ENTRYPOINT instead of CMD so that we can easily pass additional arguments to the run command
ENTRYPOINT ["quasselcore", "--configdir=/var/lib/quassel/"]

VOLUME ["/var/lib/quassel"]
EXPOSE 4242
