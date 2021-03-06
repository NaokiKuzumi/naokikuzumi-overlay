# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

inherit eutils distutils

DESCRIPTION="Cross-platform tool for easily installing live operating systems on to USB flash drives."
HOMEPAGE="https://fedorahosted.org/livusb-creator"
SRC_URI="https://fedorahosted.org/releases/l/i/${PN}/${P}.tar.bz2"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
DEPEND="dev-python/dbus-python
	>=dev-python/pyparted-3
	dev-python/urlgrabber
	dev-python/PyQt4"

pkg_postinst() {
	python_version
	python_mod_optimize /usr/$(get_libdir)/python${PYVER}/site-packages/${PN}
}

pkg_postrm() {
	python_mod_cleanup
}
