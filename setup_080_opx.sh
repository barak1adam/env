#!/bin/bash

# Setup needed programs and utilities
# ================================================================================
sudo apt-get install -y ffmpeg && \
sudo apt-get install -y zlib1g-dev zlib1g-dev:i386 && \
sudo apt-get install -y libxml2-dev libssh2-1-dev libncurses5-dev libgcrypt-dev && \
sudo apt-get install -y libxml2:i386 && \
sudo apt-get install -y build-essential devscripts debhelper && \
sudo apt-get install -y libicu-dev && \
sudo apt-get install -y libicu-dev:i386 && \
sudo apt-get install -y unicode

# no need: sudo cp /usr/lib/i386-linux-gnu/libicu* /lib/i386-linux-gnu/
# copy libxml2.so from somebody to /usr/lib/i386-linux-gnu
# find . -name "libxml*so*"
# find . -name "libxml*so*" | xargs ls -lsa
# sudo ln -s libxml2.so.2.9.1 libxml2.so
# sudo ln -s libxml2.so.2.9.1 libxml2.so.2
# cd /usr/lib/i386-linux-gnu
# sudo ln -s libxml2.so.2.9.2 libxml2.so

# Possibly not needed:
# --------------------
# Edit file on your PC:
# /usr/include/libxml2/libxml/encoding.h
# Add:
# #undef LIBXML_ICU_ENABLED
# on ~line 27
# OR:
# install libxml2:i386 version 2.9.1
