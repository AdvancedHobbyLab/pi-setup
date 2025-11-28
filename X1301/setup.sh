#!/bin/bash

if [[ $EUID -ne 0 ]]; then
    echo "Please run as root (e.g., sudo $0)"
    exit 1
fi

echo "Updating /boot/firmware/config.txt"
ensure_line() {
    local line="$1"
    local file="$2"
    if ! grep -Fxq "$line" "$file"; then
        echo "$line" >> "$file"
    fi
}

ensure_line "dtoverlay=tc358743,4lane=1" 	"/boot/firmware/config.txt"
ensure_line "dtoverlay=tc358743-audio" 		"/boot/firmware/config.txt"

echo "Installing udev rules."
cp 80-tc358743.rules /etc/udev/rules.d/
udevadm control --reload-rules
udevadm trigger

echo "Installing systemd service."
mkdir -p /usr/local/bin/tc358743/
cp 1080P60EDID.txt /usr/local/bin/tc358743/
cp tc358743-init.sh /usr/local/bin/
cp tc358743-init.service /etc/systemd/system/

echo "Starting systemd service."
systemctl daemon-reload
systemctl enable tc358743-init.service
systemctl start tc358743-init.service

echo "Finished."
echo "Reboot required."