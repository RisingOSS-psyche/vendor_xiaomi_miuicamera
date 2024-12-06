#
# Copyright (C) 2020 The LineageOS Project
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
#

# Dex
PRODUCT_DEXPREOPT_SPEED_APPS += \
    MiuiCamera

# RRO Overlays
PRODUCT_PACKAGES += \
    MiuiCameraOverlay \
    MiuiCameraOverlayLos \
    MiuiCameraOverlayAosp

# Permissions
PRODUCT_COPY_FILES += \
    vendor/xiaomi/miuicamera/configs/permissions/android.hardware.camera.flash-autofocus.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/default-permissions/android.hardware.camera.flash-autofocus.xml \
    vendor/xiaomi/miuicamera/configs/permissions/android.hardware.camera.front.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/sysconfig/android.hardware.camera.front.xml \
    vendor/xiaomi/miuicamera/configs/permissions/android.hardware.camera.full.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/android.hardware.camera.full.xml \
    vendor/xiaomi/miuicamera/configs/permissions/android.hardware.camera.raw.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/android.hardware.camera.raw.xml \
    vendor/xiaomi/miuicamera/configs/permissions/privapp-permissions-miuicamera.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/privapp-permissions-miuicamera.xml \
    vendor/xiaomi/miuicamera/configs/sysconfig/miuicamera-hiddenapi-package-whitelist.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/sysconfig/miuicamera-hiddenapi-package-whitelist.xml

# Props
PRODUCT_SYSTEM_PROPERTIES += \
    persist.sys.miui.sdk.dbg \
    ro.boot.camera.config=_pro \
    persist.vendor.camera.enableAdvanceFeatures=0x3E7 \
    persist.vendor.camera.multicam=TRUE \
    persist.vendor.camera.multicam.fpsmatch=TRUE \
    persist.vendor.camera.multicam.framesync=1 \
    persist.vendor.camera.multicam.hwsync=TRUE \
    persist.vendor.camera.picturesize.limit.enable=false \
    ro.miui.notch=1 \
    persist.sys.cam.skip_detach_image=true
    ro.product.mod_device=psyche_global \
    persist.vendor.camera.privapp.list=com.android.camera \
    ro.com.google.lens.oem_camera_package=com.android.camera

$(call inherit-product, vendor/xiaomi/miuicamera/common/common-vendor.mk)
