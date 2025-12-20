# Sakura
 PRODUCT_VERSION_MAJOR = 16
 PRODUCT_VERSION_MINOR = 0
 SAKURA_BUMP_VERSION = 1

# Increase Sakura Version with each major release.
LINEAGE_DISPLAY_VERSION := $(PRODUCT_VERSION_MAJOR).$(PRODUCT_VERSION_MINOR).$(SAKURA_BUMP_VERSION)
LINEAGE_VERSION := ProjectSakura-$(LINEAGE_DISPLAY_VERSION)-$(shell date +%Y%m%d-%H%M)-$(SAKURA_BUILD_ZIP_TYPE)-$(LINEAGE_BUILD)-$(SAKURA_BUILD)
SAKURA_VERSION := $(LINEAGE_VERSION)

# SAKURA Versioning Props
PRODUCT_SYSTEM_PROPERTIES += \
    ro.lineage.display.version=$(LINEAGE_DISPLAY_VERSION) \
    ro.sakura.ziptype=$(SAKURA_BUILD_ZIP_TYPE) \
    ro.sakura.display.version=$(SAKURA_BUILD) \
    ro.sakura.maintainer=$(SAKURA_MAINTAINER) \
    ro.modversion=$(SAKURA_VERSION)
