#!/bin/bash

libname=$1
install_location=$2
git_reposity="https://github.com/williamgoods/static_${libname}.git"

if [ ! -d "$install_location" ]; then
    git clone --progress ${git_reposity} ${install_location}
    echo "$libname install finished!"
else
    cd $install_location
    # echo "judge if should update"
    git pull
    cd -
fi
