#!/bin/bash

if command -v tmux > /dev/null && ! [[ -f $HOME/.tmux.local  ]] ; then
  touch $HOME/.tmux.conf.local
fi
