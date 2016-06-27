
# Copyright (C) 2013 ParanoidAndroid Project
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

# Check for target product
ifeq (pa_flo,$(TARGET_PRODUCT))

# Include ParanoidAndroid common configuration
TARGET_BOOT_ANIMATION_RES := 1080
include vendor/pa/main.mk

# Inherit AOSP device configuration
$(call inherit-product, device/lge/p880/full_p880.mk)

# Override AOSP build properties
PRODUCT_NAME := pa_p880
PRODUCT_BRAND := lge
PRODUCT_MODEL := Optimus 4X HD
PRODUCT_MANUFACTURER := lge
PRODUCT_BUILD_PROP_OVERRIDES += \
	PRODUCT_NAME=x3 \

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=x3 BUILD_FINGERPRINT=lge/x3_open_eu/x3:4.1.2/JZO54K/P88020c.20d4ae5fac:user/release-keys \ PRIVATE_BUILD_DESC="x3_open_eu-user 4.1.2 JZO54K P88020c.20d4ae5fac release-keys"

endif
