#!/bin/bash

curl -s -L -o ~/.local/bin/fasd https://github.com/clvv/fasd/raw/master/fasd
chmod +x ~/.local/bin/fasd
chezmoi add ~/.local/bin/fasd

mkdir -p ${HOME}/.oh-my-zsh-custom/powerlevel
chezmoi add ${HOME}/.oh-my-zsh-custom/powerlevel
curl -s -L -o powerlevel10k-master.tar.gz https://github.com/romkatv/powerlevel10k/archive/master.tar.gz
chezmoi import --strip-components 1 --destination ${HOME}/.oh-my-zsh-custom/powerlevel powerlevel10k-master.tar.gz
rm powerlevel10k-master.tar.gz

mkdir -p ${HOME}/.oh-my-zsh-custom/plugins/fzf-tab
chezmoi add ${HOME}/.oh-my-zsh-custom/plugins/fzf-tab
curl -s -L -o fzf-tab-master.tar.gz https://github.com/Aloxaf/fzf-tab/archive/master.tar.gz
chezmoi import --strip-components 1 --destination ${HOME}/.oh-my-zsh-custom/plugins/fzf-tab fzf-tab-master.tar.gz
rm fzf-tab-master.tar.gz

mkdir -p ${HOME}/.oh-my-zsh-custom/plugins/zsh-syntax-highlighting
chezmoi add ${HOME}/.oh-my-zsh-custom/plugins/zsh-syntax-highlighting
curl -s -L -o zsh-syntax-highlighting-master.tar.gz https://github.com/zsh-users/zsh-syntax-highlighting/archive/refs/heads/master.tar.gz
chezmoi import --strip-components 1 --destination ${HOME}/.oh-my-zsh-custom/plugins/zsh-syntax-highlighting zsh-syntax-highlighting-master.tar.gz
rm zsh-syntax-highlighting-master.tar.gz

mkdir -p ${HOME}/.oh-my-zsh-custom/plugins/zsh-autosuggestions
chezmoi add ${HOME}/.oh-my-zsh-custom/plugins/zsh-autosuggestions
curl -s -L -o zsh-autosuggestions-master.tar.gz https://github.com/zsh-users/zsh-autosuggestions/archive/refs/heads/master.tar.gz
chezmoi import --strip-components 1 --destination ${HOME}/.oh-my-zsh-custom/plugins/zsh-autosuggestions zsh-autosuggestions-master.tar.gz
rm zsh-autosuggestions-master.tar.gz

mkdir -p ${HOME}/.oh-my-zsh
chezmoi add ${HOME}/.oh-my-zsh
curl -s -L -o oh-my-zsh-master.tar.gz https://github.com/robbyrussell/oh-my-zsh/archive/master.tar.gz
chezmoi import --strip-components 1 --destination ${HOME}/.oh-my-zsh oh-my-zsh-master.tar.gz
rm oh-my-zsh-master.tar.gz
