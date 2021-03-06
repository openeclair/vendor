TARGET_OTA_SCRIPT_MODE = amend

# build/target/product.core.mk
PRODUCT_POLICY := android.policy_phone

PRODUCT_PACKAGES += \
    framework-res \
    Browser \
    Contacts \
    Launcher \
    HTMLViewer \
    Phone \
    ApplicationsProvider \
    ContactsProvider \
    DownloadProvider \
    MediaProvider \
    PicoTts \
    SettingsProvider \
    TelephonyProvider \
    TtsService \
    VpnServices \
    UserDictionaryProvider \
    PackageInstaller \
    Bugreport

# end core.mk

# build/target/product/generic.mk
PRODUCT_PACKAGES += \
    AccountAndSyncSettings \
    AlarmClock \
    AlarmProvider \
    Bluetooth \
    Calculator \
    Calendar \
    Camera \
    CertInstaller \
    DrmProvider \
    Email \
    Gallery \
    Mms \
    Music \
    Settings \
    Sync \
    Updater \
    CalendarProvider \
    SyncProvider
# end generic.mk

PRODUCT_NAME := openeclair_mdpi
PRODUCT_BRAND := openeclair
PRODUCT_DEVICE := generic

USE_CAMERA_STUB := false

PRODUCT_PACKAGES += \
    DeskClock \
    DownloadProvider \
    IM \
    ImProvider \
    Gallery3D \
    GoogleContactsProvider \
    GoogleSearch \
    GlobalSearch \
    LatinIME \
    Launcher2 \
    Superuser \
    SoundRecorder \
    VoiceDialer \
    WiFiTether \
    libRS \
    librs_ji

# Live Wallpapers
PRODUCT_PACKAGES += \
    Basic \
    LivePicker \
    MagicSmoke \
    MusicVisualization

PRODUCT_PACKAGE_OVERLAYS := vendor/openeclair/overlay/common

# Enable animated GIF in WebKit
# Expect incredible slow-downs if used on dream/sapphire
#ENABLE_ANIMATED_GIF:=true

# Build WebKit with V8
#JS_ENGINE=v8

# Used by BusyBox
KERNEL_MODULES_DIR:=/system/lib/modules

# Tiny toolbox
TINY_TOOLBOX:=true

ifneq ($(NO_DEFAULT_SOUNDS),true)
PRODUCT_PROPERTY_OVERRIDES := \
    ro.config.notification_sound=OnTheHunt.ogg \
    ro.config.alarm_alert=Alarm_Classic.ogg
endif

TARGET_OTA_BACKUPTOOL=False

PRODUCT_COPY_FILES += \
    vendor/openeclair/prebuilt/common/xbin/openvpn-up.sh:system/xbin/openvpn-up.sh \
    vendor/openeclair/prebuilt/common/etc/apns-conf.xml:system/etc/apns-conf.xml \
    vendor/openeclair/prebuilt/common/etc/e2fsck.conf:system/etc/e2fsck.conf \
    vendor/openeclair/prebuilt/common/etc/permissions/android.hardware.touchscreen.multitouch.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.xml \
    vendor/openeclair/prebuilt/common/etc/permissions/android.hardware.camera.autofocus.xml:system/etc/android.hardware.camera.autofocus.xml \
    vendor/openeclair/prebuilt/common/etc/dnsmasq.conf:system/etc/dnsmasq.conf \
    vendor/openeclair/prebuilt/common/etc/terminfo/u/unknown:system/etc/terminfo/u/unknown \
    vendor/openeclair/prebuilt/common/etc/terminfo/l/linux:system/etc/terminfo/l/linux \
    vendor/openeclair/prebuilt/common/etc/init.d/03firstboot:system/etc/init.d/06firstboot \
    vendor/openeclair/prebuilt/common/etc/init.d/20userinit:system/etc/init.d/20userinit \
    vendor/openeclair/prebuilt/common/etc/init.d/00banner:system/etc/init.d/00banner \
    vendor/openeclair/prebuilt/common/etc/init.d/99complete:system/etc/init.d/99complete \
    vendor/openeclair/prebuilt/common/etc/init.d/10apps2sd:system/etc/init.d/10apps2sd \
    vendor/openeclair/prebuilt/common/etc/init.d/01sysctl:system/etc/init.d/01sysctl \
    vendor/openeclair/prebuilt/common/etc/init.d/05mountsd:system/etc/init.d/05mountsd \
    vendor/openeclair/prebuilt/common/etc/sysctl.conf:system/etc/sysctl.conf \
    vendor/openeclair/prebuilt/common/etc/gps.conf:system/etc/gps.conf \
    vendor/openeclair/prebuilt/common/bin/firstboot:system/bin/firstboot \
    vendor/openeclair/prebuilt/common/bin/rzscontrol:system/bin/rzscontrol \
    vendor/openeclair/prebuilt/common/bin/backuptool.sh:system/bin/backuptool.sh \
    vendor/openeclair/prebuilt/common/bin/appfix:system/bin/appfix \
    vendor/openeclair/prebuilt/common/bin/rwsystem:system/bin/rwsystem \
    vendor/openeclair/prebuilt/common/bin/nano:system/xbin/nano \
    vendor/openeclair/prebuilt/common/bin/shutdown:system/bin/shutdown \
    vendor/openeclair/prebuilt/common/bin/e2fsck:system/bin/e2fsck \
    vendor/openeclair/prebuilt/common/bin/autozipalign:system/bin/autozipalign \
    vendor/openeclair/prebuilt/common/bin/memctl:system/bin/memctl \
    vendor/openeclair/prebuilt/common/bin/fix_permissions:system/bin/fix_permissions \
    vendor/openeclair/prebuilt/common/bin/rosystem:system/bin/rosystem \
    vendor/openeclair/prebuilt/common/bin/arenice:system/bin/arenice \
    vendor/openeclair/prebuilt/common/lib/libncurses.so:system/lib/libncurses.so

# Boot Animation by MINUS_Stl
PRODUCT_COPY_FILES += vendor/openeclair/prebuilt/common/media/bootanimation.zip:data/media_tmp/bootanimation.zip

# Include WG-AudioPack
# Optimized set of all audio files with most converted for smaller size
include frameworks/base/data/sounds/WG-AudioPack.mk

ifneq ($(NO_DEFAULT_SOUNDS),true)
PRODUCT_PROPERTY_OVERRIDES := \
    ro.config.notification_sound=OnTheHunt.ogg \
    ro.config.alarm_alert=Alarm_Classic.ogg
endif

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
