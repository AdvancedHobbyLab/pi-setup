#!/bin/bash

v4l2-ctl -d /dev/v4l-subdev-tc358743 --set-edid=file=/usr/local/bin/tc358743/1080P60EDID.txt
# Wait drive loads
sleep 5s

v4l2-ctl -d /dev/v4l-subdev2 --query-dv-timings

v4l2-ctl -d /dev/v4l-subdev2 --set-dv-bt-timings query

media-ctl -d /dev/media-rp1-cfe -r

media-ctl -d /dev/media-rp1-cfe -l ''\''csi2'\'':4 -> '\''rp1-cfe-csi2_ch0'\'':0 [1]'

media-ctl -d /dev/media-rp1-cfe -V ''\''csi2'\'':0 [fmt:RGB888_1X24/1920x1080 field:none colorspace:srgb]'
media-ctl -d /dev/media-rp1-cfe -V ''\''csi2'\'':4 [fmt:RGB888_1X24/1920x1080 field:none colorspace:srgb]'

v4l2-ctl -v width=1920,height=1080,pixelformat=RGB3
