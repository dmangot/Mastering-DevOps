# what operating system
FROM ubuntu
# some metadata
LABEL Description="Mastering DevOps" Version="1.0"
# install the packages
RUN apt-get update && apt-get install -y \
    graphite-carbon
# which TCP port for carbon
EXPOSE 2003
# where to write the data
VOLUME /var/lib/graphite/whisper
# --nodaemon because we'll detach in 'docker run'
ENTRYPOINT /usr/bin/carbon-cache --config /etc/carbon/carbon.conf --nodaemon start
