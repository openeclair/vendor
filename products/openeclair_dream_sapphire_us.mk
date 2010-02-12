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

# This is the top-level configuration for a US-configured openeclairMod build

$(call inherit-product, vendor/aosp/products/aosp_dream_us.mk)

# Custom Kernel
TARGET_PREBUILT_KERNEL := $(LOCAL_PATH)/../prebuilt/zImage

ADDITIONAL_BUILD_PROPERTIES += ro.com.google.locationfeatures=1
ADDITIONAL_BUILD_PROPERTIES += ro.url.legal=http://www.google.com/intl/%s/mobile/android/android-dev-phone-legal.html
ADDITIONAL_BUILD_PROPERTIES += ro.url.legal.android_privacy=http://www.google.com/intl/%s/mobile/android/android-dev-phone-privacy.html
ADDITIONAL_BUILD_PROPERTIES += keyguard.no_require_sim=true
ADDITIONAL_BUILD_PROPERTIES += ro.com.android.dateformat=MM-dd-yyyy
ADDITIONAL_BUILD_PROPERTIES += ro.com.android.dataroaming=true
ADDITIONAL_BUILD_PROPERTIES += ro.ril.hsxpa=2
ADDITIONAL_BUILD_PROPERTIES += ro.ril.gprsclass=10
ADDITIONAL_BUILD_PROPERTIES += ro.com.google.clientidbase=android-tmobile
ADDITIONAL_BUILD_PROPERTIES += ro.build.description=passion-user 2.1 ERD72 22132 release-keys
ADDITIONAL_BUILD_PROPERTIES += ro.build.fingerprint=google/passion/passion/mahimahi:2.1/ERD72/22132:user/release-keys

ADDITIONAL_BUILD_PROPERTIES += ro.modversion=OpenEclair-v1.2.0

USE_CAMERA_STUB := false

# Build WebKit with V8
JS_ENGINE=jsc

# Used by BusyBox
KERNEL_MODULES_DIR:=/system/lib/modules

# Try to auto-vectorize since we are on a NEON-capable device
TARGET_arm_CFLAGS += \
    -mvectorize-with-neon-quad \
    -ftree-vectorize \
    -ffast-math

TARGET_thumb_CFLAGS += \
    -mvectorize-with-neon-quad \
    -ftree-vectorize \
    -ffast-math

PRODUCT_NAME := openeclair_dream_sapphire_us

PRODUCT_PACKAGES += Superuser \
	AccountAndSyncSettings \
	Bluetooth \
	CertInstaller \
	DeskClock \
	android.software.live_wallpaper.xml \
	LiveWallpapersPicker \
	LiveWallpapers \
	MagicSmokeWallpapers \
	VisualizationWallpapers \
	libRS \
	librs_jni 

PRODUCT_PACKAGE_OVERLAYS := vendor/openeclair/overlay

# APKs
PRODUCT_COPY_FILES += vendor/openeclair/proprietary/Vending.apk:data/app_s_tmp/Vending.apk
PRODUCT_COPY_FILES += vendor/openeclair/proprietary/VoiceSearchWithKeyboard.apk:data/app_s_tmp/VoiceSearchWithKeyboard.apk
PRODUCT_COPY_FILES += vendor/openeclair/proprietary/Maps.apk:data/app_s_tmp/Maps.apk
PRODUCT_COPY_FILES += vendor/openeclair/proprietary/Street.apk:data/app_s_tmp/Street.apk
PRODUCT_COPY_FILES += vendor/openeclair/proprietary/YouTube.apk:data/app/YouTube.apk
PRODUCT_COPY_FILES += vendor/openeclair/proprietary/GenieWidget.apk:data/app/GenieWidget.apk
PRODUCT_COPY_FILES += vendor/openeclair/proprietary/Facebook.apk:data/app/Facebook.apk
PRODUCT_COPY_FILES += vendor/openeclair/proprietary/EnhancedGoogleSearchProvider.apk:system/app/EnhancedGoogleSearchProvider.apk
PRODUCT_COPY_FILES += vendor/openeclair/proprietary/Gmail.apk:system/app/Gmail.apk
PRODUCT_COPY_FILES += vendor/openeclair/proprietary/GmailProvider.apk:system/app/GmailProvider.apk
PRODUCT_COPY_FILES += vendor/openeclair/proprietary/GoogleApps.apk:system/app/GoogleApps.apk
PRODUCT_COPY_FILES += vendor/openeclair/proprietary/GoogleBackupTransport.apk:system/app/GoogleBackupTransport.apk
PRODUCT_COPY_FILES += vendor/openeclair/proprietary/GoogleCheckin.apk:system/app/GoogleCheckin.apk
PRODUCT_COPY_FILES += vendor/openeclair/proprietary/GoogleContactsSyncAdapter.apk:system/app/GoogleContactsSyncAdapter.apk
PRODUCT_COPY_FILES += vendor/openeclair/proprietary/GooglePartnerSetup.apk:system/app/GooglePartnerSetup.apk
PRODUCT_COPY_FILES += vendor/openeclair/proprietary/GoogleSettingsProvider.apk:system/app/GoogleSettingsProvider.apk
PRODUCT_COPY_FILES += vendor/openeclair/proprietary/GoogleSubscribedFeedsProvider.apk:system/app/GoogleSubscribedFeedsProvider.apk
PRODUCT_COPY_FILES += vendor/openeclair/proprietary/gtalkservice.apk:system/app/gtalkservice.apk
PRODUCT_COPY_FILES += vendor/openeclair/proprietary/MarketUpdater.apk:system/app/MarketUpdater.apk
PRODUCT_COPY_FILES += vendor/openeclair/proprietary/MediaUploader.apk:system/app/MediaUploader.apk
PRODUCT_COPY_FILES += vendor/openeclair/proprietary/NetworkLocation.apk:system/app/NetworkLocation.apk
PRODUCT_COPY_FILES += vendor/openeclair/proprietary/SetupWizard.apk:system/app/SetupWizard.apk
PRODUCT_COPY_FILES += vendor/openeclair/proprietary/Talk.apk:system/app/Talk.apk
PRODUCT_COPY_FILES += vendor/openeclair/proprietary/TalkProvider.apk:system/app/TalkProvider.apk

# Libraries
PRODUCT_COPY_FILES += vendor/openeclair/proprietary/libhtc_ril.so:system/lib/libhtc_ril.so
PRODUCT_COPY_FILES += vendor/openeclair/proprietary/libspeech.so:system/lib/libspeech.so
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/camera/libcameraservice.so:system/lib/libcameraservice.so
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/camera/libcamera.so:system/lib/libcamera.so
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/camera/libqcamera.so:system/lib/libqcamera.so
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/sapphire-keypad.kcm.bin:system/etc/keychars/sapphire-keypad.kcm.bin
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/sensors.sapphire.so:system/lib/hw/sensors.sapphire.so

# Permissions & Framework
PRODUCT_COPY_FILES += vendor/openeclair/proprietary/com.google.android.gtalkservice.jar:system/framework/com.google.android.gtalkservice.jar
PRODUCT_COPY_FILES += vendor/openeclair/proprietary/com.google.android.maps.jar:system/framework/com.google.android.maps.jar
PRODUCT_COPY_FILES += vendor/openeclair/proprietary/com.google.android.datamessaging.xml:system/etc/permissions/com.google.android.datamessaging.xml
PRODUCT_COPY_FILES += vendor/openeclair/proprietary/com.google.android.gtalkservice.xml:system/etc/permissions/com.google.android.gtalkservice.xml
PRODUCT_COPY_FILES += vendor/openeclair/proprietary/com.google.android.maps.xml:system/etc/permissions/com.google.android.maps.xml

# Custom build props
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/build.sapphire.prop:system/build.sapphire.prop
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/build.trout.prop:system/build.trout.prop

# Compcache
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/compcache/ramzswap.ko:system/modules/lib/modules/2.6.29.6-wg/compcache/ramzswap.ko
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/compcache/rzscontrol:system/bin/rzscontrol

# Wireless Driver
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/wlan.ko:system/lib/modules/wlan.ko

# SD Card
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/blank:system/sd/placeholder

PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/bin/memctl:system/bin/memctl \
						vendor/openeclair/prebuilt/bin/e2fsck:system/xbin/e2fsck \
						vendor/openeclair/prebuilt/bin/firstboot:system/bin/firstboot \
						vendor/openeclair/prebuilt/bin/fix_permissions:system/bin/fix_permissions \
						vendor/openeclair/prebuilt/bin/rosystem:system/bin/rosystem \
						vendor/openeclair/prebuilt/bin/rwsystem:system/bin/rwsystem \
						vendor/openeclair/prebuilt/bin/shutdown:system/bin/shutdown \
						vendor/openeclair/prebuilt/bin/usb-tether:system/bin/usb-tether \
						vendor/openeclair/prebuilt/etc/apns-conf.xml:system/etc/apns-conf.xml \
						vendor/cyanogen/prebuilt/etc/dnsmasq.conf:system/etc/dnsmasq.conf \
						vendor/openeclair/prebuilt/etc/fstab:system/etc/fstab \
						vendor/openeclair/prebuilt/etc/init.d:system/etc/init.d \
						vendor/openeclair/prebuilt/etc/permissions:system/etc/permissions \
						vendor/openeclair/prebuilt/etc/sysctl.conf:system/etc/sysctl.conf \
						vendor/openeclair/prebuilt/lib/egl:system/lib/egl \
						vendor/openeclair/prebuilt/etc/init.d/00banner:system/etc/init.d/00banner \
						vendor/openeclair/prebuilt/etc/init.d/01sysctl:system/etc/init.d/01sysctl \
						vendor/openeclair/prebuilt/etc/init.d/02setupext:system/etc/init.d/02setupext \
						vendor/openeclair/prebuilt/etc/init.d/03firstboot:system/etc/init.d/03firstboot \
						vendor/openeclair/prebuilt/etc/init.d/04apps2sd:system/etc/init.d/04apps2sd \
						vendor/openeclair/prebuilt/etc/init.d/05userinit:system/etc/init.d/05userinit \
						vendor/openeclair/prebuilt/etc/init.d/99complete:system/etc/init.d/99complete \
						vendor/openeclair/prebuilt/etc/permissions/android.hardware.camera.autofocus.xml:system/etc/permissions/android.hardware.camera.autofocus.xml \
						vendor/openeclair/prebuilt/etc/permissions/android.hardware.touchscreen.multitouch.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.xml \
						vendor/openeclair/prebuilt/lib/egl/egl.cfg:system/lib/egl/egl.cfg \
						vendor/openeclair/prebuilt/lib/egl/libGLES_qcom.so:system/lib/egl/libGLES_qcom.so \
					  vendor/openeclair/root/init.trout.rc:$(TARGET_ROOT_OUT)/root/init.trout.rc \
				      vendor/openeclair/root/init.sapphire.rc:$(TARGET_ROOT_OUT)/root/init.sapphire.rc	  

PRODUCT_LOCALES := \
    en_US \
    ar_EG \
    ar_IL \
    bg_BG \
    ca_ES \
    cs_CZ \
    da_DK \
    de_AT \
    de_CH \
    de_DE \
    de_LI \
    el_GR \
    en_AU \
    en_CA \
    en_GB \
    en_IE \
    en_IN \
    en_NZ \
    en_SG \
    en_ZA \
    es_ES \
    es_US \
    fi_FI \
    fr_BE \
    fr_CA \
    fr_CH \
    fr_FR \
    he_IL \
    hi_IN \
    hr_HR \
    hu_HU \
    id_ID \
    it_CH \
    it_IT \
    iw_IL \
    ja_JP \
    ko_KR \
    lt_LT \
    lv_LV \
    nb_NO \
    nl_BE \
    nl_NL \
    pl_PL \
    pt_BR \
    pt_PT \
    ro_RO \
    ru_RU \
    sk_SK \
    sl_SI \
    sr_RS \
    sv_SE \
    th_TH \
    tl_PH \
    tr_TR \
    uk_UA \
    vi_VN \
    zh_CN \
    zh_TW
