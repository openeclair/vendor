$(call inherit-product, vendor/openeclair/products/openeclair_mdpi.mk)

PRODUCT_NAME := openeclair_dream_sapphire
PRODUCT_BRAND := htc
PRODUCT_DEVICE := dream_sapphire
PRODUCT_MODEL := T-Mobile myTouch 3G
PRODUCT_MANUFACTURER := HTC
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_ID=EPE54B BUILD_DISPLAY_ID=EPE54B BUILD_FINGERPRINT=google/passion/passion/mahimahi:2.1-update1/ERE27/24178:user/release-keys PRIVATE_BUILD_DESC="passion-user 2.1-update1 ERE27 24178 release-keys"

PRODUCT_PACKAGES += Stk

TARGET_KERNEL_CONFIG ?= wg_defconfig

PRODUCT_COPY_FILES += \
    vendor/openeclair/prebuilt/dream_sapphire/build.sapphire.prop:system/build.sapphire.prop \
    vendor/openeclair/prebuilt/dream_sapphire/build.trout.prop:system/build.trout.prop

PRODUCT_PACKAGE_OVERLAYS := vendor/openeclair/overlay/dream-sapphire

PRODUCT_PROPERTY_OVERRIDES += \
    ro.modversion=OpenEclair-2.0

# Default.prop Properties
ADDITIONAL_DEFAULT_PROPERTIES := \
	persist.service.memctl_state=1 \
	persist.service.memctl_size=24568 \
	persist.service.memctl_swp=60 \
	persist.service.auto.renice=0

# Build.prop Properties
PRODUCT_PROPERTY_OVERRIDES += \
    ro.setupwizard.mode=OPTIONAL \
    ro.ril.oem.ecclist=911,112,999,000,08,118,111,120,122,110,119,995,0800 \
    ro.ril.oem.nosim.ecclist=911,112,999,000,08,118,111,120,122,110,119,995,0800 \
    ro.ril.enable.managed.roaming=1 \
    ro.ril.emc.mode=2 \
    ro.media.enc.hprof.file.format=mp4 \
    ro.media.enc.hprof.codec.vid=m4v \
    ro.media.enc.hprof.codec.aud=amrnb \
    ro.media.enc.hprof.vid.width=720 \
    ro.media.enc.hprof.vid.height=480 \
    ro.media.enc.hprof.vid.fps=24 \
    ro.media.enc.hprof.vid.bps=2000000 \
    ro.media.enc.hprof.aud.bps=12200 \
    ro.media.enc.hprof.aud.hz=8000 \
    ro.media.enc.hprof.aud.ch=1 \
    ro.media.enc.hprof.duration=60 \
    ro.media.enc.lprof.file.format=3gp \
    ro.media.enc.lprof.codec.vid=m4v \
    ro.media.enc.lprof.codec.aud=amrnb \
    ro.media.enc.lprof.vid.width=176 \
    ro.media.enc.lprof.vid.height=144 \
    ro.media.enc.lprof.vid.fps=15 \
    ro.media.enc.lprof.vid.bps=256000 \
    ro.media.enc.lprof.aud.bps=12200 \
    ro.media.enc.lprof.aud.hz=8000 \
    ro.media.enc.lprof.aud.ch=1 \
    ro.media.enc.lprof.duration=30 \
    ro.media.enc.file.format=3gp,mp4 \
    ro.media.dec.aud.wma.enabled=1 \
    ro.media.dec.vid.wmv.enabled=1 \
    ro.media.enc.vid.codec=m4v,h263 \
    ro.media.enc.aud.codec=amrnb \
    ro.media.enc.vid.h263.width=176,800 \
    ro.media.enc.vid.h263.height=144,480 \
    ro.media.enc.vid.h263.bps=64000,1000000 \
    ro.media.enc.vid.h263.fps=1,24 \
    ro.media.enc.vid.m4v.width=176,800 \
    ro.media.enc.vid.m4v.height=144,480 \
    ro.media.enc.vid.m4v.bps=64000,2000000 \
    ro.media.enc.vid.m4v.fps=1,24 \
    ro.media.enc.aud.amrnb.bps=5525,12200 \
    ro.media.enc.aud.amrnb.hz=8000,8000 \
    ro.media.enc.aud.amrnb.ch=1,1 \
    ro.media.cam.preview.fps=0 \
    ro.media.dec.jpeg.memcap=20000000 \
    ro.media.enc.jpeg.quality=90,80,70 \
    media.a1026.nsForVoiceRec=0 \
    media.a1026.enableA1026=1 \
    dalvik.vm.dexopt-flags=m=y \
    net.bt.name=Android \
    ro.config.sync=yes \
    dalvik.vm.stack-trace-file=/data/anr/traces.txt

include vendor/htc-open/dream_sapphire/device.mk
