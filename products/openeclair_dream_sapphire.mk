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
TARGET_KERNEL_CONFIG ?= wg_defconfig

# Call overlays before running other builds
PRODUCT_PACKAGE_OVERLAYS := vendor/openeclair/overlay/dream-sapphire

$(call inherit-product, vendor/aosp/products/aosp_dream_us.mk)
$(call inherit-product, vendor/openeclair/products/openeclair_common.mk)

PRODUCT_NAME := openeclair_dream_sapphire
PRODUCT_MODEL := OpenEclair for Dream/Sapphire
PRODUCT_BRAND := openeclair
PRODUCT_MANUFACTURER := HTC
PRODUCT_DEVICE := dream-open

# Default.prop Properties
ADDITIONAL_DEFAULT_PROPERTIES += persist.service.memctl_state=1
ADDITIONAL_DEFAULT_PROPERTIES += persist.service.memctl_size=24568
ADDITIONAL_DEFAULT_PROPERTIES += persist.service.memctl_swp=60
ADDITIONAL_DEFAULT_PROPERTIES += persist.service.auto.renice=0

PRODUCT_PACKAGES += \
	Superuser \
	AccountAndSyncSettings \
	GoogleContactsProvider \
	GoodSubscribedFeedsProvider \
	Bluetooth \
	CertInstaller \
	DeskClock \
	Gallery3D \
	Stk \
	IM \
	ImProvider \
	Launcher \
	Launcher2 \
	VoiceDialer \
	libRS \
	librs_jni \
	OEUpdater

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

# Libraries
#PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/lib/libcameraservice.so:system/lib/libcameraservice.so
#PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/lib/libcamera.so:system/lib/libcamera.so
#PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/lib/libqcamera.so:system/lib/libqcamera.so
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/etc/keychars/sapphire-keypad.kcm.bin:system/etc/keychars/sapphire-keypad.kcm.bin
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/lib/hw/sensors.sapphire.so:system/lib/hw/sensors.sapphire.so
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/lib/libncurses.so:system/lib/libncurses.so
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/lib/libext2_blkid.so:system/lib/libext2_blkid.so
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/lib/libext2_com_err.so:system/lib/libext2_com_err.so
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/lib/libext2_e2p.so:system/lib/libext2_e2p.so
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/lib/libext2fs.so:system/lib/libext2fs.so
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/lib/libext2_profile.so:system/lib/libext2_profile.so
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/lib/libext2_uuid.so:system/lib/libext2_uuid.so
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/lib/libstagefright_omx.so:system/lib/libstagefright_omx.so
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/lib/libomx_aacdec_sharedlibrary.so:system/lib/libomx_aacdec_sharedlibrary.so
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/lib/libomx_amrdec_sharedlibrary.so:system/lib/libomx_amrdec_sharedlibrary.so
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/lib/libomx_amrenc_sharedlibrary.so:system/lib/libomx_amrenc_sharedlibrary.so
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/lib/libomx_avcdec_sharedlibrary.so:system/lib/libomx_avcdec_sharedlibrary.so
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/lib/libOmxCore.so:system/lib/libOmxCore.so
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/lib/libOmxH264Dec.so:system/lib/libOmxH264Dec.so
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/lib/libomx_m4vdec_sharedlibrary.so:system/lib/libomx_m4vdec_sharedlibrary.so
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/lib/libomx_mp3dec_sharedlibrary.so:system/lib/libomx_mp3dec_sharedlibrary.so
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/lib/libOmxMpeg4Dec.so:system/lib/libOmxMpeg4Dec.so
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/lib/libomx_sharedlibrary.so:system/lib/libomx_sharedlibrary.so
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/lib/libOmxVidEnc.so:system/lib/libOmxVidEnc.so
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/lib/libomx_wmadec_sharedlibrary.so:system/lib/libomx_wmadec_sharedlibrary.so
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/lib/libomx_wmvdec_sharedlibrary.so:system/lib/libomx_wmvdec_sharedlibrary.so
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/lib/libqcomm_omx.so:system/lib/libqcomm_omx.so
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/lib/egl/egl.cfg:system/lib/egl/egl.cfg
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/lib/egl/libGLES_android.so:system/lib/egl/libGLES_android.so
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/lib/egl/libGLES_qcom.so:system/lib/egl/libGLES_qcom.so
