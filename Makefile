# Copyright (C) 2018-2020 Lienol <lawlienol@gmail.com>
#
# This is free software, licensed under the Apache License, Version 2.0 .
#
# Improve by xiaozhuai <xiaozhuai7@gmail.com>
#
# Modified to support OpenWrt Procd by [OldCoding]

include $(TOPDIR)/rules.mk

LUCI_TITLE:=LuCI support for FileBrowser
PKG_NAME:=luci-app-filebrowser
LUCI_PKGARCH:=all
PKG_VERSION:=1.2
PKG_RELEASE:=1

define Package/$(PKG_NAME)/conffiles
/etc/config/filebrowser
endef

define Package/$(PKG_NAME)/install
    $(INSTALL_BIN) ./filebrowser.init $(1)/etc/init.d/filebrowser
endef

include $(TOPDIR)/feeds/luci/luci.mk

# call BuildPackage - OpenWrt buildroot signature
