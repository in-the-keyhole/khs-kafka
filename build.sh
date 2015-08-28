#!/bin/bash

set -x

DIR=$(cd "$(dirname "$0")" && pwd)

CONTAINERS=(
    khs-java-minimal \
    khs-zookeeper \
    khs-kafka \
)

# build docker images
for container in "${CONTAINERS[@]}"; do
    docker build --tag="$container" --file="${container}-dockerfile" .
done

cd "${DIR}"

# run docker images
docker run -d -p 2181:2181 -p 2888:2888 -p 3888:3888 --name='khs-zookeeper' khs-zookeeper
docker run -d -p 9092:9092 --name='khs-kafka' --link khs-zookeeper:zk -e ZOOKEEPER=zk:2181 khs-kafka

