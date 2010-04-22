$(call inherit-product, vendor/openeclair/products/openeclair_mdpi.mk)

PRODUCT_NAME := openeclair_dream_sapphire
PRODUCT_BRAND := htc
PRODUCT_DEVICE := dream_sapphire
PRODUCT_MODEL := Dream/Sapphire
PRODUCT_MANUFACTURER := HTC
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_ID=EPE54B BUILD_DISPLAY_ID=EPE54B BUILD_FINGERPRINT=google/passion/passion/mahimahi:2.1-update1/ERE27/24178:user/release-keys PRIVATE_BUILD_DESC="passion-user 2.1-update1 ERE27 24178 release-keys"

PRODUCT_PACKAGES += Stk

TARGET_KERNEL_CONFIG ?= wg_defconfig

PRODUCT_PACKAGE_OVERLAYS := vendor/openeclair/overlay/dream-sapphire

PRODUCT_PROPERTY_OVERRIDES += \
    ro.modversion=OpenEclair-2.0

NO_DEFAULT_SOUNDS:=true

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
    net.bt.name=Android \
    ro.config.sync=yes \
    dalvik.vm.stack-trace-file=/data/anr/traces.txt

include vendor/htc/dream_sapphire/device_dream_sapphire.mk
