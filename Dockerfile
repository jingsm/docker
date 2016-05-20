FROM ubuntu:14.04
MAINTAINER Jingu Sim <jingsm@gmail.com>

# Install basic packages
RUN \
  apt-get update &&\
  apt-get install software-properties-common &&\
  apt-get install python-software-properties

# Install Oracle JDK 8
RUN \
  add-apt-repository ppa:webupd8team/java &&\
  apt-get update &&\
  apt-get install oracle-java8-installer

# Install Elasticsearch
WORKDIR /tmp
RUN \
  wget -qO - https://packages.elastic.co/GPG-KEY-elasticsearch | apt-key add - &&\
  echo "deb http://packages.elastic.co/elasticsearch/2.x/debian stable main" | tee -a /etc/apt/sources.list.d/elasticsearch-2.x.list &&\
  apt-get update &&\
  apt-get -y install elasticsearch

# Install Kibana
WORKDIR /tmp
RUN \
  echo "deb http://packages.elastic.co/kibana/4.4/debian stable main" | tee -a /etc/apt/sources.list.d/kibana-4.4.x.lis &&\
  apt-get update &&\
  apt-get -y install kibana

# Install Logstash
WORKDIR /tmp
RUN \
  echo 'deb http://packages.elastic.co/logstash/2.2/debian stable main' | tee /etc/apt/sources.list.d/logstash-2.2.x.list &&\
  apt-get update &&\
  apt-get install logstash

# Set Public Ports
EXPOSE 80
EXPOSE 5601
EXPOSE 9200
EXPOSE 9300
