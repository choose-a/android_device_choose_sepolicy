#
# This policy configuration will be used by all qcom products
# that inherit from CarbonROM
#

ifeq ($(TARGET_COPY_OUT_VENDOR), vendor)
ifeq ($(BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE),)
TARGET_USES_PREBUILT_VENDOR_SEPOLICY ?= true
endif
endif

ifeq ($(TARGET_USES_PREBUILT_VENDOR_SEPOLICY), true)
BOARD_PLAT_PRIVATE_SEPOLICY_DIR += \
    device/choose/sepolicy/qcom/dynamic \
    device/choose/sepolicy/qcom/system
else
BOARD_SEPOLICY_DIRS += \
    device/choose/sepolicy/qcom/dynamic \
    device/choose/sepolicy/qcom/vendor
endif
