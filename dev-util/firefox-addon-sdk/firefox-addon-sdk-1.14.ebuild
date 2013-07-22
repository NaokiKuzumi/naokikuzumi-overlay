# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="4-python"

DLNAME="jetpack-sdk-latest"

DESCRIPTION="Firefox add-on SDK"
HOMEPAGE="https://addons.mozilla.org/ja/developers/builder"
SRC_URI="https://ftp.mozilla.org/pub/mozilla.org/labs/jetpack/${DLNAME}.zip"


LICENSE="MPL-2.0"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""
S="${WORKDIR}/addon-sdk-${PV}"

PYTHON_DEPEND="<<2:2.5>> app-arch/unzip"

RDEPEND="${DEPEND}"

src_unpack(){
	unpack "${DLNAME}.zip"
}

src_install(){
	dodir /usr/share/firefox-addon-sdk/
	cp -R "${S}/" "${D}/" | die "Install failed!"
}

pkg_postinst(){
	exeinto /usr/bin/firefox-sdk-activate
	doexe "${FILESDIR}"/firefox-addon-sdk-activate
	doexe "${FILESDIR}"/firefox-addon-sdk-deactivate
}
