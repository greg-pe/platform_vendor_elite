# Inherit AOSP device configuration for toro.
$(call inherit-product, device/samsung/toro/full_toro.mk)

# Inherit common product files.
$(call inherit-product, vendor/elite/config/common.mk)

# Setup device specific product configuration.
PRODUCT_NAME := elite_toro
PRODUCT_BRAND := google
PRODUCT_DEVICE := toro
PRODUCT_MODEL := Galaxy Nexus
PRODUCT_MANUFACTURER := samsung

PRODUCT_BUILD_PROP_OVERRIDES := PRODUCT_NAME=mysid BUILD_FINGERPRINT=google/mysid/toro:4.2.2/JDQ39/573038:user/release-keys PRIVATE_BUILD_DESC="mysid-user 4.2.2 JDQ39 573038 release-keys" BUILD_NUMBER=573038

# Inherit common build.prop overrides
-include vendor/elite/config/common_versions.mk

# Copy toro specific prebuilt files
PRODUCT_COPY_FILES +=  \
    vendor/elite/proprietary/tuna/media/bootanimation.zip:system/media/bootanimation.zip \
    vendor/elite/proprietary/tuna/app/Gallery2.apk:system/app/Gallery2.apk \
    vendor/elite/proprietary/tuna/media/audio/notifications/Nexus.mp3:system/media/audio/notifications/Nexus.mp3 \
    vendor/elite/proprietary/common/app/Wallet.apk:system/app/Wallet.apk

# Copy vzw login 
PRODUCT_COPY_FILES +=  \
    vendor/elite/proprietary/toro/app/VerizonLogin.apk:system/app/VerizonLogin.apk \
    vendor/elite/proprietary/toro/lib/libmotricity.so:system/lib/libmotricity.so \
    vendor/elite/proprietary/toro/app/VerizonLogin.apk:system/app/VerizonSSO.apk \

# Inherit media effect blobs
-include vendor/elite/config/common_media_effects.mk

# Inherit Face lock security blobs
-include vendor/elite/config/common_facelock.mk

# Inherit drm blobs
-include vendor/elite/config/common_drm_phone.mk

# Inherit speech recognition blobs
-include vendor/elite/config/common_speech_recognition.mk
