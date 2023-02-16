#!/bin/bash

if command -v Xorg >/dev/null && [ `id -u` -ne 0 ] ; then
  NERD_FONT_VERSION="v2.3.3"
  NERD_FONT_PATH=$HOME/.local/share/chezmoi/nerd-fonts/$NERD_FONT_VERSION
  mkdir -p $NERD_FONT_PATH
  for fontname in DejaVuSansMono DroidSansMono SourceCodePro Terminus LiberationMono FiraCode FiraMono RobotoMono JetBrainsMono ; do
    if [ ! -f "$NERD_FONT_PATH/$fontname.zip" ] ; then
      echo "Loading $fontname $NERD_FONT_VERSION"
      curl -s -L -o $NERD_FONT_PATH/$fontname.zip https://github.com/ryanoasis/nerd-fonts/releases/download/${NERD_FONT_VERSION}/${fontname}.zip
      rm -rf $HOME/.fonts/$fontname
    fi
    if [ ! -d "$HOME/.fonts/$fontname" ] ; then
      mkdir -p $HOME/.fonts/$fontname
      unzip -q -d $HOME/.fonts/$fontname $NERD_FONT_PATH/$fontname.zip
    fi
  done
fi
