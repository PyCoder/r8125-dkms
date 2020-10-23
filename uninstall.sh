#!/bin/bash

PKG_NAME="r8125"
PKG_VER="9.004.01"
DST_DIR="/usr/src/"

dkms remove $PKG_NAME/$PKG_VER --all
rm -rf $DST_DIR$PKG_NAME-$PKG_VER/
rmmod $PKG_NAME
dkms status