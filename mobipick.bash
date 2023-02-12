#!/bin/bash
docker network create mobipick
# copied from marlin
xhost +local:root
# run the robotics parts of the framework
docker-compose run mobipick
xhost -local:root