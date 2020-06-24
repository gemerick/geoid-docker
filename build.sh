#!/bin/bash

DIR=data

mkdir -p $DIR/96
mkdir -p $DIR/08
cd $DIR

wget ftp://ftp.nga.mil/pub2/gandg/website/wgs84/apps/egm96/15MinuteInterpolationGrid/EGM96_Interpolation_Grid.zip -O 96.zip
cd 96
unzip -o ../96.zip

# Must get the Big Endian version
cd ..
wget https://earth-info.nga.mil/GandG/wgs84/gravitymod/egm2008/Und_min2.5x2.5_egm2008_isw=82_WGS84_TideFree.gz -O egm2008.grd.gz
cd 08
cp ../egm2008.grd.gz .
gunzip -qf egm2008.grd.gz

docker build -t gemerick/geoid-base:latest .
