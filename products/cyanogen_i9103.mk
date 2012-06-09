# Inherit device configuration.
$(call inherit-product, device/samsung/i9103/device_i9103.mk)

# Inherit some common cyanogenmod stuff.
$(call inherit-product, vendor/cyanogen/products/common_full.mk)

# Add the Torch app
PRODUCT_PACKAGES += Torch

# Include GSM stuff
$(call inherit-product, vendor/cyanogen/products/gsm.mk)

#
# Setup device specific product configuration.
#
PRODUCT_NAME := cyanogen_i9103
PRODUCT_BRAND := samsung
PRODUCT_DEVICE := i9103
PRODUCT_MODEL := GT-I9103
PRODUCT_MANUFACTURER := samsung
PRODUCT_RELEASE_NAME := Galaxy-R

# from stock rom
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=GT-I9103 \
    PRIVATE_BUILD_DESC="GT-I9103-user 2.3.6 GINGERBREAD XWLA4 release-keys" \
    BUILD_FINGERPRINT=samsung/GT-I9103/GT-I9103:2.3.6/GINGERBREAD/XWLA4:user/release-keys

# Extra overlay for HDPI devices
PRODUCT_PACKAGE_OVERLAYS += vendor/cyanogen/overlay/hdpi

PRODUCT_VERSION_DEVICE_SPECIFIC :=
-include vendor/cyanogen/products/common_versions.mk

# original board name in kernel tree is "n1" but...
#PRODUCT_SPECIFIC_DEFINES += TARGET_KERNEL_CONFIG=cyanogen_i9103_defconfig

PRODUCT_COPY_FILES += vendor/cyanogen/prebuilt/hdpi/media/bootanimation.zip:system/media/bootanimation.zip
