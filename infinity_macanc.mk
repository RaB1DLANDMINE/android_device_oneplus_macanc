#
# Copyright (C) 2026 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Infinity build/device identifier. Must be set BEFORE inheriting
# vendor/infinity/config/common_full_phone.mk, because version.mk expands
# TARGET_PRODUCT_SHORT and ro.infinity.device from it at include time.
INFINITY_BUILD := macanc

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from macanc device
$(call inherit-product, device/oneplus/macanc/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/infinity/config/common_full_phone.mk)

INFINITY_MAINTAINER := RaB1DLANDMINE
WITH_GAPPS ?= false
TARGET_HAS_UDFPS := true

PRODUCT_NAME := infinity_macanc
PRODUCT_DEVICE := macanc
PRODUCT_MANUFACTURER := OnePlus
PRODUCT_BRAND := OnePlus
PRODUCT_MODEL := PLR110

PRODUCT_GMS_CLIENTID_BASE := android-oneplus

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="qssi-user 16 BP2A.250605.015 1780650256865 release-keys" \
    BuildFingerprint=OnePlus/PLR110/OP6117L1:16/BP2A.250605.015/B.c4db98_17de607_17d624d:user/release-keys \
    DeviceName=OP6117L1 \
    DeviceProduct=PLR110 \
    SystemDevice=OP6117L1 \
    SystemName=PLR110

PRODUCT_CHECK_PREBUILT_MAX_PAGE_SIZE := false
