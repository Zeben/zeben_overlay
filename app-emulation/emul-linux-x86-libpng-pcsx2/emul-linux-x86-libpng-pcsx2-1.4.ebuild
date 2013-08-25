# Copyright 2013 Zeben
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

inherit emul-linux-x86

DESCRIPTION="Backwards compat for emul-linux-x86-libpng for old wxGTK using multilib"
HOMEPAGE="http://github.com/Zeben/zeben_overlay"
SRC_URI="https://dl.dropboxusercontent.com/u/36143882/${P}.tar.xz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="-* ~amd64"

src_prepare() {
	ALLOWED="${S}/usr/lib32"
	emul-linux-x86_src_prepare
}