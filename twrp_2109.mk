#
# Copyright (C) 2020 The Android Open Source Project
# Copyright (C) 2020 The TWRP Open Source Project
# Copyright (C) 2020 SebaUbuntu's TWRP device tree generator
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)

# Device specific configs.
$(call inherit-product, device/vivo/2109/device.mk)

# Inherit from our custom product configuration
$(call inherit-product, vendor/twrp/config/common.mk)

PRODUCT_DEVICE := 2109
PRODUCT_NAME := twrp_2109
PRODUCT_BRAND := vivo
PRODUCT_MODEL := V2109
PRODUCT_MANUFACTURER := vivo

PRODUCT_SHIPPING_API_LEVEL := 30

# Dynamic
PRODUCT_USE_DYNAMIC_PARTITIONS := true



# Bypass anti-rollback ROMs protection
# Set build date to Jan 1 2009 00:00:00
PRODUCT_PROPERTY_OVERRIDES += \
    ro.build.date.utc=1230768000