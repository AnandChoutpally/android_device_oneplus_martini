#
# Copyright (C) 2021-2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)

# Inherit from martini device
$(call inherit-product, device/oneplus/martini/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

PRODUCT_NAME := twrp_martini
PRODUCT_DEVICE := martini
PRODUCT_MANUFACTURER := OnePlus
PRODUCT_BRAND := OnePlus
PRODUCT_MODEL := MT2111

PRODUCT_SYSTEM_NAME := OnePlus9RT
PRODUCT_SYSTEM_DEVICE := OnePlus9RT

PRODUCT_GMS_CLIENTID_BASE := android-oneplus

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE=OnePlus9RT \
    TARGET_PRODUCT=OnePlus9RT

BUILD_FINGERPRINT := OnePlus/OnePlus9RT/OnePlus9RT:12/RKQ1.211119.001/R.202210251512:user/release-keys
