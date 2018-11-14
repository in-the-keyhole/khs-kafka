#!/bin/sh
echo Starting Kafka
 
#chmod a+x kafka_2.10-0.8.2.0/bin/kafka-server-start.sh
#sh kafka_2.10-0.8.2.0/bin/kafka-server-start.sh ./kafka_2.10-0.8.2.0/config/server.properties
sh  kafka_2.12-2.0.1/bin/kafka-server-start.sh   ./kafka_2.12-2.0.1/config/server.properties
