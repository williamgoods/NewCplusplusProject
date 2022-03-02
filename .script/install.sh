#!/bin/bash

libname=$1
install_location=$2
git_reposity="https://github.com/williamgoods/static_${libname}.git"
UpToDate='Already up to date.'

if [ ! -d "$install_location" ]; then
    git clone --progress ${git_reposity} ${install_location}
    echo "$libname install finished!"
else
    cd $install_location
    commit=`git pull`
    if [[ $commit = $UpToDate ]];then
      echo "$libname is up to date"
    fi
    cd - > /dev/null
fi
