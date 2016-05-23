#
# Elasticsearch Dockerfile
#
# https://github.com/jingsm/docker/edit/master/Dockerfile
#

# Pull base image
FROM ubuntu:14.04
# FROM dockerfile/java:oracle-java8
MAINTAINER Jingu Sim <jingsm@gmail.com>

# Install basic packages
RUN \
  apt-get update && \
  apt-get -qq -y install software-properties-common && \
  apt-get -qq -y install python-software-properties

# Install Oracle JDK 8
RUN \
  echo oracle-java8-installer shared/accepted-oracle-license-v1-1 select true | debconf-set-selections && \
  add-apt-repository ppa:webupd8team/java && \
  apt-get update && \
  apt-get -y install oracle-java8-installer && \
  rm -rf /var/lib/apt/lists/* && \
  rm -rf /var/cache/oracle-jdk8-installer

# Register repository
RUN \
  cd /tmp && \
  wget -qO - https://packages.elastic.co/GPG-KEY-elasticsearch | apt-key add - && \
  echo "deb http://packages.elastic.co/elasticsearch/2.x/debian stable main" | tee -a /etc/apt/sources.list.d/elasticsearch-2.x.list && \
  echo "deb http://packages.elastic.co/kibana/4.5/debian stable main" | tee -a /etc/apt/sources.list.d/kibana-4.5.x.list && \
  echo 'deb http://packages.elastic.co/logstash/2.3/debian stable main' | tee /etc/apt/sources.list.d/logstash-2.3.x.list

# Install Elasticsearch / Kibana / Logstach
# WORKDIR /tmp
  apt-get update && \
  apt-get -qq -y install elasticsearch && \
  apt-get -qq -y install kibana && \
  apt-get -qq -y install logstash

# Expose ports
#   - 5601: Kibana
#   - 9200: HTTP
#   - 9300: transport
# EXPOSE 80
EXPOSE 5601
EXPOSE 9200
EXPOSE 9300

# Define commonly used JAVA_HOME variable
ENV JAVA_HOME /usr/lib/jvm/java-8-oracle

# Define default command
# CMD ["bash"]
