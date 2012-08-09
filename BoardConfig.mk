# Copyright (C) 2012 The Android Open Source Project
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

# BoardConfig.mk
#
# Product-specific compile-time definitions.
#

# Set this up here so that BoardVendorConfig.mk can override it
BOARD_USES_GENERIC_AUDIO := false

BOARD_USES_LIBSECRIL_STUB := true

# Use the non-open-source parts, if they're present
-include vendor/samsung/galaxys4gmtd/BoardConfigVendor.mk

TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
ARCH_ARM_HAVE_TLS_REGISTER := true
TARGET_GLOBAL_CFLAGS += -mtune=cortex-a8 -mfpu=neon -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mtune=cortex-a8 -mfpu=neon -mfloat-abi=softfp

TARGET_NO_BOOTLOADER := true
TARGET_NO_RADIOIMAGE := true

BOARD_MOBILEDATA_INTERFACE_NAME = "pdp0"

BOARD_NEEDS_CUTILS_LOG := true

TARGET_BOARD_PLATFORM := s5pc110
TARGET_BOOTLOADER_BOARD_NAME := herring
TARGET_BOARD_PLATFORM_GPU := POWERVR_SGX540_120
TARGET_RECOVERY_INITRC := device/samsung/galaxys4gmtd/recovery.rc

TARGET_RELEASETOOL_OTA_FROM_TARGET_SCRIPT := device/samsung/galaxys4gmtd/releasetools/galaxys4gmtd_ota_from_target_files
TARGET_RELEASETOOL_IMG_FROM_TARGET_SCRIPT := device/samsung/galaxys4gmtd/releasetools/galaxys4gmtd_img_from_target_files

# Camera
USE_CAMERA_STUB := false
ifeq ($(USE_CAMERA_STUB),false)
BOARD_CAMERA_LIBRARIES := libcamera
endif

#GPS
#BOARD_USES_GPSSHIM := true

TARGET_PROVIDES_LIBAUDIO := true

# OpenGL stuff
BOARD_EGL_CFG := device/samsung/galaxys4gmtd/prebuilt/etc/egl.cfg

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true

# Video Devices
BOARD_USES_OVERLAY := true
BOARD_V4L2_DEVICE := /dev/video1
BOARD_CAMERA_DEVICE := /dev/video0
BOARD_SECOND_CAMERA_DEVICE := /dev/video2

# FM Radio
#BOARD_HAVE_FM_RADIO := true
#BOARD_GLOBAL_CFLAGS += -DHAVE_FM_RADIO


TARGET_PREBUILT_KERNEL := device/samsung/galaxys4gmtd/kernel
BOARD_NAND_PAGE_SIZE := 4096 -s 128
BOARD_KERNEL_BASE := 0x32000000
BOARD_KERNEL_PAGESIZE := 4096
BOARD_KERNEL_CMDLINE := console=ttySAC2,115200 init=/init no_console_suspend

# fix this up by examining /proc/mtd on a running device
BOARD_BOOTIMAGE_PARTITION_SIZE := 7864320
BOARD_RECOVERY_PARTITION_SIZE := 7864320
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 403701760
BOARD_USERDATAIMAGE_PARTITION_SIZE := 555745280
BOARD_FLASH_BLOCK_SIZE := 131072

# WIFI defines
BOARD_WPA_SUPPLICANT_DRIVER := WEXT
WPA_SUPPLICANT_VERSION := VER_0_6_X
WIFI_DRIVER_FW_STA_PATH := "/system/vendor/firmware/fw_bcm4329.bin"
WIFI_DRIVER_FW_AP_PATH := "/system/vendor/firmware/fw_bcm4329_apsta.bin"
BOARD_WLAN_DEVICE := bcm4329
WIFI_DRIVER_MODULE_PATH := "/system/lib/modules/bcm4329.ko"
WIFI_DRIVER_MODULE_ARG := "firmware_path=/system/vendor/firmware/fw_bcm4329.bin nvram_path=/system/vendor/firmware/nvram_net.txt dhd_watchdog_ms=10 dhd_poll=1"
WIFI_DRIVER_MODULE_NAME := "bcm4329"

# Recovery
BOARD_RECOVERY_HANDLES_MOUNT := true
BOARD_HAS_DOWNLOAD_MODE := true
BOARD_HAS_NO_SELECT_BUTTON := true
BOARD_USES_BML_OVER_MTD := true
BOARD_CUSTOM_BOOTIMG_MK := device/samsung/galaxys4gmtd/shbootimg.mk
TARGET_RECOVERY_PRE_COMMAND := "echo 1 > /cache/.startrecovery; sync;"

TARGET_OTA_ASSERT_DEVICE := herring,galaxys4g,galaxys4gmtd,SGH-T959V,SGH-T959W

# TWRP options
DEVICE_RESOLUTION := 480x800
TW_INCLUDE_INJECTTWRP := true
TW_NO_REBOOT_BOOTLOADER := true
TW_FLASH_FROM_STORAGE := true
