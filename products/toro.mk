# Inherit AOSP device configuration for toro.
$(call inherit-product, device/samsung/toro/full_toro.mk)

# Inherit common product files.
$(call inherit-product, vendor/elite/products/common.mk)

# Setup device specific product configuration.
PRODUCT_NAME := elite_toro
PRODUCT_BRAND := google
PRODUCT_DEVICE := toro
PRODUCT_MODEL := Galaxy Nexus
PRODUCT_MANUFACTURER := samsung

PRODUCT_BUILD_PROP_OVERRIDES := PRODUCT_NAME=mysid BUILD_ID=IMM30B BUILD_FINGERPRINT=google/mysid/toro:4.0.4/IMM30B/257829:user/release-keys PRIVATE_BUILD_DESC="mysid-user 4.0.4 IMM30B 257829 release-keys" BUILD_NUMBER=257829 BUILD_UTC_DATE=1328057983

# Inherit common build.prop overrides
-include vendor/elite/products/common_versions.mk

# Copy toro specific prebuilt files
PRODUCT_COPY_FILES +=  \
    vendor/elite/proprietary/tuna/lib/libfrsdk.so:system/lib/libfrsdk.so \
    vendor/elite/proprietary/tuna/lib/libgcomm_jni.so:system/lib/libgcomm_jni.so \
    vendor/elite/proprietary/tuna/media/bootanimation.zip:system/media/bootanimation.zip \
    vendor/elite/proprietary/tuna/media/LMprec_508.emd:system/media/LMprec_508.emd \
    vendor/elite/proprietary/tuna/media/PFFprec_600.emd:system/media/PFFprec_600.emd \
    vendor/elite/proprietary/tuna/media/audio/notifications/Nexus.mp3:system/media/audio/notifications/Nexus.mp3 \
    vendor/elite/proprietary/common/etc/permissions/com.google.android.media.effects.xml:system/etc/permissions/com.google.android.media.effects.xml \
    vendor/elite/proprietary/common/etc/permissions/com.google.android.nfc_extras.xml:system/etc/permissions/com.google.android.nfc_extras.xml \
    vendor/elite/proprietary/common/framework/com.google.android.media.effects.jar:system/framework/com.google.android.media.effects.jar \
    vendor/elite/proprietary/common/framework/com.android.nfc_extras.jar:system/framework/com.android.nfc_extras.jar \
    vendor/elite/proprietary/common/lib/libmicrobes_jni.so:system/lib/libmicrobes_jni.so

# Inherit Face lock security blobs
-include vendor/elite/products/common_facelock.mk

# Inherit drm blobs
-include vendor/elite/products/common_drm.mk

