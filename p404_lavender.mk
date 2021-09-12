#
# Copyright (C) 2018-2019 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_p.mk)

# Inherit some common Project-404 stuff
$(call inherit-product, vendor/404/configs/common.mk)
TARGET_BOOT_ANIMATION_RES := 1080
P404_BUILDTYPE := RIPPA

$(call inherit-product, vendor/google/pixel/config.mk)
$(call inherit-product, vendor/google/gms/config.mk)

# Inherit from lavender device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

PRODUCT_BRAND := Xiaomi
PRODUCT_DEVICE := lavender
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_NAME := p404_lavender
PRODUCT_MODEL := Redmi Note 7

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

TARGET_VENDOR_PRODUCT_NAME := lavender

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="redfin-user 11 RQ3A.210805.001 7474174 release-keys"

BUILD_FINGERPRINT := google/redfin/redfin:11/RQ3A.210805.001.A1/7474174:user/release-keys
