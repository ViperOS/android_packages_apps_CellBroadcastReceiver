# Copyright 2011 The Android Open Source Project

LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)

LOCAL_MODULE_TAGS := optional

LOCAL_SRC_FILES := $(call all-java-files-under, src)
LOCAL_JAVA_LIBRARIES := telephony-common

LOCAL_RESOURCE_DIR := \
    $(LOCAL_PATH)/res

# Viper Color Engine
$(warning *** Including Viper Color Engine ***)
LOCAL_RESOURCE_DIR += vendor/viper/colorengine/$(LOCAL_PATH)/res

LOCAL_AAPT_FLAGS := \
    --auto-add-overlay

LOCAL_PACKAGE_NAME := CellBroadcastReceiver
LOCAL_CERTIFICATE := platform
LOCAL_PRIVILEGED_MODULE := true

include $(BUILD_PACKAGE)

# This finds and builds the test apk as well, so a single make does both.
include $(call all-makefiles-under,$(LOCAL_PATH))
