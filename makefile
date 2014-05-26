#
# Makefile for SDNA u8500
#

# The original zip file, MUST be specified by each product
local-zip-file     := stockrom.zip

# The output zip file of MIUI rom, the default is porting_miui.zip if not specified
local-out-zip-file := MIUI_v5_Bambook_u8500.zip

# All apps from original ZIP, but has smali files chanded
local-modified-apps := 

# All apks from MIUI execept MIUISystemUI and framework-miui-res.apk
local-miui-apps     := 

# All apps need to be removed from original ZIP file
local-remove-apps   :=

# DPI
local-density := HDPI

local-miui-removed-apps := MiuiGallery

local-miui-modified-apps := 

include phoneapps.mk

# To include the local targets before and after zip the final ZIP file, 
# and the local-targets should:
# (1) be defined after including porting.mk if using any global variable(see porting.mk)
# (2) the name should be leaded with local- to prevent any conflict with global targets
local-pre-zip := local-zip-misc
local-after-zip:= local-test

# The local targets after the zip file is generated, could include 'zip2sd' to 
# deliver the zip file to phone, or to customize other actions

include $(PORT_BUILD)/porting.mk

# To define any local-target
local-zip-misc:
	# fix QHDPI
	cp other/theme/default/* $(ZIP_DIR)/system/media/theme/default
	cp other/build.prop $(ZIP_DIR)/system/build.prop
