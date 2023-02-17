#!/bin/bash
terminator -l mobipick_lab -g terminator.conf

# cleanup after the user closes the terminator window
docker-compose down
docker network rm mobipick