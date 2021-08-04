# Inherit common mobile Lineage stuff
$(call inherit-product, vendor/lineage/config/common.mk)
$(call inherit-product-if-exists, vendor/addons/themes/accents/accents.mk)

# Default notification/alarm sounds
PRODUCT_PRODUCT_PROPERTIES += \
    ro.config.notification_sound=Pikachu.ogg \
    ro.config.alarm_alert=Hassium.ogg

# AOSP packages
PRODUCT_PACKAGES += \
    Exchange2 \
    ExactCalculator

# Lineage packages
PRODUCT_PACKAGES += \
    Backgrounds \
    Custom-Fonts \
    Eleven \
    Etar \
    Firewall \
    Jelly \
    OmniJaws \
    OmniStyle \
    Profiles \
    Seedvault \
    SakuraWidget \
    StitchImage \
    StitchImageService

ifneq ($(TARGET_EXCLUDES_AUDIOFX),true)
PRODUCT_PACKAGES += \
    AudioFX
endif

ifeq ($(PRODUCT_TYPE), go)
PRODUCT_PACKAGES += \
    TrebuchetQuickStepGo

PRODUCT_DEXPREOPT_SPEED_APPS += \
    TrebuchetQuickStepGo
else
PRODUCT_PACKAGES += \
    TrebuchetQuickStep

PRODUCT_DEXPREOPT_SPEED_APPS += \
    TrebuchetQuickStep
endif

# Charger
PRODUCT_PACKAGES += \
    charger_res_images

ifneq ($(WITH_LINEAGE_CHARGER),false)
PRODUCT_PACKAGES += \
    lineage_charger_animation
endif

# Customizations
PRODUCT_PACKAGES += \
    IconShapeSquareOverlay \
    NavigationBarMode2ButtonOverlay

# Media
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    media.recorder.show_manufacturer_and_model=true

# SystemUI plugins
PRODUCT_PACKAGES += \
    QuickAccessWallet
