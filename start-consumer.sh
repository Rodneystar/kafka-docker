if [ $# -lt 2 ]; then
    echo "usage: start-consumer.sh <bootstrap-server-ip:broker-port> <topic-name> [...producer-args]"
    exit
fi
bootstrapServer=$1
topic=$2
command="/opt/kafka_2.12-2.1.0/bin/kafka-console-consumer.sh --topic ${topic} --bootstrap-server ${bootstrapServer} "${@: 3}""


docker run -it --rm --name consumer  \
--net kafkadocker_default wurstmeister/kafka:2.12_2.1.0 bash -c "$command"
