#!/bin/bash
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock -w /opt/kafka_2.12-2.1.0 -e HOST_IP=$1 -e ZK=$2 -i -t wurstmeister/kafka:2.12_2.1.0 /bin/bash 
