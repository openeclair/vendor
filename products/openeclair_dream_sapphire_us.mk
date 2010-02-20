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
ADDITIONAL_BUILD_PROPERTIES += ro.modversion=OpenEclair-v1.2.2-B4
ADDITIONAL_DEFAULT_PROPERTIES += persist.service.memctl_state=1
ADDITIONAL_DEFAULT_PROPERTIES += persist.service.memctl_size=16384

USE_CAMERA_STUB := false

-WITH_JIT := true

# Build WebKit with V8
JS_ENGINE=V8
#JS_ENGINE=jsc

# Pick up some sounds
include frameworks/base/data/sounds/AudioPackage4.mk

# Used by BusyBox
KERNEL_MODULES_DIR:=/system/lib/modules

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
	Launcher2 \
	libRS \
	librs_jni 

PRODUCT_PACKAGE_OVERLAYS := vendor/openeclair/overlay

# APKs
PRODUCT_COPY_FILES += vendor/openeclair/proprietary/Vending.apk:data/app_s_tmp/Vending.apk
PRODUCT_COPY_FILES += vendor/openeclair/proprietary/wireless_tether_2_0-pre3_eclair.apk:data/app/wireless_tether_2_0-pre3_eclair.apk
PRODUCT_COPY_FILES += vendor/openeclair/proprietary/VoiceSearchWithKeyboard.apk:data/app_s_tmp/VoiceSearchWithKeyboard.apk
PRODUCT_COPY_FILES += vendor/openeclair/proprietary/Maps.apk:data/app_s_tmp/Maps.apk
PRODUCT_COPY_FILES += vendor/openeclair/proprietary/Street.apk:system/app/Street.apk
PRODUCT_COPY_FILES += vendor/openeclair/proprietary/YouTube.apk:data/app_s_tmp/YouTube.apk
PRODUCT_COPY_FILES += vendor/openeclair/proprietary/GenieWidget.apk:data/app_s/GenieWidget.apk
PRODUCT_COPY_FILES += vendor/openeclair/proprietary/Facebook.apk:system/app/Facebook.apk
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
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/lib/libext2fs.so:system/lib/libext2fs.so
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/lib/egl:system/lib/egl 
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/lib/egl/egl.cfg:system/lib/egl/egl.cfg 
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/lib/egl/libGLES_qcom.so:system/lib/egl/libGLES_qcom.so 


# Permission and Framework
PRODUCT_COPY_FILES += vendor/openeclair/proprietary/com.google.android.gtalkservice.jar:system/framework/com.google.android.gtalkservice.jar
PRODUCT_COPY_FILES += vendor/openeclair/proprietary/com.google.android.maps.jar:system/framework/com.google.android.maps.jar
PRODUCT_COPY_FILES += vendor/openeclair/proprietary/com.google.android.datamessaging.xml:system/etc/permissions/com.google.android.datamessaging.xml
PRODUCT_COPY_FILES += vendor/openeclair/proprietary/com.google.android.gtalkservice.xml:system/etc/permissions/com.google.android.gtalkservice.xml 
PRODUCT_COPY_FILES += vendor/openeclair/proprietary/com.google.android.maps.xml:system/etc/permissions/com.google.android.maps.xml 
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/etc/permissions/android.hardware.camera.autofocus.xml:system/etc/permissions/android.hardware.camera.autofocus.xml 
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/etc/permissions/android.hardware.touchscreen.multitouch.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.xml 

# Custom build props
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/build.sapphire.prop:system/build.sapphire.prop
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/build.trout.prop:system/build.trout.prop 
PRODUCT_COPY_FILES += vendor/openeclair/root/init.trout.rc:$(TARGET_ROOT_OUT)/root/init.trout.rc 
PRODUCT_COPY_FILES += vendor/openeclair/root/init.sapphire.rc:$(TARGET_ROOT_OUT)/root/init.sapphire.rc

# Compcache
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/compcache/ramzswap.ko:system/modules/lib/modules/2.6.29.6-wg/compcache/ramzswap.ko
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/compcache/rzscontrol:system/bin/rzscontrol
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/bin/memctl:system/bin/memctl 

# Wireless Driver
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/wlan.ko:system/lib/modules/wlan.ko

# Placeholders
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/blank:system/sd/placeholder
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/blank:system/xbin/bb/placeholder

# Scripts and Binaries
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/bin/appfix:system/xbin/appfix
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/bin/e2fsck:system/xbin/e2fsck 
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/bin/firstboot:system/bin/firstboot 
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/bin/fix_permissions:system/bin/fix_permissions 
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/bin/rosystem:system/bin/rosystem 
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/bin/rwsystem:system/bin/rwsystem 
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/bin/shutdown:system/bin/shutdown 
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/bin/usb-tether:system/bin/usb-tether 

# /system/etc files
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/etc/apns-conf.xml:system/etc/apns-conf.xml 
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/etc/dnsmasq.conf:system/etc/dnsmasq.conf 
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/etc/fstab:system/etc/fstab 
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/etc/sysctl.conf:system/etc/sysctl.conf 
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/etc/AudioPara4-trout.csv:system/etc/AudioPara4-trout.csv 
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/etc/AudioPara4-sapphire.csv:system/etc/AudioPara4-sapphire.csv

# Boot init.d Files
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/etc/init.d/00banner:system/etc/init.d/00banner 
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/etc/init.d/01sysctl:system/etc/init.d/01sysctl 
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/etc/init.d/02setupext:system/etc/init.d/02setupext 
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/etc/init.d/03firstboot:system/etc/init.d/03firstboot 
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/etc/init.d/04apps2sd:system/etc/init.d/04apps2sd 
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/etc/init.d/05userinit:system/etc/init.d/05userinit 
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/etc/init.d/99complete:system/etc/init.d/99complete 

# Extra Audio Notifications and Ringtones
include frameworks/base/data/sounds/AudioPackage4.mk
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/media/audio/notifications/Alpha.mp3:system/media/audio/notifications/Alpha.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/media/audio/notifications/Ascend.mp3:system/media/audio/notifications/Ascend.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/media/audio/notifications/Bubble.mp3:system/media/audio/notifications/Bubble.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/media/audio/notifications/Chiff.mp3:system/media/audio/notifications/Chiff.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/media/audio/notifications/Color.mp3:system/media/audio/notifications/Color.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/media/audio/notifications/Confirm.mp3:system/media/audio/notifications/Confirm.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/media/audio/notifications/Dream.mp3:system/media/audio/notifications/Dream.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/media/audio/notifications/Dribble.mp3:system/media/audio/notifications/Dribble.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/media/audio/notifications/F1_New_SMS.ogg:system/media/audio/notifications/F1_New_SMS.ogg
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/media/audio/notifications/Freeze.mp3:system/media/audio/notifications/Freeze.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/media/audio/notifications/Friendly.mp3:system/media/audio/notifications/Friendly.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/media/audio/notifications/Guitar_1.mp3:system/media/audio/notifications/Guitar_1.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/media/audio/notifications/Guitar_2.mp3:system/media/audio/notifications/Guitar_2.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/media/audio/notifications/ICQ.mp3:system/media/audio/notifications/ICQ.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/media/audio/notifications/Little.mp3:system/media/audio/notifications/Little.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/media/audio/notifications/Major.mp3:system/media/audio/notifications/Major.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/media/audio/notifications/Modern.mp3:system/media/audio/notifications/Modern.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/media/audio/notifications/moonbeam.ogg:system/media/audio/notifications/moonbeam.ogg
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/media/audio/notifications/Pebbles.mp3:system/media/audio/notifications/Pebbles.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/media/audio/notifications/pizzicato.ogg:system/media/audio/notifications/pizzicato.ogg
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/media/audio/notifications/Ripple.mp3:system/media/audio/notifications/Ripple.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/media/audio/notifications/Simple_High.mp3:system/media/audio/notifications/Simple_High.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/media/audio/notifications/Simple_Low.mp3:system/media/audio/notifications/Simple_Low.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/media/audio/notifications/Soft.mp3:system/media/audio/notifications/Soft.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/media/audio/notifications/SpaceSeed.ogg:system/media/audio/notifications/SpaceSeed.ogg
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/media/audio/notifications/Spacious.mp3:system/media/audio/notifications/Spacious.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/media/audio/notifications/Subtle.mp3:system/media/audio/notifications/Subtle.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/media/audio/notifications/Teleport.mp3:system/media/audio/notifications/Teleport.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/media/audio/notifications/tweeters.ogg:system/media/audio/notifications/tweeters.ogg
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/media/audio/notifications/Vector.mp3:system/media/audio/notifications/Vector.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/media/audio/notifications/Weight.mp3:system/media/audio/notifications/Weight.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/media/audio/notifications/Woodblock.mp3:system/media/audio/notifications/Woodblock.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/media/audio/notifications/Zing.mp3:system/media/audio/notifications/Zing.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/media/audio/ringtones/2_Step.mp3:system/media/audio/ringtones/2_Step.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/media/audio/ringtones/Alpha.mp3:system/media/audio/ringtones/Alpha.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/media/audio/ringtones/Aqua.mp3:system/media/audio/ringtones/Aqua.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/media/audio/ringtones/Around.mp3:system/media/audio/ringtones/Around.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/media/audio/ringtones/Backroad.ogg:system/media/audio/ringtones/Backroad.ogg
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/media/audio/ringtones/BeatPlucker.mp3:system/media/audio/ringtones/BeatPlucker.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/media/audio/ringtones/BentleyDubs.mp3:system/media/audio/ringtones/BentleyDubs.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/media/audio/ringtones/Big_Easy.ogg:system/media/audio/ringtones/Big_Easy.ogg
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/media/audio/ringtones/BirdLoop.ogg:system/media/audio/ringtones/BirdLoop.ogg
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/media/audio/ringtones/Blippy.mp3:system/media/audio/ringtones/Blippy.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/media/audio/ringtones/Bollywood.ogg:system/media/audio/ringtones/Bollywood.ogg
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/media/audio/ringtones/BussaMove.ogg:system/media/audio/ringtones/BussaMove.ogg
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/media/audio/ringtones/Cairo.ogg:system/media/audio/ringtones/Cairo.ogg
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/media/audio/ringtones/Calypso_Steel.ogg:system/media/audio/ringtones/Calypso_Steel.ogg
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/media/audio/ringtones/CaribbeanIce.mp3:system/media/audio/ringtones/CaribbeanIce.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/media/audio/ringtones/Champagne_Edition.ogg:system/media/audio/ringtones/Champagne_Edition.ogg
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/media/audio/ringtones/Club_Cubano.ogg:system/media/audio/ringtones/Club_Cubano.ogg
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/media/audio/ringtones/Cobblestone.mp3:system/media/audio/ringtones/Cobblestone.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/media/audio/ringtones/CrayonRock.ogg:system/media/audio/ringtones/CrayonRock.ogg
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/media/audio/ringtones/CrazyDream.mp3:system/media/audio/ringtones/CrazyDream.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/media/audio/ringtones/CurveBall.mp3:system/media/audio/ringtones/CurveBall.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/media/audio/ringtones/Curve.mp3:system/media/audio/ringtones/Curve.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/media/audio/ringtones/DancinFool.ogg:system/media/audio/ringtones/DancinFool.ogg
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/media/audio/ringtones/Ding.ogg:system/media/audio/ringtones/Ding.ogg
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/media/audio/ringtones/DonMessWivIt.ogg:system/media/audio/ringtones/DonMessWivIt.ogg
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/media/audio/ringtones/DreamTheme.mp3:system/media/audio/ringtones/DreamTheme.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/media/audio/ringtones/DreamTheme.ogg:system/media/audio/ringtones/DreamTheme.ogg
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/media/audio/ringtones/Eastern_Sky.ogg:system/media/audio/ringtones/Eastern_Sky.ogg
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/media/audio/ringtones/Enter_the_Nexus.ogg:system/media/audio/ringtones/Enter_the_Nexus.ogg
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/media/audio/ringtones/EtherShake.mp3:system/media/audio/ringtones/EtherShake.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/media/audio/ringtones/Fire_Fly.mp3:system/media/audio/ringtones/Fire_Fly.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/media/audio/ringtones/Friday.mp3:system/media/audio/ringtones/Friday.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/media/audio/ringtones/FriendlyGhost.mp3:system/media/audio/ringtones/FriendlyGhost.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/media/audio/ringtones/Funk.mp3:system/media/audio/ringtones/Funk.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/media/audio/ringtones/Funk_Yall.ogg:system/media/audio/ringtones/Funk_Yall.ogg
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/media/audio/ringtones/GameOverGuitar.mp3:system/media/audio/ringtones/GameOverGuitar.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/media/audio/ringtones/Gimme_Mo_Town.ogg:system/media/audio/ringtones/Gimme_Mo_Town.ogg
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/media/audio/ringtones/Glacial_Groove.ogg:system/media/audio/ringtones/Glacial_Groove.ogg
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/media/audio/ringtones/Glass.mp3:system/media/audio/ringtones/Glass.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/media/audio/ringtones/Growl.mp3:system/media/audio/ringtones/Growl.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/media/audio/ringtones/HalfwayHome.ogg:system/media/audio/ringtones/HalfwayHome.ogg
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/media/audio/ringtones/Happy.mp3:system/media/audio/ringtones/Happy.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/media/audio/ringtones/Heavy.mp3:system/media/audio/ringtones/Heavy.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/media/audio/ringtones/Innovation.mp3:system/media/audio/ringtones/Innovation.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/media/audio/ringtones/InsertCoin.mp3:system/media/audio/ringtones/InsertCoin.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/media/audio/ringtones/Jack.mp3:system/media/audio/ringtones/Jack.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/media/audio/ringtones/K.O..mp3:system/media/audio/ringtones/K.O..mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/media/audio/ringtones/LoopyLounge.mp3:system/media/audio/ringtones/LoopyLounge.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/media/audio/ringtones/LosAngeles2019.ogg:system/media/audio/ringtones/LosAngeles2019.ogg
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/media/audio/ringtones/LoveFlute.mp3:system/media/audio/ringtones/LoveFlute.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/media/audio/ringtones/MidEvilJaunt.mp3:system/media/audio/ringtones/MidEvilJaunt.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/media/audio/ringtones/MildlyAlarming.mp3:system/media/audio/ringtones/MildlyAlarming.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/media/audio/ringtones/Nairobi.ogg:system/media/audio/ringtones/Nairobi.ogg
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/media/audio/ringtones/Nassau.ogg:system/media/audio/ringtones/Nassau.ogg
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/media/audio/ringtones/NewPlayer.mp3:system/media/audio/ringtones/NewPlayer.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/media/audio/ringtones/Noises1.mp3:system/media/audio/ringtones/Noises1.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/media/audio/ringtones/Noises2.mp3:system/media/audio/ringtones/Noises2.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/media/audio/ringtones/Noises3.mp3:system/media/audio/ringtones/Noises3.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/media/audio/ringtones/No_Limits.ogg:system/media/audio/ringtones/No_Limits.ogg
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/media/audio/ringtones/Old_Phone.mp3:system/media/audio/ringtones/Old_Phone.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/media/audio/ringtones/OrganDub.mp3:system/media/audio/ringtones/OrganDub.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/media/audio/ringtones/Paradise_Island.ogg:system/media/audio/ringtones/Paradise_Island.ogg
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/media/audio/ringtones/Playa.ogg:system/media/audio/ringtones/Playa.ogg
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/media/audio/ringtones/Potluck.mp3:system/media/audio/ringtones/Potluck.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/media/audio/ringtones/Radiation.ogg:system/media/audio/ringtones/Radiation.ogg
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/media/audio/ringtones/Red_Tea.mp3:system/media/audio/ringtones/Red_Tea.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/media/audio/ringtones/Reset.mp3:system/media/audio/ringtones/Reset.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/media/audio/ringtones/Rhino.mp3:system/media/audio/ringtones/Rhino.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/media/audio/ringtones/Riffing.mp3:system/media/audio/ringtones/Riffing.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/media/audio/ringtones/Ring_Classic_02.mp3:system/media/audio/ringtones/Ring_Classic_02.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/media/audio/ringtones/Ring_Digital_02.mp3:system/media/audio/ringtones/Ring_Digital_02.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/media/audio/ringtones/Ring_Synth_02.mp3:system/media/audio/ringtones/Ring_Synth_02.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/media/audio/ringtones/Ring_Synth_04.mp3:system/media/audio/ringtones/Ring_Synth_04.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/media/audio/ringtones/Road_Trip.ogg:system/media/audio/ringtones/Road_Trip.ogg
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/media/audio/ringtones/RomancingTheTone.mp3:system/media/audio/ringtones/RomancingTheTone.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/media/audio/ringtones/Safari.ogg:system/media/audio/ringtones/Safari.ogg
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/media/audio/ringtones/Sapphire.mp3:system/media/audio/ringtones/Sapphire.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/media/audio/ringtones/Seville.ogg:system/media/audio/ringtones/Seville.ogg
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/media/audio/ringtones/Shes_All_That.ogg:system/media/audio/ringtones/Shes_All_That.ogg
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/media/audio/ringtones/Shocking.mp3:system/media/audio/ringtones/Shocking.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/media/audio/ringtones/SilkyWay.ogg:system/media/audio/ringtones/SilkyWay.ogg
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/media/audio/ringtones/SitarVsSitar.mp3:system/media/audio/ringtones/SitarVsSitar.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/media/audio/ringtones/Solaris.mp3:system/media/audio/ringtones/Solaris.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/media/audio/ringtones/SpringyJalopy.mp3:system/media/audio/ringtones/SpringyJalopy.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/media/audio/ringtones/Standard_1.mp3:system/media/audio/ringtones/Standard_1.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/media/audio/ringtones/Standard_2.mp3:system/media/audio/ringtones/Standard_2.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/media/audio/ringtones/Standard_3.mp3:system/media/audio/ringtones/Standard_3.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/media/audio/ringtones/Standard_4.mp3:system/media/audio/ringtones/Standard_4.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/media/audio/ringtones/Steppin_Out.ogg:system/media/audio/ringtones/Steppin_Out.ogg
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/media/audio/ringtones/Terminated.mp3:system/media/audio/ringtones/Terminated.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/media/audio/ringtones/Third_Eye.ogg:system/media/audio/ringtones/Third_Eye.ogg
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/media/audio/ringtones/T-Jingle.mp3:system/media/audio/ringtones/T-Jingle.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/media/audio/ringtones/TwirlAway.mp3:system/media/audio/ringtones/TwirlAway.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/media/audio/ringtones/VeryAlarmed.mp3:system/media/audio/ringtones/VeryAlarmed.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/media/audio/ringtones/Whistler.mp3:system/media/audio/ringtones/Whistler.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/media/audio/ringtones/Windchimer.mp3:system/media/audio/ringtones/Windchimer.mp3
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/media/audio/ringtones/World.mp3:system/media/audio/ringtones/World.mp3

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
