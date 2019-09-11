#!/usr/bin/env bash
cd fluentd
docker images | grep  fluent/fluentd:latest 
if [ "$?" = "0" ]; then
    echo "do nothing"
else
    ./build.sh
fi



cd ..
docker-compose -f docker-compose.yml up -d
docker-compose -f docker-compose.yml logs -f
