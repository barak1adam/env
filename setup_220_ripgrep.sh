#!/bin/bash

sudo apt-get install -y jq

REPO="https://github.com/BurntSushi/ripgrep/releases/download/"
RG_LATEST=$(curl -sSL "https://api.github.com/repos/BurntSushi/ripgrep/releases/latest" | jq --raw-output .tag_name)
RELEASE="${RG_LATEST}/ripgrep-${RG_LATEST}-x86_64-unknown-linux-musl.tar.gz"

TMPDIR=$(mktemp -d)
cd $TMPDIR
wget -O - ${REPO}${RELEASE} | tar zxf - --strip-component=1
sudo mv rg /usr/bin/
sudo mv rg.1 /usr/share/man/man1/
sudo mv complete/rg.bash-completion /usr/share/bash-completion/completions/rg
sudo mandb
