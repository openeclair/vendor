#! /system/bin/sh
#
# Setup vendor prebuilt scripts
# WesGarner for OpenEclair

for prebuilt in prebuilt/* ; do
 	echo vendor/openeclair/$prebuilt;
done;
for prebuilt in prebuilt/*/* ; do
 	echo vendor/openeclair/$prebuilt;
done;
for prebuilt in prebuilt/*/*/* ; do
 	echo vendor/openeclair/$prebuilt;
done;