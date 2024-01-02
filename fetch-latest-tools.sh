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
	tar xzf "$TARFILE" -C "$HOME/.local/bin" "$2"
	rm "$TARFILE"
}

dl_tar "https://github.com/simonwhitaker/gibo/releases/latest/download/gibo_Linux_arm64.tar.gz" gibo
LAZYGIT_URL=`curl --silent "https://api.github.com/repos/jesseduffield/lazygit/releases/latest" | jq -r ".assets[].browser_download_url" | grep "Linux_x86_64"`
dl_tar "$LAZYGIT_URL" lazygit
