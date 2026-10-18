define Device/vertell_vt-mt7621d
  $(Device/nand)
  DEVICE_VENDOR := Vertell
  DEVICE_MODEL := VT-STREET-M2
  IMAGE_SIZE := 121344k
  # Жестко прописываем геометрию Macronix MX30LF1G18AC для сборщика образов UBI
  PAGESIZE := 2048
  BLOCKSIZE := 128k
  IMAGE/sysupgrade.bin := sysupgrade-tar | append-metadata
  DEVICE_PACKAGES := -uboot-envtools -wpad-basic-mbedtls -hostapd-common \
	kmod-usb3 kmod-usb-acm kmod-usb-net-cdc-ncm \
	kmod-usb-net-qmi-wwan kmod-usb-serial-option uqmi
endef
TARGET_DEVICES += vertell_vt-mt7621d
