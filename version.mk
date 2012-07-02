TA_RELEASE := 12

PRODUCT_PROPERTY_OVERRIDES += \
	ro.goo.developerid=TeamAcid \
	ro.goo.rom=CM7-galaxys4gmtd \
	ro.goo.version=$(TA_RELEASE) \
	ro.goo.board=$(PRODUCT_DEVICE)
