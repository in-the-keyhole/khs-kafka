#!/bin/sh
echo Starting ZooKeeper
 
#chmod a+x kafka_2.10-0.8.2.0/bin/zookeeper-server-start.sh
#sh kafka_2.10-0.8.2.0/bin/zookeeper-server-start.sh kafka_2.10-0.8.2.0/config/zookeeper.properties
sh kafka_2.12-2.0.1/bin/zookeeper-server-start.sh kafka_2.12-2.0.1/config/zookeeper.properties
