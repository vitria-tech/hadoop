#!/usr/bin/env bash

docker build --ulimit nofile=40820:40820 -t vitriacorp/hadoop:2.7.5 --network host .
docker push vitriacorp/hadoop:2.7.5

