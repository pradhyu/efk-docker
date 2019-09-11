#!/usr/bin/env bash
cd fluentd
./build.sh
cd ..
docker-compose -f docker-compose.yml up -d
docker-compose -f docker-compose.yml logs -f
