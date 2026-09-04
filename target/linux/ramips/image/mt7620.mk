#
# MT7620A Profiles
#

include ./common.mk

define Device/phicomm_k2
  SOC := mt7620a
  DEVICE_VENDOR := Phicomm
  DEVICE_MODEL := K2
  DEVICE_PACKAGES := kmod-mt76x2 kmod-usb2 kmod-usb-ohci
  IMAGE_SIZE := 7872k
endef
TARGET_DEVICES += phicomm_k2

define Device/phicomm_k2-16m
  $(Device/phicomm_k2)
  DEVICE_MODEL := K2 (16MB Flash)
  DEVICE_DTS := mt7620a_phicomm_k2-16m
  IMAGE_SIZE := 15872k
endef
TARGET_DEVICES += phicomm_k2-16m
