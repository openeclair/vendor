$(call inherit-product, vendor/openeclair/products/openeclair_mdpi.mk)

PRODUCT_NAME := openeclair_dream_sapphire
PRODUCT_BRAND := htc
PRODUCT_DEVICE := dream_sapphire
PRODUCT_MODEL := T-Mobile MyTouch3G
PRODUCT_MANUFACTURER := HTC
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_ID=EPE54B BUILD_DISPLAY_ID=EPE54B BUILD_FINGERPRINT=google/passion/passion/mahimahi:2.1-update1/ERE27/24178:user/release-keys PRIVATE_BUILD_DESC="passion-user 2.1-update1 ERE27 24178 release-keys"

PRODUCT_PACKAGES += Stk

TARGET_KERNEL_CONFIG ?= wg_defconfig

PRODUCT_COPY_FILES += \
    vendor/openeclair/prebuilt/dream_sapphire/build.sapphire.prop:system/build.sapphire.prop \
    vendor/openeclair/prebuilt/dream_sapphire/build.trout.prop:system/build.trout.prop

PRODUCT_PACKAGE_OVERLAYS := vendor/openeclair/overlay/dream-sapphire

include vendor/htc-open/dream_sapphire/device.mk
