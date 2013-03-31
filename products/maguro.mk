# Inherit AOSP device configuration for maguro.
$(call inherit-product, device/samsung/maguro/full_maguro.mk)

# Inherit common product files.
$(call inherit-product, vendor/elite/config/common.mk)

# Setup device specific product configuration.
PRODUCT_NAME := elite_maguro
PRODUCT_BRAND := google
PRODUCT_DEVICE := maguro
PRODUCT_MODEL := Galaxy Nexus
PRODUCT_MANUFACTURER := samsung

PRODUCT_BUILD_PROP_OVERRIDES := PRODUCT_NAME=yakju BUILD_ID=JDQ39 BUILD_FINGERPRINT=google/yakju/maguro:4.2.2/JDQ39/573038:user/release-keys PRIVATE_BUILD_DESC="yakju-user 4.2.2 JDQ39 573038 release-keys" BUILD_NUMBER=235179

PRODUCT_PROPERTY_OVERRIDES += \
    ro.com.google.mcc_fallback=262

# Inherit common build.prop overrides
-include vendor/elite/config/common_versions.mk

# Copy maguro specific prebuilt files
PRODUCT_COPY_FILES +=  \
    vendor/elite/proprietary/tuna/media/bootanimation.zip:system/media/bootanimation.zip \
    vendor/elite/proprietary/tuna/app/Gallery2.apk:system/app/Gallery2.apk \
    vendor/elite/proprietary/maguro/vendor/etc/smc_normal_world_android_cfg.ini:system/vendor/etc/smc_normal_world_android_cfg.ini 

# Inherit media effect blobs
-include vendor/elite/config/common_media_effects.mk

# Inherit Face lock security blobs
-include vendor/elite/config/common_facelock.mk

# Inherit drm blobs
-include vendor/elite/config/common_drm_phone.mk

# Inherit speech recognition blobs
-include vendor/elite/config/common_speech_recognition.mk

# Include gsm apn list
-include vendor/elite/config/gsm.mk

