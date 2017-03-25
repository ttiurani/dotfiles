#! /bin/bash

# Stop previous
docker stop traefik && docker rm traefik

# Run Traefik with this command
docker run -p 80:80 -p 9002:9002 -p 443:443 --name traefik -v /var/run/docker.sock:/var/run/docker.sock -v /home/ttiurani/dotfiles/analysis/docker/traefik.toml:/etc/traefik/traefik.toml:ro -v /etc/traefik/acme.json:/etc/traefik/acme.json -d quay.io/extendedmind/traefik:traefik-1.1.2-1
