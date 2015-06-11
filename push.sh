#!/bin/sh
# this assumes you created the openshift directory in your home directory
# modify the script if this is not the case
 
meteor build prod
cp prod/stl-telescope-dev.tar.gz ~/openshift/stl-telescope
rm prod/stl-telescope-dev.tar.gz
cd ~/openshift/stl-telescope
tar -xvf stl-telescope-dev.tar.gz -s '/^bundle//'
rm stl-telescope-dev.tar.gz
git add .
git commit -am "a push"
git push
