#
# Copyright (C) 2022 ArrowOS
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

# Inherit framework configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit device configuration
$(call inherit-product, device/realme/x3/device.mk)
$(call inherit-product, vendor/blaze/config/common_full_phone.mk)

# Blaze Official Stuff
BLAZE_MAINTAINER := Ak
BLAZE_BUILD_TYPE := OFFICIAL
TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_USE_PIXEL_CHARGER := true
TARGET_SUPPORTS_BLUR := true
WITH_GAPPS := true

# Device identifier
PRODUCT_NAME := blaze_x3
PRODUCT_DEVICE := x3
PRODUCT_BRAND := realme
PRODUCT_MODEL := Realme X3 / SuperZoom
PRODUCT_MANUFACTURER := realme
PRODUCT_GMS_CLIENTID_BASE := android-oppo

# Build info
BUILD_FINGERPRINT := "google/coral/coral:13/TP1A.221005.002.B2/9382335:user/release-keys"
PRODUCT_BUILD_PROP_OVERRIDES += \
        TARGET_DEVICE=RMX2081 \
        PRODUCT_NAME=RMX2081 \
        PRIVATE_BUILD_DESC="qssi-user 12 SKQ1.211113.001 1658765450117 release-keys"
