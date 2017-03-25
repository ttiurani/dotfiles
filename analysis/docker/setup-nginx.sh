#! /bin/bash

# Stop previous
docker stop nginx && docker rm nginx

# Run Nginx with this command
docker run -p 9001:9001 --name nginx -v /home/ttiurani/dotfiles/analysis/docker/nginx.conf:/etc/nginx/nginx.conf:ro -v /home/ttiurani/devel/em/extendedmind:/extendedmind:ro -d nginx:alpine

