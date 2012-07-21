# Version information used on all builds
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_VERSION_TAGS=release-keys USER=android-build BUILD_UTC_DATE=$(shell date +"%s")


# Additional properties
PRODUCT_VERSION_MAJOR = 9
PRODUCT_VERSION_MINOR = 0

PRODUCT_PROPERTY_OVERRIDES += \
ro.modversion=ProjectElite-$(PRODUCT_VERSION_MAJOR).$(PRODUCT_VERSION_MINOR)-NIGHTLY-$(shell date +"%m-%d-%y")
    

