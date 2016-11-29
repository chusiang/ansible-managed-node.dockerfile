#!/bin/bash

echo 'Pull alpine image.'
docker pull chusiang/ansible-managed-node:alpine-3.4
echo

echo 'Tag alpine image to latest.'
docker tag  chusiang/ansible-managed-node:alpine-3.4 chusiang/ansible-managed-node:latest
echo

echo 'Push the latest tag.'
docker push chusiang/ansible-managed-node:latest
echo

echo 'Remove old image.'
docker rmi $(docker images | grep 'chusiang/ansible-managed-node' | grep '<none>' | awk '{ print $3 }')
