# khs-kafka

Kafka ZooKeeper broker servers… 

Environment
===========

This KHS project smoke-tesgted using Java 1.8 on each the following OS's:
    
- macOS Mojave - (10.15.1)
- Ubuntu Linux 18.04
- Windows 10 Home


Starting
========

Kafka requires Zookeeper to maintian configuration and state. Sttart ZooKeeper first. Afterward,
start Kafka.

**First, ZooKeeper**

From terminal, execute ... 
    
    > ./zookeeper.sh	 

**Then, Kafka**

From terminal, execute ... 

    > ./kafka.sh
    
Stopping
========

Control + c in each server terminal or invoke standard scripts:

bash on Windows, macOS, or Linux:

    > ./kafka_2.12-2.0.1/bin/kafka-server-stop.sh
    > ./kafka_2.12-2.0.1/bin/zookeeper-server-stop.sh

Windows:
    
    > kafka_2.12-2.0.1/bin/windows/kafka-server-stop.bat
    > kafka_2.12-2.0.1/bin/windows/zookeeper-server-stop.bat
    

Build Docker Files (bash script)
================================

    > ./build.sh
