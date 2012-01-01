# Version information used on all builds
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_DISPLAY_ID=IML74K BUILD_VERSION_TAGS=release-keys USER=android-build

# Additional properties
PRODUCT_VERSION_MAJOR = 8
PRODUCT_VERSION_MINOR = 0

PRODUCT_PROPERTY_OVERRIDES += \
ro.romversion=ProjectElite-$(PRODUCT_VERSION_MAJOR).$(PRODUCT_VERSION_MINOR)-NIGHTLY-$(shell date +"%m-%d-%y")
