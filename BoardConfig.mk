# Copyright (C) 2013 The CyanogenMod Project
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

# inherit from the common rhine definitions
include device/sony/rhine-common/BoardConfigCommon.mk

# inherit from the proprietary version
#-include vendor/sony/togari/BoardConfigVendor.mk

# Assert
TARGET_OTA_ASSERT_DEVICE := C6802,C6806,C6833,C6843,togari

TARGET_SPECIFIC_HEADER_PATH += device/sony/togari/include

BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/sony/togari/bluetooth

# Kernel properties
TARGET_KERNEL_CONFIG := cm_rhine_togari_row_defconfig

# Partition information
BOARD_VOLD_MAX_PARTITIONS := 26

BOARD_BOOTIMAGE_PARTITION_SIZE := 0x01400000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x01400000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1056964608
BOARD_USERDATAIMAGE_PARTITION_SIZE := 2147483648

#TWRP flags
DEVICE_RESOLUTION := 1080x1920
#RECOVERY_GRAPHICS_USE_LINELENGTH := true
RECOVERY_SDCARD_ON_DATA := true
TW_HAS_NO_RECOVERY_PARTITION := true
#TW_EXTERNAL_STORAGE_PATH := "/external_sd"
#TW_EXTERNAL_STORAGE_MOUNT_POINT := "external_sd"
#TW_INCLUDE_CRYPTO := true
TW_INCLUDE_JB_CRYPTO := true
#TW_CRYPTO_FS_TYPE := "ext4"
#TW_CRYPTO_REAL_BLKDEV := "/dev/block/platform/msm_sdcc.1/by-name/userdata"
#TW_CRYPTO_MNT_POINT := "/data"
#TW_CRYPTO_FS_OPTIONS := "nosuid,nodev,barrier=1,noauto_da_alloc,discard"
#TW_CRYPTO_FS_FLAGS := "0x00000406"
#TW_CRYPTO_KEY_LOC := "footer"
#TW_BOARD_CUSTOM_GRAPHICS := ../../../device/sony/yuga/recovery/graphics.c
#TW_BRIGHTNESS_PATH := /sys/devices/i2c-0/0-0036/leds/lm3533-lcd-bl/brightness
#TW_MAX_BRIGHTNESS := 255
TW_NO_USB_STORAGE := true
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"