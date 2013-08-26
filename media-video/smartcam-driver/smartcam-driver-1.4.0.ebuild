 
# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=2

MY_P="smartcam-${PV}"

inherit eutils linux-mod

DESCRIPTION="Smartcam kernel module driver."
HOMEPAGE="http://smartcam.sourceforge.net"
SRC_URI="mirror://sourceforge/smartcam/${MY_P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

S=${WORKDIR}/${MY_P}/driver_src

MODULE_NAMES="smartcam(misc)"
BUILD_PARAMS='-C "${KV_OUT_DIR}" M="${PWD}"'
BUILD_TARGETS="modules"

src_prepare() {
	epatch "${FILESDIR}"/${PN}.patch
	epatch "${FILESDIR}"/${PN}-linux-3.x.patch
} 
