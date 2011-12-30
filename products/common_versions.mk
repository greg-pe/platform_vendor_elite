# Version information used on all builds
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_DISPLAY_ID=IML74K BUILD_VERSION_TAGS=release-keys USER=android-build

PRODUCT_VERSION_MAJOR = 8
PRODUCT_VERSION_MINOR = NIGHTLY

ro.romversion=ProjectElite-$(PRODUCT_VERSION_MAJOR)-$(shell date +%m%d%Y).$(PRODUCT_VERSION_MINOR)
