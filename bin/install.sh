#!/usr/bin/env bash

cwd=$(pwd)
PLUGIN_NAME=$(cat package.json \
  | grep name \
  | head -1 \
  | awk -F: '{ print $2 }' \
  | sed 's/[",]//g')

echo "Installing LSF plugin" $PLUGIN_NAME "..."
mkdir -p $cwd/../../out
cp src/index.js ../../out/index.js
