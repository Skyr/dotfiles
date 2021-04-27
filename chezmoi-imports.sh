#!/bin/bash

curl -s -L -o ~/.local/bin/gibo https://raw.githubusercontent.com/simonwhitaker/gibo/master/gibo
chmod +x ~/.local/bin/gibo
chezmoi add ~/.local/bin/gibo
~/.local/bin/gibo update

mkdir -p ${HOME}/.oh-my-zsh-custom/powerlevel
chezmoi add ${HOME}/.oh-my-zsh-custom/powerlevel
curl -s -L -o powerlevel10k-master.tar.gz  https://github.com/romkatv/powerlevel10k/archive/master.tar.gz
chezmoi import --strip-components 1 --destination ${HOME}/.oh-my-zsh-custom/powerlevel powerlevel10k-master.tar.gz
rm powerlevel10k-master.tar.gz

mkdir -p ${HOME}/.oh-my-zsh
chezmoi add ${HOME}/.oh-my-zsh
curl -s -L -o oh-my-zsh-master.tar.gz https://github.com/robbyrussell/oh-my-zsh/archive/master.tar.gz
chezmoi import --strip-components 1 --destination ${HOME}/.oh-my-zsh oh-my-zsh-master.tar.gz
rm oh-my-zsh-master.tar.gz

