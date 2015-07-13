FROM ubuntu:trusty


#RUN  apt-get update -y 

#RUN apt-get install -y curl libc6 libcurl3 zlib1g

RUN apt-get -y install wget

RUN mkdir /opt/vexiere 

RUN chmod +777 /opt/vexiere

ADD ./start.sh /opt/vexiere/start.sh

RUN chmod +x /opt/vexiere/start.sh


# Install Kibana
RUN cd /tmp \
    && wget https://download.elastic.co/kibana/kibana/kibana-4.1.1-linux-x64.tar.gz \
    && tar xzf kibana-*.tar.gz \
    && rm kibana-*.tar.gz \
    && mv kibana-* /opt/kibana


EXPOSE 5601

CMD "/opt/vexiere/start.sh"
