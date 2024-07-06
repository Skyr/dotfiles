#!/usr/bin/env bash

TMPDIR=$(mktemp -d)
function cleanup() {
	rm -f "${TMPDIR}/*"
	rmdir "$TMPDIR"
}
trap cleanup EXIT

function dl_tar() {
	TARFILE="${TMPDIR}/dl.tar.gz"
	curl -L -s -o "$TARFILE" "$1"
	tar xzf "$TARFILE" --wildcards --strip-components=$2 -C "$HOME/.local/bin" "$3"
	rm "$TARFILE"
}

dl_tar "https://github.com/starship/starship/releases/latest/download/starship-x86_64-unknown-linux-gnu.tar.gz" 0 starship

dl_tar "https://github.com/Wilfred/difftastic/releases/latest/download/difft-x86_64-unknown-linux-gnu.tar.gz" 0 difft

dl_tar "https://github.com/simonwhitaker/gibo/releases/latest/download/gibo_Linux_arm64.tar.gz" 0 gibo

dl_tar "https://github.com/extrawurst/gitui/releases/latest/download/gitui-linux-x86_64.tar.gz" 0 ./gitui

LAZYGIT_URL=$(curl --silent "https://api.github.com/repos/jesseduffield/lazygit/releases/latest" | jq -r ".assets[].browser_download_url" | grep "Linux_x86_64")
dl_tar "$LAZYGIT_URL" 0 lazygit

RGA_URL=$(curl --silent "https://api.github.com/repos/phiresky/ripgrep-all/releases/latest" | jq -r ".assets[].browser_download_url" | grep "x86_64-unknown-linux-musl")

dl_tar "$RGA_URL" 1 '*/rga'

curl -L -s -o $HOME/.local/bin/yq https://github.com/mikefarah/yq/releases/latest/download/yq_linux_amd64
chmod +x $HOME/.local/bin/yq

DIVE_URL=$(curl --silent "https://api.github.com/repos/wagoodman/dive/releases/latest" | jq -r ".assets[].browser_download_url" | grep "_linux_amd64.tar.gz")
dl_tar "$DIVE_URL" 0 dive
