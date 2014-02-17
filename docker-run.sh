#!/usr/bin/env bash

docker run -d \
  -v /var/www:/var/www \
  -v /var/docker/nginx:/etc/nginx \
  -v /var/docker/nginx-logs:/var/log/nginx \
  -p 80:80 \
  -name="nginx" \
  jbangel/nginx
