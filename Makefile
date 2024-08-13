#
# Copyright (C) 2008-2014 The LuCI Team <luci@lists.subsignal.org>
#
# This is free software, licensed under the Apache License, Version 2.0 .
#

include $(TOPDIR)/rules.mk

LUCI_TITLE:=LuCI for FRPC
LUCI_DEPENDS:=+wget +frpc
LUCI_PKGARCH:=all

PKG_NAME:=luci-app-multi-frpc
PKG_VERSION:=1.0.1
PKG_RELEASE:=2

define Package/luci-app-multi-frpc/install
    $(INSTALL_DIR) $(1)/usr/lib/lua/luci/i18n
    $(INSTALL_DATA) $(PKG_BUILD_DIR)/po/zh-cn/frp.po $(1)/usr/lib/lua/luci/i18n/
endef

include $(TOPDIR)/feeds/luci/luci.mk

# call BuildPackage - OpenWrt buildroot signature
