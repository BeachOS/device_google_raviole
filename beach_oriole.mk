# Inherit some common stuff.
$(call inherit-product, vendor/beach/config/common.mk)

# Inherit device configuration
$(call inherit-product, device/google/gs101/beach_common.mk)
$(call inherit-product, device/google/raviole/device-beach.mk)
$(call inherit-product, device/google/raviole/aosp_oriole.mk)

## Device identifier. This must come after all inclusions
PRODUCT_NAME := beach_oriole
PRODUCT_MODEL := Pixel 6
PRODUCT_BRAND := google

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_PRODUCT=oriole \
    PRIVATE_BUILD_DESC="oriole-user 13 TQ1A.230105.002 9325679 release-keys"

BUILD_FINGERPRINT := google/oriole/oriole:13/TQ1A.230105.002/9325679:user/release-keys

PRODUCT_RESTRICT_VENDOR_FILES := false

$(call inherit-product, vendor/google/oriole/oriole-vendor.mk)
