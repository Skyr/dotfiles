#!/bin/bash
sync
if command -v umountexthd >/dev/null ; then
  #umountexthd || exit 1
  umountexthd
fi
if pidof -x gnome-screensaver > /dev/null; then
  gnome-screensaver-command -l
else
  slock &
fi
sleep 2
sync
sudo /usr/sbin/pm-suspend

