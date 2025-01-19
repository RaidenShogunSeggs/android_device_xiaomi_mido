#
# Copyright (C) 2017 The LineageOS Project
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
$(call inherit-product, $(SRC_TARGET_DIR)/product/non_ab_device.mk)

# Inherit from mido device
AB_OTA_UPDATER := false
$(call inherit-product, device/xiaomi/mido/device.mk)

# Inherit some common LineageOS stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Signed Keys
$(call inherit-product, vendor/sonric-keys/product.mk)

# Viper4AndroidFX
$(call inherit-product, packages/apps/ViPER4AndroidFX/config.mk)

# Missi by Xiaomi
$(call inherit-product, device/xiaomi/missi/missi.mk)

# Flags
TARGET_BOOT_ANIMATION_RES := 1080
RISING_MAINTAINER := SonRic
TARGET_SUPPORTS_64_BIT_APPS := true
TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_ENABLE_BLUR := true
WITH_GMS := false
PRODUCT_NO_CAMERA := false

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := mido
PRODUCT_NAME := lineage_mido
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Redmi Note 4
PRODUCT_MANUFACTURER := Xiaomi
TARGET_VENDOR := Xiaomi
BOARD_VENDOR := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    RisingMaintainer="SonRic" \
    RisingChipset="Qualcomm Snapdragon 625" \
    DeviceProduct=mido \
    SystemName=mido \
    BuildFlavor=mido-userdebug \
    BuildNumber=OS2.0.6.2.VCFMIXM \
    BuildDesc="mido-userdebug 15 AP4A.250105.002 OS2.0.6.2.VCFMIXM release-keys" \
    BuildFingerprint="Xiaomi/mido/mido:15/AP4A.250105.002/OS2.0.6.2.VCFMIXM:userdebug/release-keys"
