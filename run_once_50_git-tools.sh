#!/bin/bash

if command -v git > /dev/null ; then
  if command -v pip > /dev/null > /dev/null ; then
    pip install git-imerge
  fi
fi
