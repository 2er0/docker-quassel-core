FROM ubuntu
MAINTAINER David Baumgartner <2er0@dbaumi.at>

RUN DEBIAN_FRONTEND=noninteractive apt-get update && apt-get install -y \
	quassel-core \
	libqt4-sql-psql \
	libqca2-plugin-ossl libicu55 \
	sqlite3

USER quasselcore
# use ENTRYPOINT instead of CMD so that we can easily pass additional arguments to the run command
ENTRYPOINT ["quasselcore", "--configdir=/var/lib/quassel/"]

VOLUME ["/var/lib/quassel"]
EXPOSE 4242
