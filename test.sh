#!/bin/bash
for container in $(docker ps -a -q)
do
    echo "Container: $container"
    docker inspect $container | jq -r '.[0].Mounts'
done

