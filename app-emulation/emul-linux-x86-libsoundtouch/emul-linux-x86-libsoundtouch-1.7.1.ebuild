 
# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

inherit emul-linux-x86

DESCRIPTION="Backwards compat for emul-linux-x86-libsoundtouch using multilib"
HOMEPAGE="http://dev.gentoo.org/~vincent"
SRC_URI="http://dev.gentoo.org/~vincent/distfiles/${P}.tar.xz"

LICENSE="LGPL-2.1"
SLOT="0"
KEYWORDS="-* ~amd64"
IUSE="development"

RDEPEND="!media-libs/libsoundtouch[abi_x86_32]"

src_prepare() {
	ALLOWED="${S}/usr/lib32/|${S}/usr/bin"
	emul-linux-x86_src_prepare
}