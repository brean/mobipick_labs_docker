FROM brean/mobipick:noetic

ENV CATKIN_WS=/root/catkin_ws
ENV CATKIN_WS_SRC=${CATKIN_WS}/src

RUN apt-get update -qq \
    && apt-get install -y --no-install-recommends \
        python3-pip python3-pyassimp libespeak-dev \
        espeak-data libespeak1 libportaudio2 libsonic0 \
        python3-pydot ros-noetic-qt-dotgraph \
        ros-noetic-rqt-graph \
    && rm -rf /var/lib/apt/lists/*

# TODO: maybe not the best idea to run the default install-deps scripts,
# it might already include some stuff already installed in the mobipick-image?!
RUN cd ${CATKIN_WS_SRC} \
  && git clone https://github.com/brean/mobipick_labs.git \
  && . ${CATKIN_WS}/devel/setup.sh \
  && cd mobipick_labs \
  && ./install-deps.sh \
  && ./build.sh \
  && rm -rf /var/lib/apt/lists/*