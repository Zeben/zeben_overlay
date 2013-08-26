 
# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

inherit eutils flag-o-matic

DESCRIPTION="Use the camera of your Symbian S60 mobile /
as a webcam."
HOMEPAGE="http://smartcam.sourceforge.net"
SRC_URI="mirror://sourceforge/smartcam/${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE=""

DEPEND="sys-apps/dbus
	gnome-base/gconf
	=media-video/smartcam-driver-1.4.0
	x11-libs/gtk+"
RDEPEND="sys-apps/dbus
	=media-video/smartcam-driver-1.4.0"

src_unpack() {
	append-cppflags -fpermissive
	unpack ${A}
	cd "${S}"
	epatch "${FILESDIR}"/${PN}-no-bluetooth-segfault.patch
}

src_compile() {
	
	econf
	emake || die "emake failed"
}

src_install() {
	emake DESTDIR="${D}" install || die "install failed"
	dodoc ReadMe.txt || die
}
