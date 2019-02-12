if [ $# -lt 2 ]; then
    echo "usage: start-producer.sh <broker-ip:broker-port> <topic-name> [...producer-args]"
    exit
fi

broker=$1
topic=$2
command="opt/kafka/bin/kafka-console-producer.sh --topic ${topic} --broker-list ${broker} "${@: 3}""


docker run -it --rm --name producer \
--net kafkadocker_default wurstmeister/kafka:2.12_2.1.0 bash -c "$command"