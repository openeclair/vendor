#
# Copyright (C) 2009 The Android Open Source Project
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

# This is the top-level configuration for a US-configured CyanogenMod build
$(call inherit-product, vendor/openeclair/products/openeclair_hdpi.mk)
    
PRODUCT_NAME := openeclair_sholes
PRODUCT_MODEL := Droid
PRODUCT_MANUFACTURER := Motorola

# Which actual hardware this is based on (this is a path under vendor/)
PRODUCT_BRAND := motorola
PRODUCT_DEVICE := sholes-open
PRODUCT_BUILD_FINGERPRINT_OVERRIDE := verizon/voles/sholes/sholes:2.0.1/ESD56/20996:user/release-keys

include vendor/motorola/sholes-open/device_sholes.mk
