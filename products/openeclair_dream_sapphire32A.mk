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

# Custom Kernel
KERNEL_DEFCONFIG := wg32a_defconfig
include kernel/AndroidKernel.mk

$(call inherit-product, vendor/openeclair/products/openeclair_dream_sapphire.mk)

PRODUCT_NAME := openeclair_dream_sapphire32A
PRODUCT_MODEL := OpenEclair for Dream/Sapphire for 32A Devices
PRODUCT_BRAND := openeclair
PRODUCT_MANUFACTURER := HTC
PRODUCT_DEVICE := dream-open

BOARD_KERNEL_BASE := 19200000

# Device-specific files for 32A
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire32A/etc/AudioPara4-trout.csv:system/etc/AudioPara4-trout.csv 
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire32A/etc/AudioPara4-sapphire.csv:system/etc/AudioPara4-sapphire.csv
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire32A/usr/keylayout/h2w_headset.kl:system/usr/keylayout/h2w_headset.kl
