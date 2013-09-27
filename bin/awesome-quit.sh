#!/bin/bash
if command -v zenity >/dev/null ; then
  if zenity --question --text="Really quit?" ; then
    echo 'awesome.quit()' | awesome-client
  fi
else
  echo 'awesome.quit()' | awesome-client
fi

