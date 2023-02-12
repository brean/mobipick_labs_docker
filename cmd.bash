#!/bin/bash
# run single command
xhost +local:root
# run the robotics parts of the framework
docker-compose run mobipick_cmd $@
xhost -local:root