# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

inherit elisp

EAPI=4

DESCRIPTION="Major mode for editing JavaScript source text"
HOMEPAGE="http://www.karllandstrom.se/emacs_modes.php
	http://www.emacswiki.org/emacs/JavaScriptMode"
# taken from http://www.brgeight.se/downloads/emacs/javascript.el
SRC_URI=""

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~ppc ~x86 ~x86-fbsd"
IUSE=""

SITEFILE="50${PN}-gentoo.el"
