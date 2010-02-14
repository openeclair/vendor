$(call inherit-product, build/target/product/generic.mk)

PRODUCT_NAME := openeclair_hdpi
PRODUCT_BRAND := openeclair
PRODUCT_DEVICE := generic

USE_CAMERA_STUB := false

# Let's grab the hdpi versions of apps and some extras
PRODUCT_PACKAGES += \
    DeskClock \
    DownloadProvider \
    Gallery3D \
    GlobalSearch \
    Launcher2 \
    LiveWallpapers \
    LiveWallpapersPicker \
    MagicSmokeWallpapers \
    SoundRecorder \
    VisualizationWallpapers \
    VoiceDialer \
    libRS \
    librs_jni

PRODUCT_PACKAGES += Superuser 

PRODUCT_PACKAGE_OVERLAYS := vendor/openeclair/overlay

# Build WebKit with V8
JS_ENGINE=v8

# Used by BusyBox
KERNEL_MODULES_DIR:=/system/lib/modules

# Pick up some sounds
include frameworks/base/data/sounds/AudioPackage4.mk

PRODUCT_COPY_FILES += \
    vendor/openeclair/prebuilt/common/etc/apns-conf.xml:system/etc/apns-conf.xml \
    vendor/openeclair/prebuilt/common/etc/dnsmasq.conf:system/etc/dnsmasq.conf \
    vendor/openeclair/prebuilt/common/etc/fstab:system/etc/fstab \
    vendor/openeclair/prebuilt/common/etc/sysctl.conf:system/etc/sysctl.conf \
    vendor/openeclair/prebuilt/common/etc/init.d/00banner:system/etc/init.d/00banner \
    vendor/openeclair/prebuilt/common/etc/init.d/01sysctl:system/etc/init.d/01sysctl \
    vendor/openeclair/prebuilt/common/etc/init.d/03firstboot:system/etc/init.d/03firstboot \
    vendor/openeclair/prebuilt/common/etc/init.d/05userinit:system/etc/init.d/05userinit \
    vendor/openeclair/prebuilt/common/etc/init.d/99complete:system/etc/init.d/99complete \
    vendor/openeclair/prebuilt/common/bin/fix_permissions:system/bin/fix_permissions \
    vendor/openeclair/prebuilt/common/bin/usb-tether:system/bin/usb-tether \
    vendor/openeclair/prebuilt/common/bin/shutdown:system/bin/shutdown \
    vendor/openeclair/prebuilt/common/bin/compcache:system/bin/compcache


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
    hdpi
