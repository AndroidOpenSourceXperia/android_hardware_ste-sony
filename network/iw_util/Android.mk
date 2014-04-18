# iw
#
include $(CLEAR_VARS)
SRC := network/iw_util
NO_PKG_CONFIG=y
LOCAL_SRC_FILES := \
    ${SRC}/bitrate.c \
    ${SRC}/coalesce.c \
    ${SRC}/connect.c \
    ${SRC}/cqm.c \
    ${SRC}/event.c \
    ${SRC}/genl.c \
    ${SRC}/hwsim.c \
    ${SRC}/ibss.c \
    ${SRC}/info.c \
    ${SRC}/interface.c \
    ${SRC}/iw.c \
    ${SRC}/link.c \
    ${SRC}/mesh.c \
    ${SRC}/mpath.c \
    ${SRC}/offch.c \
    ${SRC}/p2p.c \
    ${SRC}/phy.c \
    ${SRC}/ps.c \
    ${SRC}/reason.c \
    ${SRC}/reg.c \
    ${SRC}/roc.c \
    ${SRC}/scan.c \
    ${SRC}/sections.c \
    ${SRC}/station.c \
    ${SRC}/status.c \
    ${SRC}/survey.c \
    ${SRC}/util.c \
    ${SRC}/wowlan.c \
    ${SRC}/version.c \
    ${SRC}/android-nl.c

LOCAL_C_INCLUDES := \
	$(LOCAL_PATH)/wifi/iw_util \
	external/libnl-headers

LOCAL_CFLAGS := -O2 -g -Wall -Wundef -Wstrict-prototypes -Wno-trigraphs
LOCAL_CFLAGS += -fno-strict-aliasing -fno-common -Werror-implicit-function-declaration -DCONFIG_LIBNL20
LOCAL_LDFLAGS := -Wl,--no-gc-sections
LOCAL_MODULE_PATH := $(TARGET_OUT_EXECUTABLES)
LOCAL_MODULE_TAGS := optional
LOCAL_STATIC_LIBRARIES := libnl_2 libc libstdc++ libm
LOCAL_FORCE_STATIC_EXECUTABLE := true
LOCAL_MODULE:=iw
include $(BUILD_EXECUTABLE)
