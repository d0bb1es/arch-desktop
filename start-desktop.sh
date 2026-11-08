#!/bin/bash
pkill Xvnc 2>/dev/null; pkill websockify 2>/dev/null
Xvnc :1 -geometry 1366x768 -depth 24 -SecurityTypes None -localhost &
sleep 2
DISPLAY=:1 dbus-launch startxfce4 &
websockify --web /usr/share/webapps/novnc 6080 localhost:5901 &
echo "Open the forwarded port 6080 -> /vnc.html"
