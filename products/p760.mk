# Inherit some common CM stuff.
$(call inherit-product, vendor/aokp/configs/common.mk)

# Inherit device configuration for LG Optimus L9 P760
$(call inherit-product, device/lge/p760/full_p760.mk)

# Release name
PRODUCT_RELEASE_NAME := Optimus L9 P760

# Inherit GSM common stuff
$(call inherit-product, vendor/aokp/configs/gsm.mk)

# This device has NFC
#$(call inherit-product, vendor/cm/config/nfc_enhanced.mk)

PRODUCT_NAME := aokp_p760
PRODUCT_BRAND := lg
PRODUCT_DEVICE := p760
PRODUCT_MODEL := LG-P760
PRODUCT_MANUFACTURER := LGE
PRODUCT_RELEASE_NAME := Optimus L9
PRODUCT_SFX := intl

# Release name and versioning
PRODUCT_RELEASE_NAME := p760
PRODUCT_VERSION_DEVICE_SPECIFIC := 
-include vendor/aokp/config/common_versions.mk

UTC_DATE := $(shell date +%s)

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=${UTC_DATE}\

# Enable Torch
PRODUCT_PACKAGES += Torch
PRODUCT_COPY_FILES += \
    vendor/aokp/prebuilt/bootanimation/bootanimation_540.zip:system/media/bootanimation.zip
