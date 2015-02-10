FROM andrioni/java

# Many thanks to Mike Babineau <mike@thefactory.com>
MAINTAINER Alessandro Andrioni <alessandro.andrioni@dafiti.com.br>

# Install Mesos
RUN apt-get update && apt-get -y install libsvn1
ADD http://downloads.mesosphere.io/master/debian/7/mesos_0.21.0-1.0.debian75_amd64.deb /tmp/mesos.deb
RUN dpkg -i /tmp/mesos.deb && rm /tmp/mesos.deb
