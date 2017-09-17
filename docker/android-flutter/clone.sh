#!/usr/bin/env bash

DIR='/usr/local'

if [[ ! -d $DIR/flutter ]];
then
    cd $DIR
    git clone -b alpha https://github.com/flutter/flutter.git
else
    cd $DIR/flutter
    git pull origin alpha
fi
