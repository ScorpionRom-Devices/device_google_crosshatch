#
# Copyright (C) 2018-2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit some common stuff.
$(call inherit-product, vendor/scorpion/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/google/crosshatch/aosp_crosshatch.mk)

include device/google/crosshatch/crosshatch/device-scorpion.mk

# Device identifier. This must come after all inclusions
PRODUCT_BRAND := google
PRODUCT_MODEL := Pixel 3 XL
PRODUCT_NAME := scorpion_crosshatch

# Boot animation
TARGET_SCREEN_HEIGHT := 2960
TARGET_SCREEN_WIDTH := 1440

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_PRODUCT=crosshatch \
    PRIVATE_BUILD_DESC="crosshatch-user 12 SP1A.210812.016.C1 8029091 release-keys"

BUILD_FINGERPRINT := google/crosshatch/crosshatch:12/SP1A.210812.016.C1/8029091:user/release-keys

$(call inherit-product, vendor/google/crosshatch/crosshatch-vendor.mk)
$(call inherit-product-if-exists, vendor/gapps/arm64/arm64-vendor.mk)
