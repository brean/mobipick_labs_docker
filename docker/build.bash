#!/bin/bash
cd mir_robot
time docker build --build-arg ROS_DISTRO=noetic -t brean/mir_robot:noetic . && \
time docker push brean/mir_robot:noetic
cd ..

cd mobipick
time docker build --build-arg ROS_DISTRO=noetic -t brean/mobipick:noetic .
time docker push brean/mobipick:noetic
cd ..

cd mobipick_labs
time docker build --build-arg ROS_DISTRO=noetic -t brean/mobipick_labs:noetic .
time docker push brean/mobipick_labs:noetic
cd ..

# building takes around 30 minutes on an i7-8550U with fast internet