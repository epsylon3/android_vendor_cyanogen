# Include GSM stuff
$(call inherit-product, vendor/cyanogen/products/gsm.mk)

PRODUCT_RELEASE_NAME := Galaxy-R

PRODUCT_VERSION_DEVICE_SPECIFIC :=
-include vendor/cyanogen/products/common_versions.mk

# Inherit device configuration.
$(call inherit-product, device/samsung/galaxyr/full_galaxyr.mk)

# Inherit some common cyanogenmod stuff.
$(call inherit-product, vendor/cyanogen/products/common_full.mk)

# Add the Torch app
PRODUCT_PACKAGES += Torch

#
# Setup device specific product configuration.
#
PRODUCT_NAME := cyanogen_galaxyr
PRODUCT_BRAND := samsung
PRODUCT_DEVICE := galaxyr
PRODUCT_MODEL := GT-I9103
PRODUCT_MANUFACTURER := samsung
PRODUCT_RELEASE_NAME := Galaxy-R

# from stock rom
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=GT-I9103 \
    PRIVATE_BUILD_DESC="GT-I9103-user 2.3.6 GINGERBREAD ZSLE6 release-keys" \
    BUILD_FINGERPRINT=samsung/GT-I9103/GT-I9103:2.3.6/GINGERBREAD/ZSLE6:user/release-keys

# Extra overlay for HDPI devices
PRODUCT_PACKAGE_OVERLAYS += vendor/cyanogen/overlay/hdpi

# original board name in kernel tree is "n1" but...
#PRODUCT_SPECIFIC_DEFINES += TARGET_KERNEL_CONFIG=cyanogen_i9103_defconfig

PRODUCT_COPY_FILES += vendor/cyanogen/prebuilt/hdpi/media/bootanimation.zip:system/media/bootanimation.zip
