#!/bin/bash

PKG_NAME="r8125"
PKG_VER="9.004.01"
DST_DIR="/usr/src/"

cp -a $PKG_NAME-$PKG_VER $DST_DIR
cp dkms.conf $DST_DIR/$PKG_NAME-$PKG_VER

dkms add -m $PKG_NAME -v $PKG_VER
dkms build -m $PKG_NAME -v $PKG_VER
dkms install -m $PKG_NAME -v $PKG_VER
modprobe r8125
