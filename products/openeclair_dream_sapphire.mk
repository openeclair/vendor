#
# Copyright (C) 2010 The OpenEclair Team - Wes Garner and Chris Soyars
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
# This is the top-level configuration for the OpenEclair build for Dream/Sapphire

# Backup Tool
TARGET_OTA_SCRIPT_MODE=amend
TARGET_OTA_BACKUPTOOL=False
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/common/bin/backuptool.sh:system/bin/backuptool.sh

# Custom Kernel
TARGET_KERNEL_CONFIG ?= wg_defconfig
BOARD_KERNEL_BASE ?= 10000000

# Call overlays before running other builds
PRODUCT_PACKAGE_OVERLAYS := vendor/openeclair/overlay/dream-sapphire

$(call inherit-product, vendor/aosp/products/aosp_dream_us.mk)
$(call inherit-product, vendor/openeclair/products/openeclair_common.mk)
$(call inherit-product, vendor/openeclair/proprietary/openeclair_proprietary.mk)

PRODUCT_NAME := openeclair_dream_sapphire
PRODUCT_MODEL := OpenEclair for Dream/Sapphire
PRODUCT_BRAND := openeclair
PRODUCT_MANUFACTURER := HTC
PRODUCT_DEVICE := dream-open

# Use Passion fingerprint to fix Market issues
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_ID=EPE54B BUILD_DISPLAY_ID=EPE54B PRODUCT_NAME=passion BUILD_FINGERPRINT=google/passion/passion/mahimahi:2.1-update1/ERE27/24178:user/release-keys PRIVATE_BUILD_DESC="passion-user 2.1-update1 ERE27 24178 release-keys"

# Sapphire Keypad/Sensors
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/etc/keychars/sapphire-keypad.kcm.bin:system/etc/keychars/sapphire-keypad.kcm.bin
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/lib/hw/sensors.sapphire.so:system/lib/hw/sensors.sapphire.so

# Custom build props / scripts
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/update-script:META-INF/com/google/android/update-script
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/build.sapphire.prop:system/build.sapphire.prop
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/build.trout.prop:system/build.trout.prop 
PRODUCT_COPY_FILES += vendor/openeclair/root/init.trout.rc:$(TARGET_ROOT_OUT)/root/init.trout.rc 
PRODUCT_COPY_FILES += vendor/openeclair/root/init.sapphire.rc:$(TARGET_ROOT_OUT)/root/init.sapphire.rc

# Device-specific USB tether
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/bin/usb-tether:system/bin/usb-tether

# Device-specific /system/etc files
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/etc/fstab:system/etc/fstab 
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/etc/AudioPara4-trout.csv:system/etc/AudioPara4-trout.csv 
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/etc/AudioPara4-sapphire.csv:system/etc/AudioPara4-sapphire.csv
