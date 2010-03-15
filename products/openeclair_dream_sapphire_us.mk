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

# Call overlays before running other builds
PRODUCT_PACKAGE_OVERLAYS := vendor/openeclair/overlay

$(call inherit-product, vendor/aosp/products/aosp_dream_us.mk)

# Build.prop Properties
#PRODUCT_PROPERTY_OVERRIDES := \
#ro.com.google.locationfeatures=1 \
#ro.url.legal=http://www.google.com/intl/%s/mobile/android/android-dev-phone-legal.html \
#ro.url.legal.android_privacy=http://www.google.com/intl/%s/mobile/android/android-dev-phone-privacy.html \
#ro.com.google.clientidbase=android-tmobile \
#keyguard.no_require_sim=true
#ADDITIONAL_BUILD_PROPERTIES += ro.modversion=OpenEclair-v1.3
ADDITIONAL_DEFAULT_PROPERTIES += persist.service.memctl_state=1
ADDITIONAL_DEFAULT_PROPERTIES += persist.service.memctl_size=24568
ADDITIONAL_DEFAULT_PROPERTIES += persist.service.memctl_swappiness=60
ADDITIONAL_DEFAULT_PROPERTIES += persist.service.auto.renice=0

# RIL Hacks from Amon_RA
#ADDITIONAL_BUILD_PROPERTIES += \
#ro.ril.hep=1 \
#ro.ril.enable.dtm=1 \
#ro.ril.hsdpa.category=8 \
#ro.ril.enable.a53=1 \
#ro.ril.enable.3g.prefix=1 \
#ro.ril.htcmaskw1.bitmask = 4294967295 \
#ro.ril.htcmaskw1 = 14449 \
#ro.ril.hsupa.category = 5 \

# Build WebKit with V8
JS_ENGINE=V8

# Build with JIT, disable by default
WITH_JIT := true
PRODUCT_PROPERTY_OVERRIDES += dalvik.vm.execution-mode=int:fast

KERNEL_MODULES_DIR:=/system/lib/modules

PRODUCT_NAME := openeclair_dream_sapphire_us


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
	libRS \
	librs_jni 

# Use ahmgsk_mod's Launcher2 for now
PRODUCT_COPY_FILES += vendor/openeclair/proprietary/Launcher2.apk:system/app/Launcher2.apk


# Custom Kernel
TARGET_PREBUILT_KERNEL := $(LOCAL_PATH)/../prebuilt/dream-sapphire/zImage

# Boot Animation by MINUS_Stl
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/media/bootanimation.zip:data/media_tmp/bootanimation.zip

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
PRODUCT_COPY_FILES += vendor/openeclair/proprietary/Clicker.apk:data/app/com.htc.clicker.apk

# Libraries
PRODUCT_COPY_FILES += vendor/openeclair/proprietary/libhtc_ril.so:system/lib/libhtc_ril.so
PRODUCT_COPY_FILES += vendor/openeclair/proprietary/libspeech.so:system/lib/libspeech.so
PRODUCT_COPY_FILES += vendor/openeclair/proprietary/libt9.so:system/lib/libt9.so
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


# Modules
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/modules/modules.alias:system/lib/modules/2.6.29.6-wg/modules.alias
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/modules/modules.alias.bin:system/lib/modules/2.6.29.6-wg/modules.alias.bin
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/modules/modules.ccwmap:system/lib/modules/2.6.29.6-wg/modules.ccwmap
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/modules/modules.dep:system/lib/modules/2.6.29.6-wg/modules.dep
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/modules/modules.dep.bin:system/lib/modules/2.6.29.6-wg/modules.dep.bin
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/modules/modules.ieee1394map:system/lib/modules/2.6.29.6-wg/modules.ieee1394map
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/modules/modules.inputmap:system/lib/modules/2.6.29.6-wg/modules.inputmap
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/modules/modules.isapnpmap:system/lib/modules/2.6.29.6-wg/modules.isapnpmap
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/modules/modules.ofmap:system/lib/modules/2.6.29.6-wg/modules.ofmap
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/modules/modules.order:system/lib/modules/2.6.29.6-wg/modules.order
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/modules/modules.pcimap:system/lib/modules/2.6.29.6-wg/modules.pcimap
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/modules/modules.seriomap:system/lib/modules/2.6.29.6-wg/modules.seriomap
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/modules/modules.symbols:system/lib/modules/2.6.29.6-wg/modules.symbols
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/modules/modules.symbols.bin:system/lib/modules/2.6.29.6-wg/modules.symbols.bin
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/modules/modules.usbmap:system/lib/modules/2.6.29.6-wg/modules.usbmap
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/modules/kernel/drivers/net/wireless/tiwlan1251/wlan.ko:system/lib/modules/2.6.29.6-wg/kernel/drivers/net/wireless/tiwlan1251/wlan.ko
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/modules/kernel/drivers/video/backlight/lcd.ko:system/lib/modules/2.6.29.6-wg/kernel/drivers/video/backlight/lcd.ko
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/modules/kernel/fs/compcache/ramzswap.ko:system/lib/modules/2.6.29.6-wg/kernel/fs/compcache/ramzswap.ko


# Permission and Framework
PRODUCT_COPY_FILES += vendor/openeclair/proprietary/com.google.android.gtalkservice.jar:system/framework/com.google.android.gtalkservice.jar
PRODUCT_COPY_FILES += vendor/openeclair/proprietary/com.google.android.maps.jar:system/framework/com.google.android.maps.jar
PRODUCT_COPY_FILES += vendor/openeclair/proprietary/com.google.android.datamessaging.xml:system/etc/permissions/com.google.android.datamessaging.xml
PRODUCT_COPY_FILES += vendor/openeclair/proprietary/com.google.android.gtalkservice.xml:system/etc/permissions/com.google.android.gtalkservice.xml 
PRODUCT_COPY_FILES += vendor/openeclair/proprietary/com.google.android.maps.xml:system/etc/permissions/com.google.android.maps.xml 
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/etc/permissions/android.hardware.camera.autofocus.xml:system/etc/permissions/android.hardware.camera.autofocus.xml 
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/etc/permissions/android.hardware.touchscreen.multitouch.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.xml 

# Custom build props / scripts
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/update-script:META-INF/com/google/android/update-script 
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/build.prop:system/build.prop 
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/build.sapphire.prop:system/build.sapphire.prop
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/build.trout.prop:system/build.trout.prop 
PRODUCT_COPY_FILES += vendor/openeclair/root/init.trout.rc:$(TARGET_ROOT_OUT)/root/init.trout.rc 
PRODUCT_COPY_FILES += vendor/openeclair/root/init.sapphire.rc:$(TARGET_ROOT_OUT)/root/init.sapphire.rc

# Compcache / Memctl
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/bin/rzscontrol:system/bin/rzscontrol
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/bin/memctl:system/bin/memctl 

# Placeholders
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/blank:system/sd/placeholder
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/blank:system/xbin/bb/placeholder

# Scripts and Binaries
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/bin/appfix:system/bin/appfix
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/bin/arenice:system/bin/arenice
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
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/etc/security/cacerts.bks:system/etc/security/cacerts.bks


# /system/etc/init.d scripts
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/common/etc/init.d/00banner:system/etc/init.d/00banner 
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/common/etc/init.d/01sysctl:system/etc/init.d/01sysctl 
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/common/etc/init.d/02setupext:system/etc/init.d/02setupext 
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/common/etc/init.d/03firstboot:system/etc/init.d/03firstboot 
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/common/etc/init.d/04apps2sd:system/etc/init.d/04apps2sd 
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/common/etc/init.d/05userinit:system/etc/init.d/05userinit 
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/common/etc/init.d/99complete:system/etc/init.d/99complete 

# Extra Audio Notifications and Ringtones
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/media/alarms/Alarm_Beep_01.ogg:data/media_tmp/audio/alarms/Alarm_Beep_01.ogg
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/media/alarms/Alarm_Beep_02.ogg:data/media_tmp/audio/alarms/Alarm_Beep_02.ogg
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/media/alarms/Alarm_Beep_03.ogg:data/media_tmp/audio/alarms/Alarm_Beep_03.ogg
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/media/alarms/Alarm_Buzzer.ogg:data/media_tmp/audio/alarms/Alarm_Buzzer.ogg
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/media/alarms/Alarm_Classic.ogg:data/media_tmp/audio/alarms/Alarm_Classic.ogg
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/media/alarms/Alarm_Rooster_02.ogg:data/media_tmp/audio/alarms/Alarm_Rooster_02.ogg
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/media/alarms/Alpha.mp3:data/media_tmp/audio/alarms/Alpha.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/media/alarms/Alpha.ogg:data/media_tmp/audio/alarms/Alpha.ogg
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/media/alarms/Beeps.mp3:data/media_tmp/audio/alarms/Beeps.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/media/alarms/Bell.mp3:data/media_tmp/audio/alarms/Bell.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/media/alarms/Bubble.mp3:data/media_tmp/audio/alarms/Bubble.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/media/alarms/Classic.mp3:data/media_tmp/audio/alarms/Classic.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/media/alarms/Dreamy.mp3:data/media_tmp/audio/alarms/Dreamy.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/media/alarms/Fade_In.mp3:data/media_tmp/audio/alarms/Fade_In.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/media/alarms/Instance.mp3:data/media_tmp/audio/alarms/Instance.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/media/alarms/Light.mp3:data/media_tmp/audio/alarms/Light.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/media/alarms/Positive.mp3:data/media_tmp/audio/alarms/Positive.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/media/alarms/Snooze.mp3:data/media_tmp/audio/alarms/Snooze.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/media/alarms/Snoozer.mp3:data/media_tmp/audio/alarms/Snoozer.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/media/notifications/Alpha.mp3:data/media_tmp/audio/notifications/Alpha.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/media/notifications/Ascend.mp3:data/media_tmp/audio/notifications/Ascend.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/media/notifications/Beat_Box_Android.ogg:data/media_tmp/audio/notifications/Beat_Box_Android.ogg
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/media/notifications/Bell.mp3:data/media_tmp/audio/notifications/Bell.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/media/notifications/Bells.ogg:data/media_tmp/audio/notifications/Bells.ogg
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/media/notifications/Bubble.mp3:data/media_tmp/audio/notifications/Bubble.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/media/notifications/CaffeineSnake.ogg:data/media_tmp/audio/notifications/CaffeineSnake.ogg
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/media/notifications/Chiff.mp3:data/media_tmp/audio/notifications/Chiff.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/media/notifications/Chimes.mp3:data/media_tmp/audio/notifications/Chimes.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/media/notifications/Color.mp3:data/media_tmp/audio/notifications/Color.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/media/notifications/Confirm.mp3:data/media_tmp/audio/notifications/Confirm.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/media/notifications/Cricket.ogg:data/media_tmp/audio/notifications/Cricket.ogg
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/media/notifications/DearDeer.ogg:data/media_tmp/audio/notifications/DearDeer.ogg
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/media/notifications/Descent.mp3:data/media_tmp/audio/notifications/Descent.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/media/notifications/Doink.ogg:data/media_tmp/audio/notifications/Doink.ogg
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/media/notifications/DontPanic.ogg:data/media_tmp/audio/notifications/DontPanic.ogg
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/media/notifications/Dream.mp3:data/media_tmp/audio/notifications/Dream.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/media/notifications/Dreamy.mp3:data/media_tmp/audio/notifications/Dreamy.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/media/notifications/Dribble.mp3:data/media_tmp/audio/notifications/Dribble.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/media/notifications/Drip.ogg:data/media_tmp/audio/notifications/Drip.ogg
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/media/notifications/F1_MissedCall.ogg:data/media_tmp/audio/notifications/F1_MissedCall.ogg
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/media/notifications/F1_New_MMS.ogg:data/media_tmp/audio/notifications/F1_New_MMS.ogg
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/media/notifications/F1_New_SMS.ogg:data/media_tmp/audio/notifications/F1_New_SMS.ogg
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/media/notifications/Flute.mp3:data/media_tmp/audio/notifications/Flute.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/media/notifications/Freeze.mp3:data/media_tmp/audio/notifications/Freeze.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/media/notifications/Friendly.mp3:data/media_tmp/audio/notifications/Friendly.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/media/notifications/Guitar_1.mp3:data/media_tmp/audio/notifications/Guitar_1.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/media/notifications/Guitar_2.mp3:data/media_tmp/audio/notifications/Guitar_2.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/media/notifications/Heaven.ogg:data/media_tmp/audio/notifications/Heaven.ogg
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/media/notifications/Highwire.ogg:data/media_tmp/audio/notifications/Highwire.ogg
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/media/notifications/ICQ.mp3:data/media_tmp/audio/notifications/ICQ.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/media/notifications/KzurbSonar.ogg:data/media_tmp/audio/notifications/KzurbSonar.ogg
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/media/notifications/Little.mp3:data/media_tmp/audio/notifications/Little.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/media/notifications/Major.mp3:data/media_tmp/audio/notifications/Major.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/media/notifications/Modern.mp3:data/media_tmp/audio/notifications/Modern.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/media/notifications/moonbeam.ogg:data/media_tmp/audio/notifications/moonbeam.ogg
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/media/notifications/One.mp3:data/media_tmp/audio/notifications/One.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/media/notifications/OnTheHunt.ogg:data/media_tmp/audio/notifications/OnTheHunt.ogg
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/media/notifications/Organ.mp3:data/media_tmp/audio/notifications/Organ.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/media/notifications/Pebbles.mp3:data/media_tmp/audio/notifications/Pebbles.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/media/notifications/Piano.mp3:data/media_tmp/audio/notifications/Piano.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/media/notifications/pixiedust.ogg:data/media_tmp/audio/notifications/pixiedust.ogg
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/media/notifications/pizzicato.ogg:data/media_tmp/audio/notifications/pizzicato.ogg
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/media/notifications/Plastic_Pipe.ogg:data/media_tmp/audio/notifications/Plastic_Pipe.ogg
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/media/notifications/Plonk.mp3:data/media_tmp/audio/notifications/Plonk.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/media/notifications/Poppy.mp3:data/media_tmp/audio/notifications/Poppy.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/media/notifications/Reflection.mp3:data/media_tmp/audio/notifications/Reflection.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/media/notifications/Ripple.mp3:data/media_tmp/audio/notifications/Ripple.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/media/notifications/Sapphire.mp3:data/media_tmp/audio/notifications/Sapphire.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/media/notifications/Simple_High.mp3:data/media_tmp/audio/notifications/Simple_High.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/media/notifications/Simple_Low.mp3:data/media_tmp/audio/notifications/Simple_Low.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/media/notifications/Simple.mp3:data/media_tmp/audio/notifications/Simple.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/media/notifications/Soft.mp3:data/media_tmp/audio/notifications/Soft.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/media/notifications/Sonar.mp3:data/media_tmp/audio/notifications/Sonar.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/media/notifications/SpaceSeed.ogg:data/media_tmp/audio/notifications/SpaceSeed.ogg
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/media/notifications/Spacious.mp3:data/media_tmp/audio/notifications/Spacious.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/media/notifications/Sparkle.mp3:data/media_tmp/audio/notifications/Sparkle.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/media/notifications/Subtle.mp3:data/media_tmp/audio/notifications/Subtle.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/media/notifications/TaDa.ogg:data/media_tmp/audio/notifications/TaDa.ogg
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/media/notifications/Teleport.mp3:data/media_tmp/audio/notifications/Teleport.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/media/notifications/Tinkerbell.ogg:data/media_tmp/audio/notifications/Tinkerbell.ogg
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/media/notifications/tweeters.ogg:data/media_tmp/audio/notifications/tweeters.ogg
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/media/notifications/Upwards.mp3:data/media_tmp/audio/notifications/Upwards.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/media/notifications/Vector.mp3:data/media_tmp/audio/notifications/Vector.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/media/notifications/Voila.ogg:data/media_tmp/audio/notifications/Voila.ogg
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/media/notifications/Weight.mp3:data/media_tmp/audio/notifications/Weight.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/media/notifications/Woodblock.mp3:data/media_tmp/audio/notifications/Woodblock.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/media/notifications/Zing.mp3:data/media_tmp/audio/notifications/Zing.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/media/ringtones/2_Step.mp3:data/media_tmp/audio/ringtones/2_Step.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/media/ringtones/Alpha.mp3:data/media_tmp/audio/ringtones/Alpha.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/media/ringtones/Ambience.mp3:data/media_tmp/audio/ringtones/Ambience.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/media/ringtones/Aqua.mp3:data/media_tmp/audio/ringtones/Aqua.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/media/ringtones/Around.mp3:data/media_tmp/audio/ringtones/Around.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/media/ringtones/Backroad.ogg:data/media_tmp/audio/ringtones/Backroad.ogg
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/media/ringtones/BeatPlucker.mp3:data/media_tmp/audio/ringtones/BeatPlucker.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/media/ringtones/BeatPlucker.ogg:data/media_tmp/audio/ringtones/BeatPlucker.ogg
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/media/ringtones/Bells.mp3:data/media_tmp/audio/ringtones/Bells.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/media/ringtones/BentleyDubs.mp3:data/media_tmp/audio/ringtones/BentleyDubs.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/media/ringtones/BentleyDubs.ogg:data/media_tmp/audio/ringtones/BentleyDubs.ogg
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/media/ringtones/Beta.mp3:data/media_tmp/audio/ringtones/Beta.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/media/ringtones/Big_Easy.ogg:data/media_tmp/audio/ringtones/Big_Easy.ogg
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/media/ringtones/BirdLoop.ogg:data/media_tmp/audio/ringtones/BirdLoop.ogg
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/media/ringtones/Blippy.mp3:data/media_tmp/audio/ringtones/Blippy.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/media/ringtones/Blues.mp3:data/media_tmp/audio/ringtones/Blues.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/media/ringtones/Bollywood.ogg:data/media_tmp/audio/ringtones/Bollywood.ogg
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/media/ringtones/Bubbly.mp3:data/media_tmp/audio/ringtones/Bubbly.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/media/ringtones/BussaMove.ogg:data/media_tmp/audio/ringtones/BussaMove.ogg
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/media/ringtones/Cairo.ogg:data/media_tmp/audio/ringtones/Cairo.ogg
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/media/ringtones/Calypso_Steel.ogg:data/media_tmp/audio/ringtones/Calypso_Steel.ogg
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/media/ringtones/CaribbeanIce.mp3:data/media_tmp/audio/ringtones/CaribbeanIce.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/media/ringtones/CaribbeanIce.ogg:data/media_tmp/audio/ringtones/CaribbeanIce.ogg
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/media/ringtones/Champagne_Edition.ogg:data/media_tmp/audio/ringtones/Champagne_Edition.ogg
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/media/ringtones/Cloudy_Cafe.mp3:data/media_tmp/audio/ringtones/Cloudy_Cafe.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/media/ringtones/Club_Cubano.ogg:data/media_tmp/audio/ringtones/Club_Cubano.ogg
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/media/ringtones/Cobblestone.mp3:data/media_tmp/audio/ringtones/Cobblestone.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/media/ringtones/CrayonRock.ogg:data/media_tmp/audio/ringtones/CrayonRock.ogg
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/media/ringtones/CrazyDream.mp3:data/media_tmp/audio/ringtones/CrazyDream.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/media/ringtones/CrazyDream.ogg:data/media_tmp/audio/ringtones/CrazyDream.ogg
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/media/ringtones/CurveBall.mp3:data/media_tmp/audio/ringtones/CurveBall.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/media/ringtones/CurveBall.ogg:data/media_tmp/audio/ringtones/CurveBall.ogg
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/media/ringtones/Curve.mp3:data/media_tmp/audio/ringtones/Curve.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/media/ringtones/DancinFool.ogg:data/media_tmp/audio/ringtones/DancinFool.ogg
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/media/ringtones/Ding.ogg:data/media_tmp/audio/ringtones/Ding.ogg
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/media/ringtones/DonMessWivIt.ogg:data/media_tmp/audio/ringtones/DonMessWivIt.ogg
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/media/ringtones/DreamTheme.mp3:data/media_tmp/audio/ringtones/DreamTheme.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/media/ringtones/DreamTheme.ogg:data/media_tmp/audio/ringtones/DreamTheme.ogg
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/media/ringtones/Eastern_Sky.ogg:data/media_tmp/audio/ringtones/Eastern_Sky.ogg
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/media/ringtones/Enter_the_Nexus.ogg:data/media_tmp/audio/ringtones/Enter_the_Nexus.ogg
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/media/ringtones/EtherShake.mp3:data/media_tmp/audio/ringtones/EtherShake.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/media/ringtones/EtherShake.ogg:data/media_tmp/audio/ringtones/EtherShake.ogg
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/media/ringtones/Explore.mp3:data/media_tmp/audio/ringtones/Explore.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/media/ringtones/Familia.mp3:data/media_tmp/audio/ringtones/Familia.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/media/ringtones/Fire_Fly.mp3:data/media_tmp/audio/ringtones/Fire_Fly.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/media/ringtones/Flamenco.mp3:data/media_tmp/audio/ringtones/Flamenco.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/media/ringtones/Fractal.mp3:data/media_tmp/audio/ringtones/Fractal.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/media/ringtones/FreeFlight.ogg:data/media_tmp/audio/ringtones/FreeFlight.ogg
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/media/ringtones/Friday.mp3:data/media_tmp/audio/ringtones/Friday.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/media/ringtones/FriendlyGhost.mp3:data/media_tmp/audio/ringtones/FriendlyGhost.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/media/ringtones/FriendlyGhost.ogg:data/media_tmp/audio/ringtones/FriendlyGhost.ogg
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/media/ringtones/Funk.mp3:data/media_tmp/audio/ringtones/Funk.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/media/ringtones/Funk_Yall.ogg:data/media_tmp/audio/ringtones/Funk_Yall.ogg
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/media/ringtones/Funky.mp3:data/media_tmp/audio/ringtones/Funky.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/media/ringtones/GameOverGuitar.mp3:data/media_tmp/audio/ringtones/GameOverGuitar.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/media/ringtones/GameOverGuitar.ogg:data/media_tmp/audio/ringtones/GameOverGuitar.ogg
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/media/ringtones/Gimlet.mp3:data/media_tmp/audio/ringtones/Gimlet.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/media/ringtones/Gimme_Mo_Town.ogg:data/media_tmp/audio/ringtones/Gimme_Mo_Town.ogg
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/media/ringtones/Glacial_Groove.ogg:data/media_tmp/audio/ringtones/Glacial_Groove.ogg
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/media/ringtones/Glass.mp3:data/media_tmp/audio/ringtones/Glass.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/media/ringtones/Glassy.mp3:data/media_tmp/audio/ringtones/Glassy.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/media/ringtones/Growl.mp3:data/media_tmp/audio/ringtones/Growl.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/media/ringtones/Growl.ogg:data/media_tmp/audio/ringtones/Growl.ogg
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/media/ringtones/Guitaro.mp3:data/media_tmp/audio/ringtones/Guitaro.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/media/ringtones/HalfwayHome.ogg:data/media_tmp/audio/ringtones/HalfwayHome.ogg
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/media/ringtones/Happy.mp3:data/media_tmp/audio/ringtones/Happy.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/media/ringtones/Heavy.mp3:data/media_tmp/audio/ringtones/Heavy.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/media/ringtones/Hectic.mp3:data/media_tmp/audio/ringtones/Hectic.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/media/ringtones/Highway.mp3:data/media_tmp/audio/ringtones/Highway.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/media/ringtones/Innovation.mp3:data/media_tmp/audio/ringtones/Innovation.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/media/ringtones/InsertCoin.mp3:data/media_tmp/audio/ringtones/InsertCoin.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/media/ringtones/InsertCoin.ogg:data/media_tmp/audio/ringtones/InsertCoin.ogg
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/media/ringtones/Jack.mp3:data/media_tmp/audio/ringtones/Jack.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/media/ringtones/K.O..mp3:data/media_tmp/audio/ringtones/K.O..mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/media/ringtones/Liquify.mp3:data/media_tmp/audio/ringtones/Liquify.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/media/ringtones/LoopyLounge.mp3:data/media_tmp/audio/ringtones/LoopyLounge.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/media/ringtones/LoopyLounge.ogg:data/media_tmp/audio/ringtones/LoopyLounge.ogg
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/media/ringtones/LosAngeles2019.ogg:data/media_tmp/audio/ringtones/LosAngeles2019.ogg
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/media/ringtones/Lounge.mp3:data/media_tmp/audio/ringtones/Lounge.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/media/ringtones/LoveFlute.mp3:data/media_tmp/audio/ringtones/LoveFlute.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/media/ringtones/LoveFlute.ogg:data/media_tmp/audio/ringtones/LoveFlute.ogg
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/media/ringtones/MidEvilJaunt.mp3:data/media_tmp/audio/ringtones/MidEvilJaunt.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/media/ringtones/MidEvilJaunt.ogg:data/media_tmp/audio/ringtones/MidEvilJaunt.ogg
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/media/ringtones/MildlyAlarming.mp3:data/media_tmp/audio/ringtones/MildlyAlarming.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/media/ringtones/MildlyAlarming.ogg:data/media_tmp/audio/ringtones/MildlyAlarming.ogg
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/media/ringtones/Moto.ogg:data/media_tmp/audio/ringtones/Moto.ogg
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/media/ringtones/Nairobi.ogg:data/media_tmp/audio/ringtones/Nairobi.ogg
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/media/ringtones/Nassau.ogg:data/media_tmp/audio/ringtones/Nassau.ogg
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/media/ringtones/NewPlayer.mp3:data/media_tmp/audio/ringtones/NewPlayer.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/media/ringtones/NewPlayer.ogg:data/media_tmp/audio/ringtones/NewPlayer.ogg
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/media/ringtones/Noises1.mp3:data/media_tmp/audio/ringtones/Noises1.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/media/ringtones/Noises1.ogg:data/media_tmp/audio/ringtones/Noises1.ogg
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/media/ringtones/Noises2.mp3:data/media_tmp/audio/ringtones/Noises2.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/media/ringtones/Noises2.ogg:data/media_tmp/audio/ringtones/Noises2.ogg
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/media/ringtones/Noises3.mp3:data/media_tmp/audio/ringtones/Noises3.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/media/ringtones/Noises3.ogg:data/media_tmp/audio/ringtones/Noises3.ogg
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/media/ringtones/No_Limits.ogg:data/media_tmp/audio/ringtones/No_Limits.ogg
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/media/ringtones/Octavate.mp3:data/media_tmp/audio/ringtones/Octavate.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/media/ringtones/Old_Phone.mp3:data/media_tmp/audio/ringtones/Old_Phone.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/media/ringtones/Orbit.mp3:data/media_tmp/audio/ringtones/Orbit.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/media/ringtones/OrganDub.mp3:data/media_tmp/audio/ringtones/OrganDub.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/media/ringtones/OrganDub.ogg:data/media_tmp/audio/ringtones/OrganDub.ogg
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/media/ringtones/Pads.mp3:data/media_tmp/audio/ringtones/Pads.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/media/ringtones/Paradise_Island.ogg:data/media_tmp/audio/ringtones/Paradise_Island.ogg
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/media/ringtones/Pentatonic.mp3:data/media_tmp/audio/ringtones/Pentatonic.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/media/ringtones/Picking.mp3:data/media_tmp/audio/ringtones/Picking.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/media/ringtones/Playa.ogg:data/media_tmp/audio/ringtones/Playa.ogg
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/media/ringtones/Potluck.mp3:data/media_tmp/audio/ringtones/Potluck.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/media/ringtones/Radiation.ogg:data/media_tmp/audio/ringtones/Radiation.ogg
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/media/ringtones/Red_Beats.ogg:data/media_tmp/audio/ringtones/Red_Beats.ogg
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/media/ringtones/Red_Tea.mp3:data/media_tmp/audio/ringtones/Red_Tea.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/media/ringtones/Reflect.mp3:data/media_tmp/audio/ringtones/Reflect.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/media/ringtones/Reset.mp3:data/media_tmp/audio/ringtones/Reset.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/media/ringtones/Revelation.ogg:data/media_tmp/audio/ringtones/Revelation.ogg
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/media/ringtones/Rhino.mp3:data/media_tmp/audio/ringtones/Rhino.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/media/ringtones/Riffing.mp3:data/media_tmp/audio/ringtones/Riffing.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/media/ringtones/Ring_Classic_02.mp3:data/media_tmp/audio/ringtones/Ring_Classic_02.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/media/ringtones/Ring_Classic_02.ogg:data/media_tmp/audio/ringtones/Ring_Classic_02.ogg
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/media/ringtones/Ring_Digital_02.mp3:data/media_tmp/audio/ringtones/Ring_Digital_02.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/media/ringtones/Ring_Digital_02.ogg:data/media_tmp/audio/ringtones/Ring_Digital_02.ogg
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/media/ringtones/Ring_Synth_02.mp3:data/media_tmp/audio/ringtones/Ring_Synth_02.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/media/ringtones/Ring_Synth_02.ogg:data/media_tmp/audio/ringtones/Ring_Synth_02.ogg
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/media/ringtones/Ring_Synth_04.mp3:data/media_tmp/audio/ringtones/Ring_Synth_04.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/media/ringtones/Ring_Synth_04.ogg:data/media_tmp/audio/ringtones/Ring_Synth_04.ogg
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/media/ringtones/Road_Trip.ogg:data/media_tmp/audio/ringtones/Road_Trip.ogg
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/media/ringtones/RomancingTheTone.mp3:data/media_tmp/audio/ringtones/RomancingTheTone.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/media/ringtones/RomancingTheTone.ogg:data/media_tmp/audio/ringtones/RomancingTheTone.ogg
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/media/ringtones/Safari.ogg:data/media_tmp/audio/ringtones/Safari.ogg
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/media/ringtones/Sapphire.mp3:data/media_tmp/audio/ringtones/Sapphire.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/media/ringtones/Savannah.ogg:data/media_tmp/audio/ringtones/Savannah.ogg
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/media/ringtones/Seville.ogg:data/media_tmp/audio/ringtones/Seville.ogg
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/media/ringtones/Shes_All_That.ogg:data/media_tmp/audio/ringtones/Shes_All_That.ogg
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/media/ringtones/Shocking.mp3:data/media_tmp/audio/ringtones/Shocking.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/media/ringtones/SilkyWay.ogg:data/media_tmp/audio/ringtones/SilkyWay.ogg
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/media/ringtones/SitarVsSitar.mp3:data/media_tmp/audio/ringtones/SitarVsSitar.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/media/ringtones/SitarVsSitar.ogg:data/media_tmp/audio/ringtones/SitarVsSitar.ogg
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/media/ringtones/Solaris.mp3:data/media_tmp/audio/ringtones/Solaris.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/media/ringtones/Speak_Easy.mp3:data/media_tmp/audio/ringtones/Speak_Easy.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/media/ringtones/SpringyJalopy.mp3:data/media_tmp/audio/ringtones/SpringyJalopy.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/media/ringtones/SpringyJalopy.ogg:data/media_tmp/audio/ringtones/SpringyJalopy.ogg
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/media/ringtones/Standard_1.mp3:data/media_tmp/audio/ringtones/Standard_1.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/media/ringtones/Standard_2.mp3:data/media_tmp/audio/ringtones/Standard_2.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/media/ringtones/Standard_3.mp3:data/media_tmp/audio/ringtones/Standard_3.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/media/ringtones/Standard_4.mp3:data/media_tmp/audio/ringtones/Standard_4.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/media/ringtones/Steppin_Out.ogg:data/media_tmp/audio/ringtones/Steppin_Out.ogg
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/media/ringtones/Terminated.mp3:data/media_tmp/audio/ringtones/Terminated.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/media/ringtones/Terminated.ogg:data/media_tmp/audio/ringtones/Terminated.ogg
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/media/ringtones/Third_Eye.ogg:data/media_tmp/audio/ringtones/Third_Eye.ogg
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/media/ringtones/Thunderfoot.ogg:data/media_tmp/audio/ringtones/Thunderfoot.ogg
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/media/ringtones/Ticker_1.mp3:data/media_tmp/audio/ringtones/Ticker_1.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/media/ringtones/Ticker_2.mp3:data/media_tmp/audio/ringtones/Ticker_2.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/media/ringtones/T-Jingle.mp3:data/media_tmp/audio/ringtones/T-Jingle.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/media/ringtones/Transmission.ogg:data/media_tmp/audio/ringtones/Transmission.ogg
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/media/ringtones/Travels.mp3:data/media_tmp/audio/ringtones/Travels.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/media/ringtones/Trinket.mp3:data/media_tmp/audio/ringtones/Trinket.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/media/ringtones/TwirlAway.mp3:data/media_tmp/audio/ringtones/TwirlAway.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/media/ringtones/TwirlAway.ogg:data/media_tmp/audio/ringtones/TwirlAway.ogg
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/media/ringtones/VeryAlarmed.mp3:data/media_tmp/audio/ringtones/VeryAlarmed.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/media/ringtones/VeryAlarmed.ogg:data/media_tmp/audio/ringtones/VeryAlarmed.ogg
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/media/ringtones/Vid_Kid.mp3:data/media_tmp/audio/ringtones/Vid_Kid.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/media/ringtones/Voxy.mp3:data/media_tmp/audio/ringtones/Voxy.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/media/ringtones/Whistler.mp3:data/media_tmp/audio/ringtones/Whistler.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/media/ringtones/Windchimer.mp3:data/media_tmp/audio/ringtones/Windchimer.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/media/ringtones/World.mp3:data/media_tmp/audio/ringtones/World.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/media/ringtones/World.ogg:data/media_tmp/audio/ringtones/World.ogg
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/media/ui/camera_click.ogg:data/media_tmp/audio/ui/camera_click.ogg
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/media/ui/Effect_Tick.ogg:data/media_tmp/audio/ui/Effect_Tick.ogg
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/media/ui/KeypressDelete.ogg:data/media_tmp/audio/ui/KeypressDelete.ogg
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/media/ui/KeypressReturn.ogg:data/media_tmp/audio/ui/KeypressReturn.ogg
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/media/ui/KeypressSpacebar.ogg:data/media_tmp/audio/ui/KeypressSpacebar.ogg
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/media/ui/KeypressStandard.ogg:data/media_tmp/audio/ui/KeypressStandard.ogg
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/dream-sapphire/media/ui/VideoRecord.ogg:data/media_tmp/audio/ui/VideoRecord.ogg

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
