#!/bin/bash

## Pulled documentation from: https://github.com/CSULB-CECS-Senior-Design/Main-SBC/blob/main/Documentation/Rpi5-M.2_Edge_TPU_Installation.md

## Create build directory for easy cleanup later
mkdir build
cd build

# Install drivers, set permissions, and update device tree
wget https://gist.githubusercontent.com/AdvancedHobbyLab/923e0e84543b986f482e0479e147d523/raw/6ef81cc44eb6d40d92f8c22cd019a1d302d14bee/coral-ai-pcie-edge-tpu-raspberrypi-5-setup
chmod u+x coral-ai-pcie-edge-tpu-raspberrypi-5-setup
./coral-ai-pcie-edge-tpu-raspberrypi-5-setup
rm ./coral-ai-pcie-edge-tpu-raspberrypi-5-setup



