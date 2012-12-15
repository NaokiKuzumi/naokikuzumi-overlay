# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4
USE_RUBY="ruby19"

inherit ruby-fakegem

DESCRIPTION="rubygem typed-array"
HOMEPAGE="http://rubygems.org/gems/typed-array"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

ruby_add_rdepend "dev-ruby/bundler dev-ruby/jeweler dev-ruby/rcov dev-ruby/rspec"
#ruby_add bdepend

