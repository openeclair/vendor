#! /system/bin/sh
#
# Setup vendor prebuilt scripts
# WesGarner for OpenEclair

for prebuilt in * ; do
 	echo vendor/openeclair/prebuilt/$prebuilt\:system/$prebuilt  \\;
done;
for prebuilt in */* ; do
 	echo vendor/openeclair/prebuilt/$prebuilt\:system/$prebuilt  \\;
done;
for prebuilt in */*/* ; do
 	echo vendor/openeclair/prebuilt/$prebuilt\:system/$prebuilt  \\;
done;