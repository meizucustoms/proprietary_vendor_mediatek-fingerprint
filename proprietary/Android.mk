# Copyright (C) 2013 The Android Open Source Project
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

LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE := fingerprint.msm8953
LOCAL_VENDOR_MODULE := true
LOCAL_MODULE_RELATIVE_PATH := hw

LOCAL_C_INCLUDES := \
    $(LOCAL_PATH)/goodix/public \
    $(LOCAL_PATH)/goodix/gf_hal/public \
    $(LOCAL_PATH)/goodix/goodixfingerprintd

LOCAL_SRC_FILES := \
    goodix/fingerprint.cpp \
    goodix/goodixfingerprintd/IGoodixFingerprintDaemon.cpp \
    goodix/goodixfingerprintd/IGoodixFingerprintDaemonCallback.cpp \
    goodix/goodixfingerprintd/GoodixFingerprintDaemonCallbackProxy.cpp

LOCAL_SHARED_LIBRARIES := \
    libgf_hal \
    liblog \
    libbinder \
    libhardware \
    libutils \
    libgoodixfingerprintd_binder

LOCAL_MULTILIB := 64
LOCAL_MODULE_TAGS := optional

include $(BUILD_SHARED_LIBRARY)

include $(call all-makefiles-under,$(LOCAL_PATH))
