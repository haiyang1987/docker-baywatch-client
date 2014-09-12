#!/bin/bash

cp /etc/logstash-forwarder.template /etc/logstash-forwarder

service logstash-forwarder start


if [[ $1 == "-d" ]]; then
  while true; do sleep 1000; done
fi

if [[ $1 == "-bash" ]]; then
  /bin/bash
fi


CMD ["/etc/bootstrap.sh", "-d"]
