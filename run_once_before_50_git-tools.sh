#!/bin/bash

if command -v git > /dev/null ; then
  if command -v pip3 > /dev/null > /dev/null ; then
    pip3 install --user git-imerge
  fi
fi
