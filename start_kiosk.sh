#!/bin/bash

# 1. Prevent the screen from turning off or going to sleep
xset s noblank
xset s off
xset -dpms

# 2. Start a tiny window manager (prevents Chromium from "floating" awkwardly)
matchbox-window-manager -use_titlebar no &

# 3. Launch Chromium in Kiosk Mode
# Extra flags added to save RAM and CPU on the Pi Zero 2 W
chromium \
  --noerrdialogs \
  --disable-infobars \
  --kiosk \
  --disable-gpu \
  --check-for-update-interval=31536000 \
  --num-raster-threads=2 \
  http://localhost:8080