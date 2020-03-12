# Copyright (C) 2018 The Superior OS Project
# Copyright (C) 2020 Direwolf Inc for Project Sakura
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

# Bootanimation
ifeq ($(TARGET_BOOT_ANIMATION_RES),720)
     PRODUCT_COPY_FILES += vendor/lineage/prebuilt/common/bootanimation/bootanimation-720.zip:$(TARGET_COPY_OUT_SYSTEM)/media/bootanimation.zip
else ifeq ($(TARGET_BOOT_ANIMATION_RES),1080)
     PRODUCT_COPY_FILES += vendor/lineage/prebuilt/common/bootanimation/bootanimation-1080.zip:$(TARGET_COPY_OUT_SYSTEM)/media/bootanimation.zip
else ifeq ($(TARGET_BOOT_ANIMATION_RES),1440)
     PRODUCT_COPY_FILES += vendor/lineage/prebuilt/common/bootanimation/bootanimation-1440.zip:$(TARGET_COPY_OUT_SYSTEM)/media/bootanimation.zip
else
     $(warning TARGET_BOOT_ANIMATION_RES is invalid or undefined, using generic bootanimation)
PRODUCT_COPY_FILES += \
    vendor/lineage/prebuilt/common/bootanimation/bootanimation-720.zip:$(TARGET_COPY_OUT_SYSTEM)/media/bootanimation.zip
endif
