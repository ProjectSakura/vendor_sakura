# Sakura
PRODUCT_VERSION_MAJOR = 9
PRODUCT_VERSION_MINOR = 4

# Increase Sakura Version with each major release.
LINEAGE_DISPLAY_VERSION := $(PRODUCT_VERSION_MAJOR).$(PRODUCT_VERSION_MINOR)
LINEAGE_VERSION := ProjectSakura-$(LINEAGE_DISPLAY_VERSION)-$(shell date +%Y%m%d-%H%M)-$(SAKURA_BUILD_ZIP_TYPE)-$(LINEAGE_BUILD)-$(SAKURA_BUILD)
SAKURA_VERSION := $(LINEAGE_VERSION)

# Signing
ifeq ($(SAKURA_OFFICIAL),true)
  $(if $(wildcard vendor/sakura-priv/keys.mk),,$(error Official builds require signing keys at vendor/sakura-priv/keys.mk))
  include vendor/sakura-priv/keys.mk
else
  -include vendor/sakura-priv/keys.mk
endif
