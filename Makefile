# ============================================================
#  Author: Chu-Siang Lai / chusiang (at) drx.tw
#  Blog: http://note.drx.tw
#  Filename: Makefile
#  Modified: 2016-11-30 12:52
#  Description: Do something with make.
# =========================================================== 
#
.PHONY: main pull run start stop clean retag_latest

main: run

# Only download the docker image.
pull:
	docker pull chusiang/ansible-managed-node:alpine-3.4
	docker pull chusiang/ansible-managed-node:centos-7
	docker pull chusiang/ansible-managed-node:debian-8
	docker pull chusiang/ansible-managed-node:ubuntu-14.04

# Run containers.
run:
	docker run --name managed-node-alpine-3.4   -d -P chusiang/ansible-managed-node:alpine-3.4
	docker run --name managed-node-ubuntu-14.04 -d -P chusiang/ansible-managed-node:ubuntu-14.04

# Start containers.
start:
	docker start managed-node-alpine-3.4
	docker start managed-node-ubuntu-14.04

# Stop containers.
stop:
	docker stop managed-node-alpine-3.4
	docker stop managed-node-ubuntu-14.04

# Remove containers.
clean:
	docker rm -f managed-node-alpine-3.4 managed-node-ubuntu-14.04

# Retag and push the latest tag.
retag_latest:
	-sh bin/retag_latest.sh

