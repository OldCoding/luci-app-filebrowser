# Copyright (C) 2018-2020 Lienol <lawlienol@gmail.com>
#
# This is free software, licensed under the Apache License, Version 2.0 .
#
# Improve by xiaozhuai <xiaozhuai7@gmail.com>
#

include $(TOPDIR)/rules.mk

LUCI_TITLE:=LuCI support for FileBrowser
PKG_NAME:=luci-app-filebrowser
LUCI_PKGARCH:=all
PKG_VERSION:=1.1
PKG_RELEASE:=1

define Package/$(PKG_NAME)/conffiles
/etc/config/filebrowser
endef

include $(TOPDIR)/feeds/luci/luci.mk

# call BuildPackage - OpenWrt buildroot signature
