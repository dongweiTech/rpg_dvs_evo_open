# #!/bin/bash

echo "First, we install the required apt packages"
add-apt-repository ppa:inivation-ppa/inivation
apt-get update
apt-get install                \
    ros-$1-sophus               \
    ros-$1-pcl-ros              \
    ros-$1-eigen-conversions    \
    ros-$1-camera-info-manager  \
    ros-$1-image-view           \
    libcaer-dev                 \
    libfftw3-dev libfftw3-doc   \
    libglew-dev                 \
    libopencv-dev               \
    libyaml-cpp-dev             \
    python3-catkin-tools         \
    ros-$1-camera-info-manager  \
    ros-$1-image-geometry



echo "Second, we clone the evo dependencies"
vcs-import < rpg_dvs_evo_open/dependencies.yaml
