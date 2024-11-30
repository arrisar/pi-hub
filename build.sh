#!/bin/bash

## setup directories
rm -rf tmp/ out/
mkdir -p tmp/ out/

## combine files
cp -r src/* tmp/
rsync -av --ignore-existing vendor/pi-gen/* tmp/

## trigger build
cd tmp/
bash ./build-docker.sh

## finish 
cp -r tmp/deploy/* ../out/


