#!/bin/bash

# Setup vim environment
# ================================================================================
rm -rf ~/.vim ~/.vimrc ~/.gvimrc && \
cp -R .vim .vimrc .gvimrc .gitconfig ~
