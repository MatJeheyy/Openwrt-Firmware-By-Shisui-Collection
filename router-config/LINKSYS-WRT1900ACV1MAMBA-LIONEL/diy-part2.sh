#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#

# Modify default IP
#sed -i 's/192.168.1.1/192.168.50.5/g' package/base-files/files/bin/config_generate

# 移除 SNAPSHOT 标签
sed -i 's,-SNAPSHOT,,g' include/version.mk
sed -i 's,-SNAPSHOT,,g' package/base-files/image-config.in


# passwall
git clone https://github.com/xiaorouji/openwrt-passwall.git package/new/luci-app-passwall

# ssr+
git clone https://github.com/fw876/helloworld.git package/new/luci-app-ssr

# openclash
git clone https://github.com/vernesong/OpenClash.git package/new/luci-app-openclash

# vssr
git clone https://github.com/jerrykuku/luci-app-vssr.git package/new/luci-app-vssr
# vssr maxmind
git clone https://github.com/jerrykuku/lua-maxminddb.git package/new/lua-maxminddb

# Bypass
git clone https://github.com/kiddin9/openwrt-bypass.git package/new/luci-app-bypass

# argon
git clone https://github.com/jerrykuku/luci-theme-argon.git package/new/luci-theme-argon

# edge
git clone https://github.com/kiddin9/luci-theme-edge.git package/new/luci-theme-edge

# Autocore Stb
git clone https://github.com/MatJehey/autocore-arm-x86.git package/new/luci-app-autocore



