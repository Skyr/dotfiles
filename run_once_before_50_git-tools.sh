#!/bin/bash

if command -v git > /dev/null ; then
  if command -v pip > /dev/null > /dev/null ; then
    pip install --user git-imerge
  fi
fi
