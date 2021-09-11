
LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := goodixfingerprintd
LOCAL_VENDOR_MODULE := true

LOCAL_C_INCLUDES := \
    $(LOCAL_PATH)/../public \
    $(LOCAL_PATH)/../gf_hal/public

LOCAL_SRC_FILES := \
    GoodixFingerprintDaemonProxy.cpp \
    IGoodixFingerprintDaemon.cpp \
    IGoodixFingerprintDaemonCallback.cpp \
    goodixfingerprintd.cpp \
    GoodixFingerprintDaemonCallbackProxy.cpp

LOCAL_SHARED_LIBRARIES := \
    libbinder \
    liblog \
    libhardware \
    libutils \
    libgf_hal

LOCAL_MODULE_TAGS := optional

include $(BUILD_EXECUTABLE)

include $(CLEAR_VARS)

LOCAL_MODULE := libgoodixfingerprintd_binder
LOCAL_VENDOR_MODULE := true

LOCAL_C_INCLUDES := \
    $(LOCAL_PATH)/../public \
    $(LOCAL_PATH)/../gf_hal/public

LOCAL_SRC_FILES := \
    IGoodixFingerprintDaemon.cpp \
    IGoodixFingerprintDaemonCallback.cpp \
    GoodixFingerprintDaemonCallbackProxy.cpp

LOCAL_SHARED_LIBRARIES := \
    libbinder \
    liblog \
    libhardware \
    libutils \
    libgf_hal

LOCAL_MULTILIB := 64
LOCAL_MODULE_TAGS := optional

include $(BUILD_SHARED_LIBRARY)
