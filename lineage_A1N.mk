#
# Copyright (C) 2020 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_o_mr1.mk)

# Inherit some common PixelExperience stuff
TARGET_INCLUDE_WIFI_EXT := true
TARGET_USES_AOSP_RECOVERY := true
TARGET_BOOT_ANIMATION_RES := 1080
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit WLAN-Upgrade Modem
#$(call inherit-product, vendor/nokia/firmware/Android.mk)

# Inherit from A1N device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

# Inherit Gapps
ifeq ($(USE_FLAMEGAPPS),true)
include vendor/flamegapps/common/flamegapps.mk
endif

# Face Unlock
TARGET_FACE_UNLOCK_SUPPORTED := true

PRODUCT_NAME := lineage_A1N
PRODUCT_DEVICE := A1N
PRODUCT_MANUFACTURER := HMD Global
PRODUCT_BRAND := Nokia
PRODUCT_MODEL := Nokia 8 Sirocco

PRODUCT_GMS_CLIENTID_BASE := android-hmd-rev2

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_DEVICE=A1N \
    PRODUCT_NAME=A1N_00WW_FIH \
    PRIVATE_BUILD_DESC="A1N_00WW_FIH-user-10-QKQ1.190828.002-00WW_5_14L-release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := Nokia/A1N_00WW_FIH/A1N:10/QKQ1.190828.002/00WW_5_14L:user/release-keys
