# Copyright 2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit git-r3

DESCRIPTION="Bleeding edge bspwm"
HOMEPAGE="https://github.com/baskerville/bspwm"
EGIT_REPO_URI="https://github.com/baskerville/bspwm.git"

LICENSE="BSD-2"
SLOT="0"
KEYWORDS="amd64"

DEPEND="
	x11-libs/libxcb
	x11-libs/xcb-util
	x11-libs/xcb-util-wm
"
RDEPEND="${DEPEND}"
BDEPEND=""

src_compile() {
	emake
}

src_install() {
	emake "DESTDIR=${D}" "PREFIX=${EPREFIX}/usr"  install
}
