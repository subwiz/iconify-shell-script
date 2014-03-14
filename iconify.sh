#!/bin/bash

BSE_DIR=$(dirname $0)
WRK_DIR=$BSE_DIR/work
ICN_DIR=$WRK_DIR/icon.iconset

if [ "$#" -ne 3 ]; then
    echo Enter three parameters:
    echo 1. 1024x1024 PNG icon path
    echo 2. 512x512 PNG icon path
    echo 3. Output .icns file name
    exit 1
fi

mkdir -p $ICN_DIR
cp $1 "$ICN_DIR/icon_512x512@2x.png"
cp $2 "$ICN_DIR/icon_512x512.png"
iconutil -c icns $ICN_DIR -o "$3"

