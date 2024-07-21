#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit some common Lineage stuff.
DISABLE_ARTIFACT_PATH_REQUIREMENTS := true
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/google/barbet/aosp_barbet.mk)
$(call inherit-product, device/google/redbull/lineage_common.mk)

include device/google/barbet/device-lineage.mk

# Matrixx
MATRIXX_BUILD_TYPE := Unofficial
MATRIXX_MAINTAINER := 306bobby
MATRIXX_CHIPSET := SM7250
MATRIXX_BATTERY := 4680mah
MATRIXX_DISPLAY := 1080x2340

# Matrixx Flags
TARGET_SUPPORTS_QUICK_TAP := true
TARGET_INCLUDE_PIXEL_FRAMEWORK := true
TARGET_EXCLUDES_AUDIOFX := true
TARGET_EXCLUDES_AUXIO := true
TARGET_EXCLUDES_VIA := true
TARGET_PIXEL_BOOT_ANIMATION_RES := 1080
TARGET_IS_PIXEL := true


# Device identifier. This must come after all inclusions
PRODUCT_BRAND := google
PRODUCT_MODEL := Pixel 5a
PRODUCT_NAME := lineage_barbet

# Boot animation
TARGET_SCREEN_HEIGHT := 2340
TARGET_SCREEN_WIDTH := 1080

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_PRODUCT=barbet \

    PRIVATE_BUILD_DESC="barbet-user 14 AP2A.240605.024 11860263 release-keys"

BUILD_FINGERPRINT := google/barbet/barbet:14/AP2A.240605.024/11860263:user/release-keys


$(call inherit-product, vendor/google/barbet/barbet-vendor.mk)
