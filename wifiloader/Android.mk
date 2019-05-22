ifeq ($(BOARD_HAVE_SAMSUNG_WIFI),true)

LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

LOCAL_SRC_FILES := \
    wifiloader.c

LOCAL_SHARED_LIBRARIES := \
    libcutils liblog libutils

LOCAL_C_INCLUDES := \
	system/core/include

LOCAL_CFLAGS := -Wno-unused-variable

ifneq ($(WIFI_DRIVER_MODULE_NAME),)
LOCAL_CFLAGS += -DWIFI_DRIVER_MODULE_NAME=\"$(WIFI_DRIVER_MODULE_NAME)\"
endif

ifneq ($(WIFI_DRIVER_MODULE_PATH),)
LOCAL_CFLAGS += -DWIFI_DRIVER_MODULE_PATH=\"$(WIFI_DRIVER_MODULE_PATH)\"
endif

ifneq ($(WIFI_DRIVER_FW_PATH_PARAM),)
LOCAL_CFLAGS += -DWIFI_DRIVER_FW_PATH_PARAM=\"$(WIFI_DRIVER_FW_PATH_PARAM)\"
endif

LOCAL_MODULE := wifiloader
LOCAL_MODULE_TAGS := optional

include $(BUILD_EXECUTABLE)

endif
