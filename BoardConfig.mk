# Copyright (C) 2014-2016 The CyanogenMod Project
# Copyright (C) 2017-2021 The LineageOS Project
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

# inherit from common klte
include device/samsung/klte-common/BoardConfigCommon.mk

TARGET_OTA_ASSERT_DEVICE := klteactivexx,klteattactive,klte

# Kernel
TARGET_KERNEL_CONFIG := lineage_klteactivexx_defconfig

# Init
TARGET_INIT_VENDOR_LIB := libinit_klteactivexx

# NFC
include $(COMMON_PATH)/nfc/pn547/board.mk

# Properties
TARGET_SYSTEM_PROP += device/samsung/klteactivexx/system.prop

# Radio/RIL
include $(COMMON_PATH)/radio/single/board.mk

# inherit from the proprietary version
include vendor/samsung/klteactivexx/BoardConfigVendor.mk
