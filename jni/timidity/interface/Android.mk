LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE := interface

LOCAL_C_INCLUDES := $(LOCAL_PATH)
LOCAL_C_INCLUDES += $(LOCAL_PATH)/..
LOCAL_C_INCLUDES += $(LOCAL_PATH)/../timidity
LOCAL_C_INCLUDES += $(LOCAL_PATH)/../utils
LOCAL_C_INCLUDES += $(LOCAL_PATH)/../libarc
LOCAL_C_INCLUDES += $(LOCAL_PATH)/../helper

LOCAL_CFLAGS = -DHAVE_CONFIG_H
LOCAL_CPP_EXTENSION := .cpp

LOCAL_SRC_FILES:= droid_c.c
LOCAL_SRC_FILES+= wrdt_dumb.c
LOCAL_SRC_FILES+= wrdt_tty.c

LOCAL_STATIC_LIBRARIES := utils arc

include $(BUILD_STATIC_LIBRARY)