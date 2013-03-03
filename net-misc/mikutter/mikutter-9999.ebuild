# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=3

USE_RUBY="ruby19"

inherit ruby-ng

if [ "${PV}" = "9999" ]; then
	inherit git-2
	EGIT_REPO_URI="git://toshia.dip.jp/mikutter.git"
	EGIT_BRANCH="master"
	S="${EGIT_STORE_DIR}"
	echo $S
else
	MY_P="${PN}.${PV}"
	SRC_URI="http://mikutter.hachune.net/bin/${MY_P}.tar.gz"
	KEYWORDS="~amd64 ~x86"
	S="${WORKDIR}/${PN}"
fi

DESCRIPTION="mikutter is simple, powerful and moeful twitter client"
HOMEPAGE="http://mikutter.hachune.net/"

LICENSE="GPL-3"
SLOT="0"
IUSE="+libnotify sound"

DEPEND=""
RDEPEND="libnotify? ( x11-libs/libnotify )
	sound? ( media-sound/alsa-utils )"

ruby_add_rdepend "dev-ruby/ruby-gtk2
	dev-ruby/rcairo
	dev-ruby/httpclient
	virtual/ruby-ssl
	dev-ruby/bsearch
	dev-ruby/oauth
	dev-ruby/addressable
	dev-ruby/memoize
	dev-ruby/typed-array"


each_ruby_install() {
	exeinto /usr/share/mikutter
	doexe mikutter.rb
	insinto /usr/share/mikutter
	doins -r core plugin
	exeinto /usr/bin
	doexe "${FILESDIR}"/mikutter
	doicon core/skin/data/icon.png
	make_desktop_entry "mikutter" "mikutter" "icon.png"
	dodoc README
}
