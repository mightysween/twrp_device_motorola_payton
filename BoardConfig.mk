# Bootloader
TARGET_NO_BOOTLOADER := true
TARGET_BOOTLOADER_BOARD_NAME := sdm660

# Platform
TARGET_BOARD_PLATFORM := sdm660
TARGET_BOARD_PLATFORM_GPU := qcom-adreno508

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


#CRYPTO
TW_INCLUDE_CRYTPO := true
#TW_INCLUDE_CRYPTO_FBE := true

#KERNEL
TARGET_PREBUILT_KERNEL := device/motorola/payton/kernel
BOARD_MKBOOTIMG_ARGS := --base 0x00000000 --pagesize 4096 --kernel_offset 0x00008000 --ramdisk_offset 0x01000000 --tags_offset 0x00000100   --cmdline 'console=ttyMSM0,115200,n8 androidboot.console=ttyMSM0 earlycon=msm_serial_dm,0xc170000 androidboot.hardware=qcom user_debug=31 msm_rtb.filter=0x237 ehci-hcd.park=3 lpm_levels.sleep_disabled=1 sched_enable_hmp=1 sched_enable_power_aware=1 service_locator.enable=1 swiotlb=1 androidboot.configfs=true androidboot.usbcontroller=a800000.dwc3 androidboot.hab.csv=1 androidboot.hab.product=payton androidboot.hab.cid=50 buildvariant=user veritykeyid=id:b640f6ee9102b88daa3450b13ef25fc9eb143d63'  

#PARTITIONS
TARGET_USERIMAGES_USE_EXT4 := true 
#BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x105c0000
BOARD_BOOTIMAGE_PARTITION_SIZE := 268435456
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 17314086912
BOARD_USERDATAIMAGE_PARTITION_SIZE := 82996817920
BOARD_FLASH_BLOCK_SIZE := 131072

#TWRP FLAGS
TW_THEME := portrait_hdpi
TW_INTERNAL_STORAGE_PATH := "/data/media/0"
TW_INTERNAL_STORAGE_MOUNT_POINT := "/data"
TARGET_USE_CUSTOM_LUN_FILE_PATH := "/config/usb_gadget/g1/functions/mass_storage.0/lun.0/file"
TW_MAX_BRIGHTNESS := 255
TW_DEFAULT_BRIGHTNESS := 125
TW_INPUT_BLACKLIST := "hbtp_vm"
TW_INCLUDE_FB2PNG := true
AB_OTA_UPDATER := true
TW_HAS_NO_RECOVERY_PARTITION := true
TW_EXCLUDE_SUPERSU := true

#TESTING
TARGET_RECOVERY_QCOM_RTC_FIX := true


