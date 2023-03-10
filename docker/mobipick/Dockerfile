FROM brean/mir_robot:noetic

ENV CATKIN_WS=/root/catkin_ws
ENV CATKIN_WS_SRC=${CATKIN_WS}/src

# install (nearly) all requirements for Mobipick so we can use the docker-cache and re-building does not take forever
RUN apt-get update -qq \
    && apt-get install -y --no-install-recommends \
        python3-pymodbus \
        python3-wstool \
        python3-attr \
        python3-automat \
        python3-click \
        python3-colorama \
        python3-constantly \
        python3-hamcrest \
        python3-hyperlink \
        python3-incremental \
        python3-openssl \
        python3-pyasn1 \
        python3-pyasn1-modules \
        python3-serial \
        python3-serial-asyncio \
        python3-service-identity \
        python3-twisted \
        python3-twisted-bin \
        python3-zope.interface \
        libuvc-dev \
        ros-noetic-kdl-conversions \
        ros-noetic-tf-conversions \
        evemu-tools evtest inputattach joystick libevemu3 \
        libdw-dev \
        accountsservice \
        acl \
        apg \
        apport \
        apport-symptoms \
        aptdaemon \
        aptdaemon-data \
        aspell \
        aspell-en \
        avahi-daemon \
        avahi-utils \
        bind9-host \
        bind9-libs \
        bluez \
        bolt \
        bsdmainutils \
        bubblewrap \
        cheese-common \
        colord \
        colord-data \
        cracklib-runtime \
        crda \
        cups-pk-helper \
        cython3 \
        dbus-x11 \
        dconf-cli \
        desktop-file-utils \
        dictionaries-common \
        dns-root-data \
        dnsmasq-base \
        docbook-xml \
        emacsen-common \
        enchant-2 \
        evolution-data-server \
        evolution-data-server-common \
        fprintd \
        gcr \
        gdm3 \
        geoclue-2.0 \
        gettext-base \
        gir1.2-accountsservice-1.0 \
        gir1.2-atk-1.0 \
        gir1.2-atspi-2.0 \
        gir1.2-freedesktop \
        gir1.2-gck-1 \
        gir1.2-gcr-3 \
        gir1.2-gdesktopenums-3.0 \
        gir1.2-gdkpixbuf-2.0 \
        gir1.2-gdm-1.0 \
        gir1.2-geoclue-2.0 \
        gir1.2-gnomebluetooth-1.0 \
        gir1.2-gnomedesktop-3.0 \
        gir1.2-graphene-1.0 \
        gir1.2-gtk-3.0 \
        gir1.2-gweather-3.0 \
        gir1.2-ibus-1.0 \
        gir1.2-json-1.0 \
        gir1.2-mutter-6 \
        gir1.2-nm-1.0 \
        gir1.2-nma-1.0 \
        gir1.2-notify-0.7 \
        gir1.2-packagekitglib-1.0 \
        gir1.2-pango-1.0 \
        gir1.2-polkit-1.0 \
        gir1.2-rsvg-2.0 \
        gir1.2-secret-1 \
        gir1.2-soup-2.4 \
        gir1.2-upowerglib-1.0 \
        gir1.2-vte-2.91 \
        gjs \
        gkbd-capplet \
        gnome-control-center \
        gnome-control-center-data \
        gnome-control-center-faces \
        gnome-desktop3-data \
        gnome-keyring \
        gnome-keyring-pkcs11 \
        gnome-menus \
        gnome-online-accounts \
        gnome-session-bin \
        gnome-session-common \
        gnome-settings-daemon \
        gnome-settings-daemon-common \
        gnome-shell \
        gnome-shell-common \
        gnome-startup-applications \
        gnome-user-docs \
        groff-base \
        gstreamer1.0-clutter-3.0 \
        gstreamer1.0-gl \
        gstreamer1.0-plugins-base \
        gstreamer1.0-plugins-good \
        gstreamer1.0-pulseaudio \
        gstreamer1.0-x \
        hunspell-en-us \
        ibus \
        ibus-data \
        ibus-gtk \
        ibus-gtk3 \
        iio-sensor-proxy \
        im-config \
        ippusbxd \
        iptables \
        iw \
        keyboard-configuration \
        kmod \
        language-selector-common \
        language-selector-gnome \
        libaa1 \
        libaccountsservice0 \
        libappindicator3-1 \
        libappstream4 \
        libasound2-plugins \
        libaspell15 \
        libavahi-core7 \
        libavahi-glib1 \
        libbluetooth3 \
        libcamel-1.2-62 \
        libcanberra-gtk3-0 \
        libcanberra-gtk3-module \
        libcanberra-pulse \
        libcanberra0 \
        libcdparanoia0 \
        libcheese-gtk25 \
        libcheese8 \
        libclutter-1.0-0 \
        libclutter-1.0-common \
        libclutter-gst-3.0-0 \
        libclutter-gtk-1.0-0 \
        libcogl-common \
        libcogl-pango20 \
        libcogl-path20 \
        libcogl20 \
        libcolord-gtk1 \
        libcolorhug2 \
        libcrack2 \
        libdaemon0 \
        libdbusmenu-glib4 \
        libdbusmenu-gtk3-4 \
        libdv4 \
        libebackend-1.2-10 \
        libebook-1.2-20 \
        libebook-contacts-1.2-3 \
        libecal-2.0-1 \
        libedata-book-1.2-26 \
        libedata-cal-2.0-1 \
        libedataserver-1.2-24 \
        libedataserverui-1.2-2 \
        libenchant-2-2 \
        libfontconfig1-dev \
        libfontenc1 \
        libfprint-2-2 \
        libfreetype-dev \
        libfreetype6-dev \
        libgail-common \
        libgail18 \
        libgck-1-0 \
        libgcr-base-3-1 \
        libgcr-ui-3-1 \
        libgdata-common \
        libgdata22 \
        libgdm1 \
        libgee-0.8-2 \
        libgeoclue-2-0 \
        libgeocode-glib0 \
        libgjs0g \
        libgl2ps-dev \
        libgnome-autoar-0-0 \
        libgnome-bluetooth13 \
        libgnome-desktop-3-19 \
        libgnomekbd-common \
        libgnomekbd8 \
        libgoa-1.0-0b \
        libgoa-1.0-common \
        libgoa-backend-1.0-1 \
        libgpm2 \
        libgraphene-1.0-0 \
        libgsound0 \
        libgssdp-1.2-0 \
        libgstreamer-gl1.0-0 \
        libgstreamer-plugins-good1.0-0 \
        libgtk2.0-0 \
        libgtk2.0-bin \
        libgtk2.0-common \
        libgtop-2.0-11 \
        libgtop2-common \
        libgupnp-1.2-0 \
        libgupnp-av-1.0-2 \
        libgupnp-dlna-2.0-3 \
        libgusb2 \
        libgweather-3-16 \
        libgweather-common \
        libharfbuzz-icu0 \
        libhunspell-1.7-0 \
        libhyphen0 \
        libibus-1.0-5 \
        libical3 \
        libidn11 \
        libieee1284-3 \
        libimobiledevice6 \
        libip6tc2 \
        libjansson4 \
        libjavascriptcoregtk-4.0-18 \
        libldb2 \
        liblmdb0 \
        liblocale-gettext-perl \
        libmaxminddb0 \
        libmbim-glib4 \
        libmbim-proxy \
        libmediaart-2.0-0 \
        libmm-glib0 \
        libmnl0 \
        libmozjs-68-0 \
        libmutter-6-0 \
        libndp0 \
        libnetcdf-cxx-legacy-dev \
        libnetfilter-conntrack3 \
        libnewt0.52 \
        libnfnetlink0 \
        libnftnl11 \
        libnl-genl-3-200 \
        libnm0 \
        libnma0 \
        libnotify4 \
        libnss-mdns \
        libogg-dev \
        libopenni-dev \
        libopenni-sensor-pointclouds0 \
        libopenni0 \
        libopenni2-0 \
        libopenni2-dev \
        libpackagekit-glib2-18 \
        libpam-fprintd \
        libpam-gnome-keyring \
        libpangoxft-1.0-0 \
        libpcap0.8 \
        libpci3 \
        libpcl-apps1.10 \
        libpcl-common1.10 \
        libpcl-dev \
        libpcl-features1.10 \
        libpcl-filters1.10 \
        libpcl-io1.10 \
        libpcl-kdtree1.10 \
        libpcl-keypoints1.10 \
        libpcl-ml1.10 \
        libpcl-octree1.10 \
        libpcl-outofcore1.10 \
        libpcl-people1.10 \
        libpcl-recognition1.10 \
        libpcl-registration1.10 \
        libpcl-sample-consensus1.10 \
        libpcl-search1.10 \
        libpcl-segmentation1.10 \
        libpcl-stereo1.10 \
        libpcl-surface1.10 \
        libpcl-tracking1.10 \
        libpcl-visualization1.10 \
        libpcsclite1 \
        libphonenumber7 \
        libpipeline1 \
        libplist3 \
        libpolkit-agent-1-0 \
        libpolkit-gobject-1-0 \
        libpopt0 \
        libpulsedsp \
        libpwquality-common \
        libpwquality1 \
        libqmi-glib5 \
        libqmi-proxy \
        libqt5designercomponents5 \
        libqt5positioning5 \
        libqt5quick5 \
        libqt5quickparticles5 \
        libqt5quickshapes5 \
        libqt5quicktest5 \
        libqt5quickwidgets5 \
        libqt5sensors5 \
        libqt5webchannel5 \
        libqt5webkit5 \
        libqt5webkit5-dev \
        libqt5x11extras5 \
        librygel-core-2.6-2 \
        librygel-db-2.6-2 \
        librygel-renderer-2.6-2 \
        librygel-server-2.6-2 \
        libsane \
        libsane-common \
        libsbc1 \
        libsecret-1-0 \
        libsecret-common \
        libshout3 \
        libsmbclient \
        libsnapd-glib1 \
        libsnmp-base \
        libsnmp35 \
        libspeexdsp1 \
        libstartup-notification0 \
        libstemmer0d \
        libtag1v5 \
        libtag1v5-vanilla \
        libtalloc2 \
        libtcl8.6 \
        libtdb1 \
        libteamdctl0 \
        libtevent0 \
        libtext-iconv-perl \
        libtheora-dev \
        libtk8.6 \
        libuchardet0 \
        libudisks2-0 \
        libunwind8 \
        libupower-glib3 \
        libusbmuxd6 \
        libutempter0 \
        libv4l-0 \
        libv4lconvert0 \
        libvisual-0.4-0 \
        libvte-2.91-0 \
        libvte-2.91-common \
        libvtk7-dev \
        libvtk7-java \
        libvtk7-jni \
        libvtk7-qt-dev \
        libvtk7.1p \
        libvtk7.1p-qt \
        libwbclient0 \
        libwebkit2gtk-4.0-37 \
        libwebrtc-audio-processing1 \
        libwhoopsie-preferences0 \
        libwhoopsie0 \
        libwoff1 \
        libxatracker2 \
        libxcb-res0 \
        libxcb-xv0 \
        libxfont2 \
        libxft-dev \
        libxft2 \
        libxkbfile1 \
        libxklavier16 \
        libxrender-dev \
        libxss-dev \
        libxtables12 \
        libxvmc1 \
        libxxf86dga1 \
        libyelp0 \
        man-db \
        mobile-broadband-provider-info \
        modemmanager \
        mousetweaks \
        mutter \
        mutter-common \
        netbase \
        network-manager \
        network-manager-gnome \
        network-manager-pptp \
        openni-utils \
        p11-kit \
        p11-kit-modules \
        packagekit \
        packagekit-tools \
        pci.ids \
        pinentry-gnome3 \
        policykit-1 \
        ppp \
        pptp-linux \
        pulseaudio \
        pulseaudio-module-bluetooth \
        pulseaudio-utils \
        python-apt-common \
        python3-apport \
        python3-apt \
        python3-aptdaemon \
        python3-aptdaemon.gtk3widgets \
        python3-autobahn \
        python3-blinker \
        python3-cairo \
        python3-cbor \
        python3-certifi \
        python3-chardet \
        python3-cups \
        python3-cupshelpers \
        python3-defer \
        python3-entrypoints \
        python3-httplib2 \
        python3-ibus-1.0 \
        python3-jwt \
        python3-keyring \
        python3-launchpadlib \
        python3-lazr.restfulclient \
        python3-lazr.uri \
        python3-ldb \
        python3-lz4 \
        python3-macaroonbakery \
        python3-mpi4py \
        python3-oauthlib \
        python3-png \
        python3-problem-report \
        python3-protobuf \
        python3-pymacaroons \
        python3-pyqrcode \
        python3-requests \
        python3-requests-unixsocket \
        python3-rfc3339 \
        python3-secretstorage \
        python3-simplejson \
        python3-snappy \
        python3-systemd \
        python3-talloc \
        python3-trie \
        python3-txaio \
        python3-tz \
        python3-u-msgpack \
        python3-ubjson \
        python3-urllib3 \
        python3-vtk7 \
        python3-wadllib \
        python3-wsaccel \
        qdoc-qt5 \
        qhelpgenerator-qt5 \
        qt5-assistant \
        qt5-qmltooling-plugins \
        qtattributionsscanner-qt5 \
        qtdeclarative5-dev \
        qtdeclarative5-dev-tools \
        qttools5-dev \
        qttools5-dev-tools \
        qttools5-private-dev \
        ros-noetic-nodelet-topic-tools \
        ros-noetic-pcl-conversions \
        ros-noetic-pcl-msgs \
        rtkit \
        rygel \
        samba-libs \
        sane-utils \
        session-migration \
        sgml-data \
        sound-theme-freedesktop \
        switcheroo-control \
        system-config-printer \
        system-config-printer-common \
        system-config-printer-udev \
        tcl \
        tcl-dev \
        tcl-vtk7 \
        tcl8.6 \
        tcl8.6-dev \
        tk \
        tk-dev \
        tk8.6 \
        tk8.6-dev \
        ubuntu-docs \
        ubuntu-session \
        ubuntu-wallpapers \
        ubuntu-wallpapers-focal \
        udev \
        unzip \
        update-inetd \
        upower \
        usb-modeswitch \
        usb-modeswitch-data \
        usb.ids \
        usbmuxd \
        vtk7 \
        wamerican \
        whoopsie-preferences \
        wireless-regdb \
        wpasupplicant \
        x11-utils \
        x11-xkb-utils \
        x11-xserver-utils \
        x11proto-scrnsaver-dev \
        xbitmaps \
        xdg-dbus-proxy \
        xfonts-base \
        xfonts-encodings \
        xfonts-utils \
        xserver-common \
        xserver-xephyr \
        xserver-xorg \
        xserver-xorg-core \
        xserver-xorg-input-all \
        xserver-xorg-input-libinput \
        xserver-xorg-input-wacom \
        xserver-xorg-legacy \
        xserver-xorg-video-all \
        xserver-xorg-video-amdgpu \
        xserver-xorg-video-ati \
        xserver-xorg-video-fbdev \
        xserver-xorg-video-intel \
        xserver-xorg-video-nouveau \
        xserver-xorg-video-qxl \
        xserver-xorg-video-radeon \
        xserver-xorg-video-vesa \
        xserver-xorg-video-vmware \
        xterm \
        xwayland \
        yaru-theme-gnome-shell \
        yelp \
        yelp-xsl \
        zenity \
        zenity-common \
        libudev-dev \
        libqt5svg5-dev \
        libdw1 \
        libelf-dev \
        ros-noetic-moveit-fake-controller-manager \
        socat \
        libnlopt-dev libnlopt0 ros-noetic-trac-ik-lib \
        ros-noetic-pilz-industrial-motion-planner \
        ros-noetic-moveit-chomp-optimizer-adapter \
        ros-noetic-moveit-simple-controller-manager \
        ros-noetic-moveit-setup-assistant \
        ros-noetic-moveit-ros-robot-interaction \
        ros-noetic-ur-client-library \
        ros-noetic-rosparam-shortcuts \
        ros-noetic-vision-msgs \
        ros-noetic-cartesian-control-msgs \
        ros-noetic-cartesian-interface \
        ros-noetic-speed-scaling-interface \
        ros-noetic-roboticsgroup-upatras-gazebo-plugins \
        ros-noetic-industrial-msgs \
        ros-noetic-force-torque-sensor-controller \
        ros-noetic-cartesian-trajectory-interpolation \
        ros-noetic-joint-trajectory-controller \
        ros-noetic-moveit-resources-panda-description \
        ros-noetic-behaviortree-cpp-v3 \
        ros-noetic-geometric-shapes \
        ros-noetic-moveit-msgs \
        ros-noetic-velocity-controllers \
        ros-noetic-socketcan-interface \
        ros-noetic-moveit-kinematics \
        ros-noetic-soem \
        ros-noetic-moveit-resources-fanuc-description \
        ros-noetic-ur-description \
        ros-noetic-joy \
        ros-noetic-moveit-ros-benchmarks \
        ros-noetic-ompl \
        ros-noetic-moveit-planners-chomp \
        ros-noetic-twist-controller \
        ros-noetic-industrial-robot-status-controller \
        ros-noetic-moveit-resources-panda-moveit-config \
        ros-noetic-pcl-ros \
        ros-noetic-moveit-resources-fanuc-moveit-config \
        ros-noetic-rgbd-launch \
        ros-noetic-depth-image-proc \
        ros-noetic-image-proc \
        ros-noetic-rqt-joint-trajectory-controller \
        ros-noetic-roslint \
        ros-noetic-moveit-planners \
        ros-noetic-moveit-resources-panda-moveit-config \
        ros-noetic-moveit-planners-ompl \
        ros-noetic-trac-ik-kinematics-plugin \
        ros-noetic-industrial-robot-status-interface \
        ros-noetic-pass-through-controllers \
        ros-noetic-scaled-joint-trajectory-controller \
        ros-noetic-speed-scaling-state-controller \
        ros-noetic-ur-msgs \
        ros-noetic-cartesian-trajectory-controller \
        ros-noetic-industrial-robot-status-controller \
        ros-noetic-twist-controller \
        ros-noetic-pcl-ros \
    && rm -rf /var/lib/apt/lists/*

RUN cd ${CATKIN_WS_SRC} \
  && git clone https://github.com/DFKI-NI/mobipick.git\
  && . ${CATKIN_WS}/devel/setup.sh \
  && ./mobipick/install-deps.sh \
  && ./mobipick/build.sh \
  && rm -rf /var/lib/apt/lists/*