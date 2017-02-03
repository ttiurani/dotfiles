#! /bin/bash

# Run Nexus with this command
docker run -d -p 9000:8081 --name nexus -v /var/nexus:/nexus-data sonatype/nexus3
