# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

inherit eutils git-r3

EGIT_REPO_URI="https://github.com/fcitx/fcitx-skk.git"

DESCRIPTION="fcitx-skk is an input method engine for Fcitx, which uses libskk as its backend"
HOMEPAGE="https://github.com/fcitx/fcitx-skk"

LICENSE="GPL-3"
SLOT="0"

IUSE="qt4"

DEPEND=""
RDEPEND="app-i18n/fcitx app-i18n/libskk app-i18n/skk-jisyo"

