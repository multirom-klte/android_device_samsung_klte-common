LOCAL_PATH := device/samsung/klte-common

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := MSM8974
TARGET_NO_BOOTLOADER := true

# Platform
TARGET_BOARD_PLATFORM := msm8974
TARGET_BOARD_PLATFORM_GPU := qcom-adreno330

# Flags
TARGET_GLOBAL_CFLAGS += -mfpu=neon -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mfpu=neon -mfloat-abi=softfp
COMMON_GLOBAL_CFLAGS += -DREFRESH_RATE=60 -DQCOM_HARDWARE -DNO_SECURE_DISCARD

# Architecture
TARGET_CPU_VARIANT := krait
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_SMP := true
ARCH_ARM_HAVE_TLS_REGISTER := true

# Kernel
BOARD_KERNEL_BASE := 0x00000000
BOARD_KERNEL_CMDLINE := console=null androidboot.hardware=qcom androidboot.bootdevice=msm_sdcc.1 user_debug=31 msm_rtb.filter=0x3F
BOARD_KERNEL_PAGESIZE := 2048
BOARD_KERNEL_OFFSET := 0x00008000
BOARD_MKBOOTIMG_ARGS := --ramdisk_offset 0x02000000 --tags_offset 0x01E00000

# Partitions
BOARD_BOOTIMAGE_PARTITION_SIZE     := 0x000D00000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x000F00000
BOARD_SYSTEMIMAGE_PARTITION_SIZE   := 0x097E00000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 0x2E59F7C00 # 0x2E59FBC00 - 16384 (footer)
BOARD_CACHEIMAGE_PARTITION_SIZE    := 0x00C800000
BOARD_FLASH_BLOCK_SIZE := 131072

TARGET_RECOVERY_FSTAB := $(LOCAL_PATH)/recovery.fstab

# Use this flag if the board has a ext4 partition larger than 2gb
BOARD_HAS_LARGE_FILESYSTEM := true
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true
BOARD_SUPPRESS_SECURE_ERASE := true
BOARD_CUSTOM_BOOTIMG_MK :=  $(LOCAL_PATH)/bootimg.mk

# TWRP specific build flags by @IcemanDEV
BOARD_HAS_NO_REAL_SDCARD := false
TW_DEFAULT_EXTERNAL_STORAGE := true
TW_INPUT_BLACKLIST := "hbtp_vm"
TW_USE_MODEL_HARDWARE_ID_FOR_DEVICE_ID := true

# TWRP specific build flags by @Yillie
TW_MTP_DEVICE := "/dev/mtp_usb"
TW_THEME := portrait_hdpi
RECOVERY_SDCARD_ON_DATA := true
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"
TARGET_RECOVERY_QCOM_RTC_FIX := true
TARGET_USE_CUSTOM_LUN_FILE_PATH := "/sys/devices/msm_dwc3/f9200000.dwc3/gadget/lun%d/file"
TW_BRIGHTNESS_PATH := "/sys/devices/mdp.0/qcom\x2cmdss_fb_primary.191/leds/lcd-backlight/brightness"
TW_CUSTOM_CPU_TEMP_PATH := "/sys/class/thermal/thermal_zone1/temp"
TW_MAX_BRIGHTNESS := 255
TW_DEFAULT_BRIGHTNESS := 162
TW_NO_REBOOT_BOOTLOADER := true
TW_HAS_DOWNLOAD_MODE := true
TW_NO_EXFAT := false
TW_NO_EXFAT_FUSE := false
TW_INCLUDE_NTFS_3G := true
TW_MTP_DEVICE := "/dev/mtp_usb"

# Encryption support
TW_INCLUDE_CRYPTO := true
#TW_INCLUDE_CRYPTO_SAMSUNG := true
TARGET_HW_DISK_ENCRYPTION := true
TARGET_KEYMASTER_WAIT_FOR_QSEE := true
#TWRP_INCLUDE_LOGCAT := true
#TARGET_USES_LOGD := true

# multirom
include device/samsung/klte-common/multirom/multirom.mk
