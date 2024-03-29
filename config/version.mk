# Sakura
# PRODUCT_VERSION_MAJOR = 8
# PRODUCT_VERSION_MINOR = 0
SAKURA_BUILD := UNOFFICIAL
SAKURA_BUILD_STAGE := ALPHA
SAKURA_BUILD_ZIP_TYPE := VANILLA

# Increase Sakura Version with each major release.
LINEAGE_VERSION := ProjectSakura-$(SAKURA_BUILD_ZIP_TYPE)-$(shell date +%Y%m%d-%H%M)-$(LINEAGE_BUILD)-$(SAKURA_BUILD_STAGE)-$(SAKURA_BUILD)
LINEAGE_DISPLAY_VERSION := ProjectSakura-$(LINEAGE_BUILD)-$(SAKURA_BUILD_STAGE)-$(SAKURA_BUILD)
SAKURA_VERSION := $(LINEAGE_VERSION)