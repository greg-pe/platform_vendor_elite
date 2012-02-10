# Inherit AOSP device configuration for crespo4g.
$(call inherit-product, device/samsung/crespo4g/full_crespo4g.mk)

# Inherit common product files.
$(call inherit-product, vendor/elite/products/common.mk)

# Setup device specific product configuration.
PRODUCT_NAME := elite_crespo4g
PRODUCT_BRAND := google
PRODUCT_DEVICE := crespo4g
PRODUCT_MODEL := Nexus S 4G
PRODUCT_MANUFACTURER := samsung

PRODUCT_BUILD_PROP_OVERRIDES := PRODUCT_NAME=sojus BUILD_ID=IMM26 BUILD_FINGERPRINT=google/sojus/crespo4g:4.0.4/IMM26/255454:user/release-keys PRIVATE_BUILD_DESC="sojus-user 4.0.4 IMM26 255454 release-keys" BUILD_NUMBER=255454

# Inherit common build.prop overrides
-include vendor/elite/products/common_versions.mk

# Copy crespo4g specific prebuilt files
PRODUCT_COPY_FILES +=  \
    vendor/elite/proprietary/crespo/media/bootanimation.zip:system/media/bootanimation.zip \
    vendor/elite/proprietary/tuna/media/audio/notifications/Nexus.mp3:system/media/audio/notifications/Nexus.mp3 \
    vendor/elite/proprietary/common/app/Microbes.apk:system/app/Microbes.apk \
    vendor/elite/proprietary/common/app/Wallet.apk:system/app/Wallet.apk \
    vendor/elite/proprietary/common/etc/permissions/com.google.android.media.effects.xml:system/etc/permissions/com.google.android.media.effects.xml \
    vendor/elite/proprietary/common/framework/com.google.android.media.effects.jar:system/framework/com.google.android.media.effects.jar \
    vendor/elite/proprietary/common/lib/libfilterpack_facedetect.so:system/lib/libfilterpack_facedetect.so \
    vendor/elite/proprietary/common/lib/libmicrobes_jni.so:system/lib/libmicrobes_jni.so \
    vendor/elite/proprietary/common/media/LMprec_508.emd:system/media/LMprec_508.emd \
    vendor/elite/proprietary/common/media/PFFprec_600.emd:system/media/PFFprec_600.emd

# Inherit Face lock security blobs
-include vendor/elite/products/common_facelock.mk

# Inherit drm blobs
-include vendor/elite/products/common_drm.mk

