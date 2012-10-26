# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

DESCRIPTION="gxmms2 is a GTK2 based XMMS2 client, written in C. Its main window
is small and simple. It includes a playlist editor and a file details dialog."
HOMEPAGE="http://wejp.k.vu/projects/xmms2/gxmms2"
SRC_URI="http://wejp.k.vu/files/${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}
	media-sound/xmms2
	>=x11-libs/gtk+-2.6.0"

src_compile() {
	emake gxmms2 
}

src_install() {
	emake PREFIX="${D}" install_gxmms2
}
