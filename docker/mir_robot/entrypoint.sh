#!/bin/bash
set -e

# setup gazebo and ros environment
source "/usr/share/gazebo/setup.sh" --
source "/root/catkin_ws/devel/setup.bash" --
exec "$@"