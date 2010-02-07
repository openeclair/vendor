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
#$(call inherit-product, vendor/aosp/products/aosp_sapphire_us.mk)

USE_CAMERA_STUB := false

# Build WebKit with V8
JS_ENGINE=v8

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
	Gallery3D \
	android.software.live_wallpaper.xml \
	LiveWallpapersPicker \
	MagicSmokeWallpapers \
	VisualizationWallpapers

PRODUCT_PACKAGE_OVERLAYS := vendor/openeclair/overlay

PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/build.prop:system/build.prop \
						vendor/openeclair/prebuilt/build.sapphire.prop:system/build.sapphire.prop \
						vendor/openeclair/prebuilt/build.trout.prop:system/build.trout.prop \
						vendor/openeclair/prebuilt/bin/appfix:system/bin/appfix \
						vendor/openeclair/prebuilt/bin/clearcache:system/bin/clearcache \
						vendor/openeclair/prebuilt/bin/memctl:system/bin/memctl \
						vendor/openeclair/prebuilt/bin/firstboot:system/bin/firstboot \
						vendor/openeclair/prebuilt/bin/fix_permissions:system/bin/fix_permissions \
						vendor/openeclair/prebuilt/bin/rosystem:system/bin/rosystem \
						vendor/openeclair/prebuilt/bin/rwsystem:system/bin/rwsystem \
						vendor/openeclair/prebuilt/bin/shutdown:system/bin/shutdown \
						vendor/openeclair/prebuilt/bin/usb-tether:system/bin/usb-tether \
						vendor/cyanogen/prebuilt/etc/apns-conf.xml:system/etc/apns-conf.xml \
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
    zh_TW \
