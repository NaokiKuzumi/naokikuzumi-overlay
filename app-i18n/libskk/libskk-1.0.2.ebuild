# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/app-i18n/libskk/libskk-1.0.1.ebuild,v 1.2 2014/07/06 13:15:18 mgorny Exp $

EAPI="5"

VALA_MIN_API_VERSION="0.14"

inherit virtualx vala

DESCRIPTION="GObject-based library to deal with Japanese kana-to-kanji conversion method"
HOMEPAGE="https://github.com/ueno/libskk"
SRC_URI="https://github.com/ueno/libskk/releases/download/${PV}/${P}.tar.gz"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="nls +introspection static-libs"

RDEPEND=">=dev-libs/glib-2.16
	dev-libs/libgee:0.8
	dev-libs/json-glib
	introspection? ( >=dev-libs/gobject-introspection-0.10.8 )
	nls? ( virtual/libintl )"
DEPEND="${RDEPEND}
	$(vala_depend)
	virtual/pkgconfig
	nls? (
		dev-util/intltool
		sys-devel/gettext
		)"
# doc? ( >=dev-util/valadoc-0.3.1 )

DOCS="ChangeLog NEWS README"

src_configure() {
	econf \
		$(use_enable nls) \
		$(use_enable static-libs static) \
		$(use_enable introspection)
}

src_test() {
	Xemake check || die "emake check failed."
}

src_install() {
	default
	rm -f "${ED}"/usr/lib*/lib*.la
}
