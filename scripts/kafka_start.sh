!#/bin/bash

nohup bin/zookeeper-server-start.sh config/zookeeper.properties &
nohup /opt/kafka/bin/kafka-server-start.sh config/server.properties &
