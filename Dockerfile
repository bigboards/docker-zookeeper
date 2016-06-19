FROM bigboards/java-7-__arch__

MAINTAINER bigboards (hello@bigboards.io)

# Install Zookeeper.
RUN \
  apt-get update && \
  apt-get install -y zookeeper=3.4.5+dfsg-1 && \
  apt-get clean && \
  apt-get autoclean && \
  rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* /var/cache/*

# Define default command.
CMD ["/bin/bash"]

#  - 2181: Port used by localhost to talk to ZooKeeper.
#  - 2888: Port used for inter-zookeeper communication.
#  - 3888: Port used for inter-zookeeper communication.
EXPOSE 2181 2888 3888