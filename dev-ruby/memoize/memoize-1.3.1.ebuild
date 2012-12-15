# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4
USE_RUBY="ruby19"

inherit ruby-fakegem

DESCRIPTION="rubygem memoize"
HOMEPAGE="http://rubygems.org/gems/memoize"

LICENSE="Artistic-2"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

ruby_add_rdepend "virtual/ruby-test-unit"
