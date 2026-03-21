This folder contains the setup scripts for the [Geekworm X1301 HDMI Capture Hat*](https://amzn.to/3LzM00R). This hat supports recording/streaming video up to 1080P @ 60FPS. The scripts can be installed by running:
```
sudo ./setup.sh
```
A reboot will be required after running the setup script. Be sure that the video device is connected before the Pi boots up. If you connect a device after boot, you may re-run the startup scripts by running:
```
sudo systemctl restart tc358743-init
```
The hat may output data in **BGR** format instead of **RGB** format. A LUT is privided in the *'extra'* folder that can be used in software packages such as *OBS* to invert the **Red** and **Blue** channels.


*\* Afiliate link that help support my work by earning a small commition.*
