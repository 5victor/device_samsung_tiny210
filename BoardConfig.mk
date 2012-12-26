# Copyright (C) 2011 The Android Open Source Project
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

# Default values, possibly overridden by BoardConfigVendor.mk
TARGET_BOARD_INFO_FILE := device/samsung/tiny210/board-info.txt
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/samsung/tiny210/bluetooth

# Use the non-open-source part, if present
-include vendor/samsung/tiny210/BoardConfigVendor.mk

# Use the part that is common between all tunas
#include device/samsung/tuna/BoardConfig.mk

TARGET_BOARD_INFO_FILE ?= device/samsung/tiny210/board-info.txt
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR ?= device/samsung/tuna/bluetooth

TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_SMP := true
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
ARCH_ARM_HAVE_TLS_REGISTER := true

TARGET_NO_BOOTLOADER := true

TARGET_NO_KERNEL := true

BOARD_KERNEL_BASE := 0x80000000

TARGET_NO_RADIOIMAGE := true
#TARGET_BOARD_PLATFORM := omap4

BOARD_EGL_CFG := device/samsung/tiny210/egl.cfg

BOARD_USES_HGL := true
BOARD_USES_OVERLAY := true
USE_OPENGL_RENDERER := true

# set if the target supports FBIO_WAITFORVSYNC
TARGET_HAS_WAITFORVSYNC := true

TARGET_RECOVERY_PIXEL_FORMAT := "BGRA_8888"
