# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4
USE_RUBY="ruby19 ruby18"

inherit ruby-fakegem

DESCRIPTION="Addressable is a replacement for the URI implementation that is
part of Ruby's standard library. It more closely conforms to the relevant RFCs
and adds support for IRIs and URI templates."
HOMEPAGE="http://addressable.rubyforge.org/"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

each_ruby_install() {
	doins -r data
}
