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

# This file includes all definitions that apply only to maguro devices
#
# Anything that is generic to all tuna products should go in the tuna directory
#
# Everything in this directory will become public

DEVICE_PACKAGE_OVERLAYS := device/samsung/tiny210/overlay

# These are the hardware-specific features
PRODUCT_COPY_FILES := \
	frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
	device/samsung/tiny210/init.rc:root/init.rc \
	device/samsung/tiny210/init.mini210.rc:root/init.mini210.rc\
	device/samsung/tiny210/ueventd.mini210.rc:root/ueventd.mini210.rc \
	device/samsung/tiny210/ft5x0x_ts.idc:system/usr/idc/ft5x0x_ts.idc

PRODUCT_PROPERTY_OVERRIDES := \
	ro.sf.auto_lcd_density=yes \
	ro.sf.lcd_density=120

PRODUCT_CHARACTERISTICS := nosdcard

#$(call inherit-product, device/samsung/tuna/device.mk)
$(call inherit-product-if-exists, vendor/samsung/tiny210/device-vendor.mk)

$(call inherit-product, device/samsung/tiny210/hwopengl.mk)
