#
# Copyright (C) 2017 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

LOCAL_PATH := device/motorola/payton

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := generic
TARGET_CPU_SMP := true

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv7-a-neon
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := generic

TARGET_BOARD_PLATFORM := sdm660 # (sdm630 unknown)
TARGET_BOARD_PLATFORM_GPU := qcom-adreno508
TARGET_BOARD_SUFFIX := _64

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := sdm660 # (sdm630 unknown)
TARGET_NO_BOOTLOADER := true

# Crypto
TARGET_HW_DISK_ENCRYPTION := true

# Filesystems
BOARD_HAS_LARGE_FILESYSTEM := true
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_PERSISTIMAGE_FILE_SYSTEM_TYPE := ext4

# Kernel
BOARD_KERNEL_BASE := 0x80000000
BOARD_KERNEL_CMDLINE := androidboot.console=ttyMSM0,115200,n8 androidboot.console=ttyMSM0 earlycon=msm_serial_dm,0xc170000 androidboot.hardware=qcom user_debug=31 msm_rtb.filter=0x237 ehci-hcd.park=3 lpm_levels.sleep_disabled=1 sched_enable_hmp=1 sched_enable_power_aware=1 service_locator.enable=1 swiotlb=1 androidboot.configfs=true androidboot.usbcontroller=a800000.dwc3 androidboot.hab.csv=1 androidboot.hab.product=payton androidboot.hab.cid=50 androidboot.selinux=permissive
BOARD_KERNEL_PAGESIZE := 4096
BOARD_MKBOOTIMG_ARGS := --ramdisk_offset 0x01000000 --tags_offset 0x00000100
TARGET_PREBUILT_KERNEL := $(LOCAL_PATH)/kernel

# Partitions
BOARD_BOOTIMAGE_PARTITION_SIZE := 268238848
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 17314086912
BOARD_USERDATAIMAGE_PARTITION_SIZE := 82996817920
BOARD_OEMIMAGE_PARTITION_SIZE := 2415919104
BOARD_PERSISTIMAGE_PARTITION_SIZE := 134217728
BOARD_FLASH_BLOCK_SIZE := 131072

# TWRP Configuration
TW_THEME := portrait_hdpi
TW_INCLUDE_CRYPTO := true
TW_MAX_BRIGHTNESS := 255
TW_DEFAULT_BRIGHTNESS := "80"
TW_BRIGHTNESS_PATH := "/sys/class/leds/lcd-backlight/brightness"
TW_EXCLUDE_SUPERSU := true
TW_SCREEN_BLANK_ON_BOOT := true
TARGET_RECOVERY_QCOM_RTC_FIX := true
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"
TARGET_RECOVERY_FSTAB := $(LOCAL_PATH)/recovery/root/etc/twrp.fstab
BOARD_SUPPRESS_SECURE_ERASE := true
TW_INPUT_BLACKLIST := "hbtp_vm"
AB_OTA_UPDATER := true
# TW_HAS_NO_RECOVERY_PARTITION := true
