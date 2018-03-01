#
# Copyright 2015 The CyanogenMod Project
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
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common lineage stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit from AGMA3EU device
$(call inherit-product, device/agm/AGMA3EU/device.mk)

# Enhanced NFC
#$(call inherit-product, vendor/cm/config/nfc_enhanced.mk)

# Set those variables here to overwrite the inherited values.
BOARD_VENDOR := AGM
PRODUCT_BRAND := AGM
PRODUCT_DEVICE := AGMA3EU
PRODUCT_NAME := lineage_AGMA3EU
PRODUCT_MANUFACTURER := AGM
PRODUCT_MODEL := AGM X1
TARGET_VENDOR := AGM

PRODUCT_GMS_CLIENTID_BASE := android-agm

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_DEVICE="HS8952QC" \
    PRODUCT_NAME="AGMA3EU" \
    BUILD_FINGERPRINT="AGM/AGMA3EU/HS8952QC:5.1.1/LMY47V/L1253.6.01.01:user/release-keys" \
    PRIVATE_BUILD_DESC="AGMA3EU-user 5.1.1 LMY47V L1253.6.01.01 release-keys"
