# Generic product
PRODUCT_NAME := elite
PRODUCT_BRAND := elite
PRODUCT_DEVICE := generic

# Common overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/elite/overlay/common

PRODUCT_PROPERTY_OVERRIDES += \
    ro.url.legal=http://www.google.com/intl/%s/mobile/android/basic/phone-legal.html \
    ro.url.legal.android_privacy=http://www.google.com/intl/%s/mobile/android/basic/privacy.html \
    ro.com.google.clientidbase=android-google \
    ro.com.android.wifi-watchlist=GoogleGuest \
    ro.error.receiver.system.apps=com.google.android.feedback \
    ro.setupwizard.enterprise_mode=1

# Common Google Applications and libs
PRODUCT_COPY_FILES += \
    vendor/elite/proprietary/common/app/Calendar.apk:system/app/Calendar.apk \
    vendor/elite/proprietary/common/app/Chrome.apk:system/app/Chrome.apk \
    vendor/elite/proprietary/common/app/Gallery2.apk:system/app/Gallery2.apk \
    vendor/elite/proprietary/common/app/GenieWidget.apk:system/app/GenieWidget.apk \
    vendor/elite/proprietary/common/app/Gmail.apk:system/app/Gmail.apk \
    vendor/elite/proprietary/common/app/GoogleBackupTransport.apk:system/app/GoogleBackupTransport.apk \
    vendor/elite/proprietary/common/app/GoogleContactsSyncAdapter.apk:system/app/GoogleContactsSyncAdapter.apk \
    vendor/elite/proprietary/common/app/GoogleEars.apk:system/app/GoogleEars.apk \
    vendor/elite/proprietary/common/app/GoogleFeedback.apk:system/app/GoogleFeedback.apk \
    vendor/elite/proprietary/common/app/GoogleLoginService.apk:system/app/GoogleLoginService.apk \
    vendor/elite/proprietary/common/app/GooglePartnerSetup.apk:system/app/GooglePartnerSetup.apk \
    vendor/elite/proprietary/common/app/GoogleServicesFramework.apk:system/app/GoogleServicesFramework.apk \
    vendor/elite/proprietary/common/app/GoogleTTS.apk:system/app/GoogleTTS.apk \
    vendor/elite/proprietary/common/app/GmsCore.apk:system/app/GmsCore.apk \
    vendor/elite/proprietary/common/app/LatinIMEDictionaryPack.apk:system/app/LatinIMEDictionaryPack.apk \
    vendor/elite/proprietary/common/app/Maps.apk:system/app/Maps.apk \
    vendor/elite/proprietary/common/app/MediaUploader.apk:system/app/MediaUploader.apk \
    vendor/elite/proprietary/common/app/Music.apk:system/app/Music.apk \
    vendor/elite/proprietary/common/app/NetworkLocation.apk:system/app/NetworkLocation.apk \
    vendor/elite/proprietary/common/app/OneTimeInitializer.apk:system/app/OneTimeInitializer.apk \
    vendor/elite/proprietary/common/app/Phonesky.apk:system/app/Phonesky.apk \
    vendor/elite/proprietary/common/app/SetupWizard.apk:system/app/SetupWizard.apk \
    vendor/elite/proprietary/common/app/Street.apk:system/app/Street.apk \
    vendor/elite/proprietary/common/app/Talk.apk:system/app/Talk.apk \
    vendor/elite/proprietary/common/app/Velvet.apk:system/app/Velvet.apk \
    vendor/elite/proprietary/common/app/YouTube.apk:system/app/YouTube.apk \
    vendor/elite/proprietary/common/etc/permissions/com.google.android.maps.xml:system/etc/permissions/com.google.android.maps.xml \
    vendor/elite/proprietary/common/etc/permissions/features.xml:system/etc/permissions/features.xml \
    vendor/elite/proprietary/common/etc/preferred-apps/google.xml:system/etc/preferred-apps/google.xml \
    vendor/elite/proprietary/common/etc/updatecmds/google_generic_update.txt:system/etc/updatecmds/google_generic_update.txt \
    vendor/elite/proprietary/common/framework/com.google.android.maps.jar:system/framework/com.google.android.maps.jar \
    vendor/elite/proprietary/common/lib/libchromeview.so:system/lib/libchromeview.so \
    vendor/elite/proprietary/common/lib/libgoogle_recognizer_jni.so:system/lib/libgoogle_recognizer_jni.so \
    vendor/elite/proprietary/common/lib/libjni_eglfence.so:system/lib/libjni_eglfence.so \
    vendor/elite/proprietary/common/lib/libjni_mosaic.so:system/lib/libjni_mosaic.so \
    vendor/elite/proprietary/common/lib/libpatts_engine_jni_api.so:system/lib/libpatts_engine_jni_api.so \
    vendor/elite/proprietary/common/lib/libspeexwrapper.so:system/lib/libspeexwrapper.so \
    vendor/elite/proprietary/common/lib/libttscompat.so:system/lib/libttscompat.so \
    vendor/elite/proprietary/common/lib/libttspico.so:system/lib/libttspico.so \
    vendor/elite/proprietary/common/lib/libvideochat_jni.so:system/lib/libvideochat_jni.so \
    vendor/elite/proprietary/common/lib/libvideochat_stabilize.so:system/lib/libvideochat_stabilize.so \
    vendor/elite/proprietary/common/lib/libvoicesearch.so:system/lib/libvoicesearch.so \
    vendor/elite/proprietary/common/lib/libvorbisencoder.so:system/lib/libvorbisencoder.so 

# Common Applications
PRODUCT_COPY_FILES += \
    vendor/elite/proprietary/common/app/Superuser.apk:system/app/Superuser.apk

# Common Binary files
PRODUCT_COPY_FILES += \
    vendor/elite/proprietary/common/bin/flash_image:system/bin/flash_image \
    vendor/elite/proprietary/common/xbin/bash:system/xbin/bash \
    vendor/elite/proprietary/common/xbin/zipalign:system/xbin/zipalign \
    vendor/elite/proprietary/common/xbin/su:system/xbin/su 
    
# Common files for init.d support and etc files
PRODUCT_COPY_FILES += \
    vendor/elite/proprietary/common/etc/init.d/02sysctl:system/etc/init.d/02sysctl \
    vendor/elite/proprietary/common/etc/gps.conf:system/etc/gps.conf \
    vendor/elite/proprietary/common/etc/resolv.conf:system/etc/resolv.conf \
    vendor/elite/proprietary/common/etc/sysctl.conf:system/etc/sysctl.conf 

# Common scripts
PRODUCT_COPY_FILES += \
    vendor/elite/proprietary/common/xbin/cpuinfo:system/xbin/cpuinfo \
    vendor/elite/proprietary/common/xbin/rb:system/xbin/rb \
    vendor/elite/proprietary/common/xbin/rr:system/xbin/rr \
    vendor/elite/proprietary/common/bin/shutdown:system/bin/shutdown \
    vendor/elite/proprietary/common/xbin/sysro:system/xbin/sysro \
    vendor/elite/proprietary/common/xbin/sysrw:system/xbin/sysrw \
    vendor/elite/proprietary/common/xbin/zipalign_all:system/xbin/zipalign_all \
    vendor/elite/proprietary/common/xbin/zipalign_app:system/xbin/zipalign_app 

# Enable SIP+VoIP on all targets
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml

