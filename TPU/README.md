# Overview
These scripts are for setting up a Coral AI Google TPU on a Raspberry Pi 5. The testing was done using a Pineboards AI hat.

# Installing the TPU

To setup the TPU, you need to install the driver and runtime-libraries and configure the device tree. All of that work has been added to a script that can be executed as such:
 
```console
$ ./TPU_Install.sh
```
The script will automatically reboot the pi to finish the installation.

# Install PyCoral

Installing PyCoral is optional and will allow you to run the example code provided by Coral AI. It is written using an older version of Python than comes standard on modern Pi OS so we use *PyEnv* to install Python 3.9.x. This process has been added to a script that can be executed as such:

```console
$ ./PyEnv_Install.sh
```

To use *PyEnv* for the first time, you will either need to restart your console or source `~/.bashrc`.
