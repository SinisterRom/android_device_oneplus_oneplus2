# Copyright (C) 2016 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from oneplus2 device
$(call inherit-product, device/oneplus/oneplus2/device.mk)

# Include Screw'd common configuration
include vendor/screwd/main.mk

PRODUCT_NAME := screwd_oneplus2
PRODUCT_DEVICE := oneplus2
PRODUCT_MANUFACTURER := OnePlus
PRODUCT_BRAND := OnePlus

PRODUCT_GMS_CLIENTID_BASE := android-oneplus

TARGET_VENDOR_PRODUCT_NAME := OnePlus2
TARGET_VENDOR_DEVICE_NAME := OnePlus2
PRODUCT_BUILD_PROP_OVERRIDES += TARGET_DEVICE=OnePlus2 PRODUCT_NAME=OnePlus2

PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_FINGERPRINT=OnePlus/OnePlus2/OnePlus2:6.0.1/MMB29M/1447841200:user/release-keys \
    PRIVATE_BUILD_DESC="OnePlus2-user 6.0.1 MMB29M 15 dev-keys"

PRODUCT_SYSTEM_PROPERTY_BLACKLIST += ro.product.model

TARGET_VENDOR := oneplus

# Inline kernel building
TARGET_GCC_VERSION_ARM64 := 4.9
TARGET_KERNEL_SOURCE := kernel/oneplus/msm8994
TARGET_KERNEL_CONFIG := du_oneplus2_defconfig
BOARD_KERNEL_IMAGE_NAME := Image.gz-dtb

PRODUCT_PROPERTY_OVERRIDES += \
    ro.screwd.device.short=$(SCREWD_DEVICE_SHORT) \

