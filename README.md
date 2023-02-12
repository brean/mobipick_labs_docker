# mobipick_labs_docker
Docker (compose) environment for the DFKI MobiPick lab (https://github.com/DFKI-NI/mobipick_labs)

# Usage
Just run `mobipick.bash` it will download all required container and start the mobipick-gazebo environment for the tables demo (see `command:` in `docker-compose.yml`).

To run custom ROS commands just prefix them with `./run.bash`. This starts a new docker container with your command connected to the ROScore of the mobipick-container instance.

to stop everything call `docker-compose down`