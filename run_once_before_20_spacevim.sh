#!/bin/bash

if command -v vim > /dev/null ; then
  if [[ "${DISPLAY:-}" == "" ]] ; then
    curl -sLf https://spacevim.org/install.sh | bash /dev/stdin --no-fonts
  else
    curl -sLf https://spacevim.org/install.sh | bash
  fi
fi
