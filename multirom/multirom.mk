##==================================
##  RECOVERY_VARIANT := multirom
TARGET_RECOVERY_IS_MULTIROM := true

# Still needed by MultiROM Boot Menu
MR_PIXEL_FORMAT := "RGBX_8888"
MR_USE_QCOM_OVERLAY := true
MR_QCOM_OVERLAY_HEADER := device/samsung/klte-common/multirom/overlay/mr_qcom_overlay.h
MR_QCOM_OVERLAY_CUSTOM_PIXEL_FORMAT := MDP_RGBX_8888
RECOVERY_GRAPHICS_USE_LINELENGTH := true

# Custom Flags
MR_NO_KEXEC := true
MR_DEVICE_SPECIFIC_VERSION := x
TW_THEME := portrait_hdpi

include device/samsung/klte-common/multirom/version-info/MR_REC_VERSION.mk

ifeq ($(MR_REC_VERSION),)
MR_REC_VERSION := $(shell date -u +%Y%m%d)-01
endif

BOARD_MKBOOTIMG_ARGS += --board mrom$(MR_REC_VERSION)

# MultiROM config
MR_INPUT_TYPE := type_b
MR_INIT_DEVICES := device/samsung/klte-common/multirom/mr_init_devices.c
MR_DPI := xhdpi
MR_DPI_FONT := 340
MR_CONTINUOUS_FB_UPDATE := true

MR_DEVICE_HOOKS := device/samsung/klte-common/multirom/mr_hooks.c
MR_DEVICE_HOOKS_VER := 4

MR_FSTAB := device/samsung/klte-common/multirom/mrom.fstab
MR_USE_MROM_FSTAB := true

MR_DEVICE_VARIANTS := klte kltexx kltelra kltetmo kltecan klteatt klteub klteacg kltezn kltezm klteduos kltekdi kltekor kltektt kltelgt klteskt

# not just yet :(
MR_KEXEC_MEM_MIN := 0x02c00000
#MR_KEXEC_DTB := true
