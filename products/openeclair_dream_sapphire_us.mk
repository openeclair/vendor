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

# This is the top-level configuration for a US-configured OpenEclair build

$(call inherit-product, vendor/aosp/products/aosp_dream_us.mk)

# Build.prop Properties
PRODUCT_PROPERTY_OVERRIDES := \
ro.com.google.locationfeatures=1 \
ro.url.legal=http://www.google.com/intl/%s/mobile/android/android-dev-phone-legal.html \
ro.url.legal.android_privacy=http://www.google.com/intl/%s/mobile/android/android-dev-phone-privacy.html \
ro.com.google.clientidbase=android-tmobile
ADDITIONAL_BUILD_PROPERTIES += ro.modversion=OpenEclair-v1.3
ADDITIONAL_DEFAULT_PROPERTIES += persist.service.memctl_state=1
ADDITIONAL_DEFAULT_PROPERTIES += persist.service.memctl_size=16384
# RIL Hacks from Amon_RA
ADDITIONAL_BUILD_PROPERTIES += \
ro.ril.hep=1 \
ro.ril.enable.dtm=1 \
ro.ril.hsdpa.category=8 \
ro.ril.enable.a53=1 \
ro.ril.enable.3g.prefix=1 \
ro.ril.htcmaskw1.bitmask = 4294967295 \
ro.ril.htcmaskw1 = 14449 \
ro.ril.hsupa.category = 5 \

# Build WebKit with V8
JS_ENGINE=V8

# Build with JIT, disable by default
WITH_JIT := true
PRODUCT_PROPERTY_OVERRIDES += dalvik.vm.execution-mode=int:fast

KERNEL_MODULES_DIR:=/system/lib/modules

PRODUCT_NAME := openeclair_dream_sapphire_us

PRODUCT_PACKAGE_OVERLAYS := vendor/openeclair/overlay

PRODUCT_PACKAGES += \
	Superuser \
	AccountAndSyncSettings \
	Bluetooth \
	CertInstaller \
	DeskClock \
	Gallery3D \
	android.software.live_wallpaper.xml \
	LiveWallpapersPicker \
	LiveWallpapers \
	MagicSmokeWallpapers \
	VisualizationWallpapers \
	Launcher \
	Launcher2 \
	libRS \
	librs_jni 

# Custom Kernel
#TARGET_PREBUILT_KERNEL := $(LOCAL_PATH)/../prebuilt/dream-sapphire/zImage

# Boot Animation by MINUS_Stl
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/bootanimation.zip:data/media_tmp/bootanimation.zip

# APKs
PRODUCT_COPY_FILES += vendor/openeclair/proprietary/Vending.apk:system/app/Vending.apk
PRODUCT_COPY_FILES += vendor/openeclair/proprietary/wireless_tether_2_0-pre7.apk:data/app/wireless_tether_2_0-pre7.apk
PRODUCT_COPY_FILES += vendor/openeclair/proprietary/VoiceSearchWithKeyboard.apk:system/app/VoiceSearchWithKeyboard.apk
PRODUCT_COPY_FILES += vendor/openeclair/proprietary/Maps.apk:data/app/com.google.android.apps.maps.apk
PRODUCT_COPY_FILES += vendor/openeclair/proprietary/Street.apk:system/app/Street.apk
PRODUCT_COPY_FILES += vendor/openeclair/proprietary/YouTube.apk:system/app/YouTube.apk
PRODUCT_COPY_FILES += vendor/openeclair/proprietary/GenieWidget.apk:system/app/GenieWidget.apk
PRODUCT_COPY_FILES += vendor/openeclair/proprietary/Facebook.apk:data/app/com.facebook.katana.apk
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
PRODUCT_COPY_FILES += vendor/openeclair/proprietary/PDFViewer.apk:data/app/com.htc.pdfreader.apk
PRODUCT_COPY_FILES += vendor/openeclair/proprietary/HTC_IME.apk:data/app/com.htc.android.htcime.apk

# Libraries
PRODUCT_COPY_FILES += vendor/openeclair/proprietary/libhtc_ril.so:system/lib/libhtc_ril.so
PRODUCT_COPY_FILES += vendor/openeclair/proprietary/libspeech.so:system/lib/libspeech.so
PRODUCT_COPY_FILES += vendor/openeclair/proprietary/libt9.so:system/lib/libt9.so
#PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/camera/libcameraservice.so:system/lib/libcameraservice.so
#PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/camera/libcamera.so:system/lib/libcamera.so
#PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/camera/libqcamera.so:system/lib/libqcamera.so
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/sapphire-keypad.kcm.bin:system/etc/keychars/sapphire-keypad.kcm.bin
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/sensors.sapphire.so:system/lib/hw/sensors.sapphire.so
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


# Permission and Framework
PRODUCT_COPY_FILES += vendor/openeclair/proprietary/com.google.android.gtalkservice.jar:system/framework/com.google.android.gtalkservice.jar
PRODUCT_COPY_FILES += vendor/openeclair/proprietary/com.google.android.maps.jar:system/framework/com.google.android.maps.jar
PRODUCT_COPY_FILES += vendor/openeclair/proprietary/com.google.android.datamessaging.xml:system/etc/permissions/com.google.android.datamessaging.xml
PRODUCT_COPY_FILES += vendor/openeclair/proprietary/com.google.android.gtalkservice.xml:system/etc/permissions/com.google.android.gtalkservice.xml 
PRODUCT_COPY_FILES += vendor/openeclair/proprietary/com.google.android.maps.xml:system/etc/permissions/com.google.android.maps.xml 
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/etc/permissions/android.hardware.camera.autofocus.xml:system/etc/permissions/android.hardware.camera.autofocus.xml 
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/etc/permissions/android.hardware.touchscreen.multitouch.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.xml 

# Custom build props
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/build.sapphire.prop:system/build.sapphire.prop
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/build.trout.prop:system/build.trout.prop 
PRODUCT_COPY_FILES += vendor/openeclair/root/init.trout.rc:$(TARGET_ROOT_OUT)/root/init.trout.rc 
PRODUCT_COPY_FILES += vendor/openeclair/root/init.sapphire.rc:$(TARGET_ROOT_OUT)/root/init.sapphire.rc

# Compcache
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/compcache/ramzswap.ko:system/modules/lib/modules/2.6.29.6-wg/compcache/ramzswap.ko
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/compcache/rzscontrol:system/bin/rzscontrol
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/bin/memctl:system/bin/memctl 

# Wireless Driver
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/wlan.ko:system/lib/modules/wlan.ko

# Placeholders
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/blank:system/sd/placeholder
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/blank:system/xbin/bb/placeholder

# Scripts and Binaries
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/bin/appfix:system/bin/appfix
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/bin/e2fsck:system/xbin/e2fsck 
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/bin/nano:system/xbin/nano
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/bin/firstboot:system/bin/firstboot 
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/bin/fix_permissions:system/bin/fix_permissions 
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/bin/rosystem:system/bin/rosystem 
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/bin/rwsystem:system/bin/rwsystem 
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/bin/shutdown:system/bin/shutdown 
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/bin/usb-tether:system/bin/usb-tether 

# /system/etc files
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/etc/apns-conf.xml:system/etc/apns-conf.xml 
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/etc/dnsmasq.conf:system/etc/dnsmasq.conf 
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/etc/gps.conf:system/etc/gps.conf 
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/etc/fstab:system/etc/fstab 
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/etc/sysctl.conf:system/etc/sysctl.conf 
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/etc/AudioPara4-trout.csv:system/etc/AudioPara4-trout.csv 
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/etc/AudioPara4-sapphire.csv:system/etc/AudioPara4-sapphire.csv
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/etc/terminfo/l/linux:system/etc/terminfo/l/linux
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/etc/terminfo/u/unknown:system/etc/terminfo/u/unknown


# Boot init.d Files
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/etc/init.d/00banner:system/etc/init.d/00banner 
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/etc/init.d/01sysctl:system/etc/init.d/01sysctl 
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/etc/init.d/02setupext:system/etc/init.d/02setupext 
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/etc/init.d/03firstboot:system/etc/init.d/03firstboot 
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/etc/init.d/04apps2sd:system/etc/init.d/04apps2sd 
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/etc/init.d/05userinit:system/etc/init.d/05userinit 
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/etc/init.d/99complete:system/etc/init.d/99complete 

# Extra Audio Notifications and Ringtones
#include frameworks/base/data/sounds/AudioPackage4.mk
# TODO - Include a better list of /data/media

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
